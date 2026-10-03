"""Focused stdlib tests: routing and false-positive/rollback gates, no original writes."""
from pathlib import Path
import csv
import subprocess
import tempfile
import unittest
from unittest.mock import ANY, patch

from . import cli, common, metrics, ops
from .apply_status_splits import ApplyStatusSplitsError, apply_status_splits
from .rename_status import RenameSymbolsError, build_status_renames, rename_status_configs
from .reference_status_splits import SplitProposal, StatusSplitResult, propose_status_splits, write_review_copy


def _asm_item(section, address, size, kind, name, body):
    return [f"# .{section}:0x00000000 | 0x{address:08X} | size: 0x{size:X}",
            f".{kind} {name}, global", *body, f".end{kind} {name}"]


def _status_asm_records(class_name, tag, name_addr, rtti_addr, vtable_addr, text_addr, bss_addr):
    name, rtti, vtable = f"name_{tag}", f"rtti_{tag}", f"vtable_{tag}"
    method, dtor = f"method_{tag}", f"dtor_{tag}"
    ctor, sinit = f"ctor_{tag}", f"sinit_{tag}"
    chain, instance = f"chain_{tag}", f"instance_{tag}"
    data = [
        _asm_item("data", name_addr, len(class_name) + 1, "obj", name, [f'.string "{class_name}"']),
        _asm_item("data", rtti_addr, 0x8, "obj", rtti, [f".4byte {name}", ".4byte 0x00000000"]),
        _asm_item("data", vtable_addr, 0x40, "obj", vtable,
                  [f".4byte {rtti}", f".4byte {dtor}", f".4byte {method}"]),
    ]
    text = [
        _asm_item("text", text_addr, 0x4, "fn", method, ["blr"]),
        _asm_item("text", text_addr + 0x4, 0x10, "fn", ctor, [f".4byte {vtable}", "blr"]),
        _asm_item("text", text_addr + 0x14, 0x20, "fn", sinit,
                  [f".4byte {chain}", f".4byte {instance}", f"bl {ctor}", "bl __register_global_object"]),
    ]
    bss = [
        _asm_item("bss", bss_addr, 0xC, "obj", chain, [".4byte 0x0"]),
        _asm_item("bss", bss_addr + 0xC, 0x4, "obj", instance, [".4byte 0x0"]),
    ]
    return data, text, bss, sinit


def _write_status_asm(root, module, data, text, bss, sinits, ctor_start=0x80002000):
    asm_dir = Path(root) / module / "asm"
    asm_dir.mkdir(parents=True)
    lines = [line for group in (*data, *text, *bss) for line in group]
    lines.extend([f"# 0x{ctor_start:08X}..0x{ctor_start + 4 * len(sinits):08X} | size: 0x{4 * len(sinits):X}",
                  ".section .ctors", *(f".4byte {sinit}" for sinit in sinits)])
    (asm_dir / "synthetic.s").write_text("\n".join(lines) + "\n", encoding="utf-8")


class WorktreeTests(unittest.TestCase):
    def test_variant_score_rejects_unknown_function(self):
        root = Path(tempfile.gettempdir()) / "brawl-variant-score"
        runner = common.Runner(lambda _: None)
        functions = (["actual"], {"actual": ["blr"]})
        with patch.object(ops, "BRAWL", root), patch.object(ops, "BUILD", root / "build"), \
             patch.object(runner, "run"), patch.object(ops, "_funcs", return_value=functions):
            with self.assertRaisesRegex(common.ToolError, "No corresponding target/candidate function"):
                ops._variant_score(runner, "ft_test", "status", "mistyped")

    def test_variant_score_accepts_candidate_name_of_paired_function(self):
        root = Path(tempfile.gettempdir()) / "brawl-variant-score"
        runner = common.Runner(lambda _: None)
        target = (["unnamed"], {"unnamed": ["li r3,0", "blr"]})
        candidate = (["recovered"], {"recovered": ["li r3,1", "blr"]})
        with patch.object(ops, "BRAWL", root), patch.object(ops, "BUILD", root / "build"), \
             patch.object(runner, "run"), patch.object(ops, "_funcs", side_effect=[target, candidate]):
            self.assertEqual(ops._variant_score(runner, "ft_test", "status", "recovered"), (2, 1, "0/1"))

    def test_variants_invalid_baseline_aborts_and_restores_source(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            unit = "status"
            source = root / "src/status.cpp"
            source.parent.mkdir()
            source.write_bytes(b"original source\r\n")
            spec = root / "spec.py"
            spec.write_text("VARIANTS = [('rewrite', [('original', 'changed')])]", encoding="utf-8")
            with patch.object(ops, "BRAWL", root), patch.object(metrics, "METRICS_FILE", root / "metrics.csv"), \
                 patch.object(ops, "_variant_score", side_effect=common.ToolError("missing function")) as score:
                with self.assertRaisesRegex(common.ToolError, "missing function"):
                    ops.variants(common.Runner(lambda _: None), "ft_test", unit, spec, "mistyped")
                score.assert_called_once()
                self.assertEqual(source.read_bytes(), b"original source\r\n")

    def test_variants_failed_edit_restores_original_crlf_bytes(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            source = root / "src/status.cpp"
            source.parent.mkdir()
            original = b"original source\r\n"
            source.write_bytes(original)
            spec = root / "spec.py"
            spec.write_text("VARIANTS = [('rewrite', [('original', 'changed')])]", encoding="utf-8")
            seen = []

            def score(*args):
                seen.append(source.read_bytes())
                if len(seen) == 1:
                    return (0, 0, "1/1")
                raise common.ToolError("candidate failed")

            with patch.object(ops, "BRAWL", root), patch.object(metrics, "METRICS_FILE", root / "metrics.csv"), \
                 patch.object(ops, "_variant_score", side_effect=score):
                result = ops.variants(common.Runner(lambda _: None), "ft_test", "status", spec, "actual")
            self.assertEqual(seen, [b"original source\n", b"changed source\n"])
            self.assertEqual(source.read_bytes(), original)
            self.assertEqual(result, [(0, 0, "base")])

    @staticmethod
    def _apply_status_fixture(root):
        split_files = {}
        split_text = "existing.cpp:\n\t.text start:0x1 end:0x2\n\nmo_fighter/mo_fighter.cpp:\n"
        for version, newline in (("RSBE01_01", "\r\n"), ("RSBE01_02", "\n")):
            path = root / "config" / version / "rels" / "ft_test" / "splits.txt"
            path.parent.mkdir(parents=True)
            path.write_bytes(split_text.replace("\n", newline).encode("utf-8"))
            split_files[version] = path
        configure = root / "configure.py"
        configure.write_text(
            '    {\n'
            '        "lib": "ft_test",\n'
            '        "mw_version": config.linker_version,\n'
            '        "cflags": cflags_default,\n'
            '        "host": False,\n'
            '        "objects": [],\n'
            '    },\n', encoding="utf-8")
        proposal = SplitProposal("mo_fighter/ft_test/test_status.cpp",
                                 ("\t.text start:0x10 end:0x20", ".data start:0x30 end:0x40"),
                                 ("review class boundary",), "fixture")
        return split_files, configure, (proposal,)

    def test_apply_status_splits_updates_both_temp_configs_and_fighter_flags(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            split_files, configure, proposals = self._apply_status_fixture(root)

            units = apply_status_splits("ft_test", proposals, split_files, configure)

            self.assertEqual(units, ("mo_fighter/ft_test/test_status.cpp",))
            for version, path in split_files.items():
                contents = path.read_bytes()
                self.assertLess(contents.index(b"test_status.cpp:"), contents.index(b"mo_fighter/mo_fighter.cpp:"))
                self.assertIn(b"test_status.cpp:", contents)
                if version == "RSBE01_01":
                    self.assertNotIn(b"\n", contents.replace(b"\r\n", b""))
            config_text = configure.read_text(encoding="utf-8")
            self.assertIn('"cflags": cflags_fighter', config_text)
            self.assertIn('Object(NonMatching, "mo_fighter/ft_test/test_status.cpp")', config_text)

    def test_apply_status_splits_duplicate_in_second_revision_writes_nothing(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            split_files, configure, proposals = self._apply_status_fixture(root)
            duplicate = split_files["RSBE01_02"]
            duplicate.write_text(duplicate.read_text(encoding="utf-8").replace(
                "mo_fighter/mo_fighter.cpp:", "mo_fighter/ft_test/test_status.cpp:\nmo_fighter/mo_fighter.cpp:"),
                encoding="utf-8")
            before = {path: path.read_bytes() for path in (*split_files.values(), configure)}

            with self.assertRaisesRegex(ApplyStatusSplitsError, "RSBE01_02.*already exists"):
                apply_status_splits("ft_test", proposals, split_files, configure)

            self.assertEqual({path: path.read_bytes() for path in before}, before)

    def test_apply_status_splits_duplicate_configure_unit_writes_nothing(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            split_files, configure, proposals = self._apply_status_fixture(root)
            configure.write_text(configure.read_text(encoding="utf-8").replace(
                '"objects": []', '"objects": [Object(NonMatching, "mo_fighter/ft_test/test_status.cpp")]'),
                encoding="utf-8")
            before = {path: path.read_bytes() for path in (*split_files.values(), configure)}

            with self.assertRaisesRegex(ApplyStatusSplitsError, "configure.py.*already exists"):
                apply_status_splits("ft_test", proposals, split_files, configure)

            self.assertEqual({path: path.read_bytes() for path in before}, before)

    def test_apply_status_splits_operation_uses_selected_config_paths(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            proposal = SplitProposal("mo_fighter/ft_test/test_status.cpp",
                                     ("\t.text start:0x10 end:0x20",), (), "fixture")
            messages = []
            with patch.object(ops, "BRAWL", root), \
                 patch.object(ops, "propose_status_splits", return_value=StatusSplitResult((proposal,))), \
                 patch.object(ops, "apply_status_split_files", return_value=(proposal.unit,)) as apply:
                units = ops.apply_status_splits(common.Runner(messages.append), "ft_test", "ftTest")

            self.assertEqual(units, (proposal.unit,))
            args = apply.call_args.args
            self.assertEqual(args[0], "ft_test")
            self.assertEqual(args[1], (proposal,))
            self.assertEqual(args[2], {
                "RSBE01_01": root / "config/RSBE01_01/rels/ft_test/splits.txt",
                "RSBE01_02": root / "config/RSBE01_02/rels/ft_test/splits.txt",
            })
            self.assertEqual(args[3], root / "configure.py")

    def test_apply_status_splits_cli_forwards_module_and_prefix(self):
        with patch.object(cli, "select_repo", return_value=common.WS), patch.object(cli, "git", return_value="main"), \
             patch.object(ops, "apply_status_splits") as apply:
            result = cli.main(["apply-status-splits", "ft_test", "--prefix", "ftTest"])
        self.assertEqual(result, 0)
        apply.assert_called_once_with(ANY, "ft_test", "ftTest")

    def test_timed_operation_records_success_false_and_exception(self):
        with tempfile.TemporaryDirectory() as folder, patch.object(metrics, "METRICS_FILE", Path(folder) / "timings.csv"):
            @metrics.timed_operation("build")
            def succeeds():
                return None

            @metrics.timed_operation("probe")
            def mismatch():
                return False

            @metrics.timed_operation("diff")
            def errors():
                raise RuntimeError("synthetic failure")

            succeeds()
            self.assertFalse(mismatch())
            with self.assertRaisesRegex(RuntimeError, "synthetic failure"):
                errors()

            with metrics.METRICS_FILE.open("r", encoding="utf-8", newline="") as source:
                rows = list(csv.DictReader(source))

        self.assertEqual([(row["command"], row["status"]) for row in rows],
                         [("build", "ok"), ("probe", "failed"), ("diff", "error")])
        self.assertTrue(all(float(row["elapsed_seconds"]) >= 0 for row in rows))

    def test_metrics_summary_aggregates_per_command(self):
        with tempfile.TemporaryDirectory() as folder:
            path = Path(folder) / "timings.csv"
            with path.open("w", encoding="utf-8", newline="") as output:
                writer = csv.DictWriter(output, fieldnames=metrics.FIELDS)
                writer.writeheader()
                writer.writerows([
                    {"timestamp_utc": "t1", "command": "build", "elapsed_seconds": "1", "status": "ok"},
                    {"timestamp_utc": "t2", "command": "build", "elapsed_seconds": "3", "status": "failed"},
                    {"timestamp_utc": "t3", "command": "probe", "elapsed_seconds": "0.5", "status": "ok"},
                ])

            summary = metrics.summarize(path)

        self.assertEqual(summary["build"], {"count": 2, "mean_seconds": 2.0, "median_seconds": 2.0,
                                             "max_seconds": 3.0, "failures": 1})
        self.assertEqual(summary["probe"]["count"], 1)

    def test_metrics_command_prints_local_summary(self):
        with tempfile.TemporaryDirectory() as folder:
            path = Path(folder) / "timings.csv"
            with path.open("w", encoding="utf-8", newline="") as output:
                writer = csv.DictWriter(output, fieldnames=metrics.FIELDS)
                writer.writeheader()
                writer.writerow({"timestamp_utc": "t1", "command": "probe", "elapsed_seconds": "0.25",
                                 "status": "ok"})
            messages = []
            with patch.object(metrics, "METRICS_FILE", path), patch.object(ops, "METRICS_FILE", path):
                ops.metrics(common.Runner(messages.append))
        self.assertTrue(any("probe" in line and "0.250s" in line for line in messages))

    def test_metrics_cli_dispatches_summary(self):
        with patch.object(cli, "select_repo", return_value=common.WS), patch.object(cli, "git", return_value="main"), \
             patch.object(ops, "metrics") as summary:
            self.assertEqual(cli.main(["metrics"]), 0)
        summary.assert_called_once()

    @staticmethod
    def _status_symbol_lines():
        return [
            "fn_dtor = 0x1", "lbl_vtable = 0x2", "lbl_rtti = 0x3", "fn_sinit = 0x4",
            "fn_ctor = 0x5", "lbl_instance = 0x6", "fn_exit = 0x7",
        ]

    def test_status_rename_preserves_each_config_newline_style(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            crlf = root / "rev1_symbols.txt"
            lf = root / "rev2_symbols.txt"
            lines = self._status_symbol_lines()
            crlf.write_bytes(("\r\n".join(lines) + "\r\n").encode())
            lf.write_bytes(("\n".join(lines) + "\n").encode())

            rename_status_configs("ft_test", ["TestStatus", "fn_dtor", "lbl_vtable", "lbl_rtti",
                                                "fn_sinit", "fn_ctor", "lbl_instance", "ft_test_status",
                                                "fn_exit=exitStatus"],
                                 {"RSBE01_01": crlf, "RSBE01_02": lf})

            self.assertIn(b"\r\n", crlf.read_bytes())
            self.assertNotIn(b"\n", crlf.read_bytes().replace(b"\r\n", b""))
            self.assertNotIn(b"\r", lf.read_bytes())
            self.assertIn(b"exitStatus__10TestStatusi =", crlf.read_bytes())
            self.assertIn(b"exitStatus__10TestStatusi =", lf.read_bytes())

    def test_missing_status_symbol_aborts_both_config_writes(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            rev1 = root / "rev1_symbols.txt"
            rev2 = root / "rev2_symbols.txt"
            lines = self._status_symbol_lines()
            rev1.write_bytes(("\r\n".join(lines) + "\r\n").encode())
            rev2.write_bytes(("\n".join(lines[:-1]) + "\n").encode())
            before = {rev1: rev1.read_bytes(), rev2: rev2.read_bytes()}

            with self.assertRaisesRegex(RenameSymbolsError, "MISSING RSBE01_02 ft_test fn_exit"):
                rename_status_configs("ft_test", ["TestStatus", "fn_dtor", "lbl_vtable", "lbl_rtti",
                                                    "fn_sinit", "fn_ctor", "lbl_instance", "ft_test_status",
                                                    "fn_exit=exitStatus"],
                                     {"RSBE01_01": rev1, "RSBE01_02": rev2})

            self.assertEqual(rev1.read_bytes(), before[rev1])
            self.assertEqual(rev2.read_bytes(), before[rev2])

    def test_full_mangled_method_name_passes_through_unchanged(self):
        full_name = "__ct__12SpecialStatusFv"
        renames = build_status_renames(["SpecialStatus", "dtor", "vt", "rtti", "sinit", "ctor", "inst",
                                        "ft_test_status", f"old_method={full_name}"])
        self.assertEqual(renames["old_method"], full_name)

    def test_rename_status_operation_updates_both_revision_files(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            configs = {}
            lines = self._status_symbol_lines()
            for version in ("RSBE01_01", "RSBE01_02"):
                path = root / "config" / version / "rels" / "ft_test" / "symbols.txt"
                path.parent.mkdir(parents=True)
                path.write_text("\n".join(lines) + "\n", encoding="utf-8")
                configs[version] = path
            with patch.object(ops, "BRAWL", root):
                ops.rename_status(common.Runner(lambda _: None), "ft_test", tuple([
                    "TestStatus", "fn_dtor", "lbl_vtable", "lbl_rtti", "fn_sinit", "fn_ctor",
                    "lbl_instance", "ft_test_status", "fn_exit=exitStatus",
                ]))
            for path in configs.values():
                self.assertIn("exitStatus__10TestStatusi =", path.read_text(encoding="utf-8"))

    def test_rename_status_cli_forwards_legacy_status_arguments(self):
        status_args = ["TestStatus", "fn_dtor", "lbl_vtable", "lbl_rtti", "fn_sinit", "fn_ctor",
                       "lbl_instance", "ft_test_status", "fn_exit=__exitStatus__10TestStatusi"]
        with patch.object(cli, "select_repo", return_value=common.WS), patch.object(cli, "git", return_value="main"), \
             patch.object(ops, "rename_status") as rename:
            result = cli.main(["rename-status", "ft_test", "--status", *status_args])
        self.assertEqual(result, 0)
        rename.assert_called_once_with(ANY, "ft_test", tuple(status_args))

    def test_status_splits_cli_forwards_review_options(self):
        with patch.object(cli, "select_repo", return_value=common.WS), patch.object(cli, "git", return_value="main"), \
             patch.object(ops, "status_splits") as status_splits:
            result = cli.main(["status-splits", "ft_test", "--prefix", "ftTest", "--write-copy"])
        self.assertEqual(result, 0)
        status_splits.assert_called_once_with(ANY, "ft_test", "ftTest", True)

    def test_status_split_review_copy_preserves_source_and_rejects_overwrite(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            checkout = root / "brawl"
            source = checkout / "config/RSBE01_01/rels/ft_test/splits.txt"
            source.parent.mkdir(parents=True)
            original = b"existing.cpp:\r\n\t.text start:0x1 end:0x2\r\n"
            source.write_bytes(original)
            destination = root / "research/brawltool/review/ft_test/splits.txt"

            result = write_review_copy(source, destination, "status.cpp:\n\t.data start:0x3 end:0x4", checkout)

            self.assertEqual(source.read_bytes(), original)
            self.assertIn(b"existing.cpp:\r\n", result.read_bytes())
            self.assertIn(b"status.cpp:\n", result.read_bytes())
            with self.assertRaises(FileExistsError):
                write_review_copy(source, destination, "other", checkout)
            with self.assertRaises(ValueError):
                write_review_copy(source, checkout / "config/copy.txt", "other", checkout)

    def test_status_splits_operation_writes_only_private_review_copy(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            checkout = root / "brawl"
            source = checkout / "config/RSBE01_01/rels/ft_test/splits.txt"
            source.parent.mkdir(parents=True)
            source.write_text("existing.cpp:\n\t.text start:0x1 end:0x2\n", encoding="utf-8")
            original = source.read_bytes()
            proposal = SplitProposal("mo_fighter/ft_test/test_status.cpp",
                                     ("\t.text start:0x3 end:0x4",), (), "synthetic")
            review = root / "research/brawltool/review/status_splits"
            with patch.object(ops, "BRAWL", checkout), patch.object(ops, "STATUS_SPLIT_REVIEW", review), \
                 patch.object(ops, "propose_status_splits", return_value=StatusSplitResult((proposal,))):
                destination = ops.status_splits(common.Runner(lambda _: None), "ft_test", write_copy=True)
            self.assertEqual(source.read_bytes(), original)
            self.assertEqual(destination, review / "ft_test/splits.txt")
            self.assertIn("synthetic", destination.read_text(encoding="utf-8"))

    def test_status_split_parser_proposes_two_synthetic_classes(self):
        def item(section, address, size, kind, name, body):
            return "\n".join([f"# .{section}:0x00000000 | 0x{address:08X} | size: 0x{size:X}",
                              f".{kind} {name}, global", *body, f".end{kind} {name}"])

        data = [
            item("data", 0x1000, 0x20, "obj", "name_idle", ['.string "ftTestStatusUniqProcessIdle"']),
            item("data", 0x1020, 0x8, "obj", "rtti_idle", [".4byte name_idle", ".4byte 0"]),
            item("data", 0x1028, 0x40, "obj", "vtable_idle", [".4byte rtti_idle", ".4byte dtor_idle", ".4byte method_idle"]),
            item("data", 0x1068, 0x20, "obj", "name_run", ['.string "ftTestStatusUniqProcessRun"']),
            item("data", 0x1088, 0x8, "obj", "rtti_run", [".4byte name_run", ".4byte 0"]),
            item("data", 0x1090, 0x40, "obj", "vtable_run", [".4byte rtti_run", ".4byte dtor_run", ".4byte method_run"]),
        ]
        text = [
            item("text", 0x80001000, 0x4, "fn", "method_idle", ["blr"]),
            item("text", 0x80001004, 0x10, "fn", "ctor_idle", [".4byte vtable_idle"]),
            item("text", 0x80001014, 0x20, "fn", "sinit_idle", [".4byte instance_idle", "bl ctor_idle",
                                                                   "bl __register_global_object"]),
            item("text", 0x80001034, 0x4, "fn", "method_run", ["blr"]),
            item("text", 0x80001038, 0x10, "fn", "ctor_run", [".4byte vtable_run"]),
            item("text", 0x80001048, 0x20, "fn", "sinit_run", [".4byte instance_run", "bl ctor_run",
                                                                 "bl __register_global_object"]),
        ]
        bss = [item("bss", 0x80500000, 0x10, "obj", "instance_idle", [".4byte 0"]),
               item("bss", 0x80500010, 0x10, "obj", "instance_run", [".4byte 0"])]

        with tempfile.TemporaryDirectory() as folder:
            asm_dir = Path(folder) / "ft_test" / "asm"
            asm_dir.mkdir(parents=True)
            asm = [*data, *text,
                   "# 0x80002000..0x80002008 | size: 0x8", ".section .ctors",
                   ".4byte sinit_idle", ".4byte sinit_run", *bss]
            (asm_dir / "synthetic.s").write_text("\n".join(asm) + "\n", encoding="utf-8")

            result = propose_status_splits("ft_test", Path(folder), prefix="ftTest")

        rendered = result.render()
        self.assertEqual(len(result.proposals), 2)
        self.assertIn("mo_fighter/ft_test/ft_test_status_uniq_process_idle.cpp:", rendered)
        self.assertIn("mo_fighter/ft_test/ft_test_status_uniq_process_run.cpp:", rendered)
        self.assertIn(".ctors      start:0x80002000 end:0x80002004", rendered)
        self.assertIn(".bss        start:0x80500000 end:0x80500010", rendered)
        self.assertIn(".data       start:0x00001090 end:0x00001090", rendered)

    def test_mario_lw_shoot_data_ends_at_padding_rtti(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            data, text, bss, sinits = [], [], [], []
            for class_name, tag, name_addr, rtti_addr, vtable_addr, text_addr, bss_addr in [
                ("ftMarioStatusUniqProcessSpecialLwShoot", "lw_shoot", 0x7700, 0x7730, 0x77BC,
                 0x80001000, 0x80500000),
                ("ftMarioStatusUniqProcessSpecialS", "special_s", 0x7830, 0x7858, 0x786C,
                 0x80001100, 0x80500100),
            ]:
                d, t, b, sinit = _status_asm_records(class_name, tag, name_addr, rtti_addr,
                                                    vtable_addr, text_addr, bss_addr)
                data.extend(d); text.extend(t); bss.extend(b); sinits.append(sinit)
            data.append(_asm_item("data", 0x781C, 0xC, "obj", "rtti_alignment_padding",
                                  [".4byte type_info", ".4byte base_list", ".4byte 0x00000000"]))
            _write_status_asm(root, "ft_mario", data, text, bss, sinits)

            result = propose_status_splits("ft_mario", root, "ftMario")

        ranges = {proposal.unit: next(line for line in proposal.lines if line.strip().startswith(".data"))
                  for proposal in result.proposals}
        self.assertIn("0x000077BC end:0x00007828", ranges["mo_fighter/ft_mario/ft_mario_status_uniq_process_special_lw_shoot.cpp"])

    def test_luigi_last_unit_stops_after_trailing_rtti_groups(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            data, text, bss, sinits = _status_asm_records(
                "ftLuigiStatusUniqProcessSpecialSWall", "s_wall", 0x6500, 0x6530, 0x6400,
                0x80003000, 0x80501000)
            data.extend([
                _asm_item("data", 0x6538, 0x8, "obj", "base_name_1", ['.string "BaseA"']),
                _asm_item("data", 0x6540, 0x4, "obj", "base_list_1", [".4byte base_type_1"]),
                _asm_item("data", 0x6544, 0xC, "obj", "base_rtti_1",
                          [".4byte base_name_1", ".4byte base_list_1", ".4byte 0x00000001"]),
                _asm_item("data", 0x6550, 0x8, "obj", "base_name_2", ['.string "BaseB"']),
                _asm_item("data", 0x6558, 0x4, "obj", "base_list_2", [".4byte base_type_2"]),
                _asm_item("data", 0x655C, 0xC, "obj", "base_rtti_2",
                          [".4byte base_name_2", ".4byte base_list_2", ".4byte 0x00000001"]),
                _asm_item("data", 0x6580, 0xD58, "obj", "following_non_rtti_data", [".4byte 0x12345678"]),
            ])
            _write_status_asm(root, "ft_luigi", data, text, bss, [sinits])

            result = propose_status_splits("ft_luigi", root, "ftLuigi")

        data_range = next(line for line in result.proposals[0].lines if line.strip().startswith(".data"))
        self.assertIn("start:0x00006400 end:0x00006580", data_range)
        self.assertNotIn("0x00006ED8", data_range)

    def test_reference_proposals_match_committed_fighter_splits(self):
        """On a machine with the extracted RSBE01_01 asm, every non-first status unit the reference
        parser proposes must equal the committed splits.txt block (alignment/ownership rule
        regression: Marth special_hi 0x54E8, Luigi s_ram/s_wall 0x64B8, Mario lw_shoot 0x7828).
        Reads local build output only; nothing from it is stored in the repository."""
        build = ops.BRAWL / "build" / "RSBE01_01"
        fighters = {"ft_marth": "ftMarth", "ft_mario": "ftMario", "ft_luigi": "ftLuigi",
                    "ft_sonic": "ftSonic", "ft_pit": "ftPit"}
        available = [m for m in fighters if (build / m / "asm").is_dir()]
        if not available:
            self.skipTest("no extracted RSBE01_01 fighter asm on this machine")
        checked = 0
        for module in available:
            splits = (ops.BRAWL / "config" / "RSBE01_01" / "rels" / module / "splits.txt").read_text()
            blocks = {}
            for block in splits.replace("\r\n", "\n").split("\n\n"):
                head, *body = block.strip().splitlines() or [""]
                blocks[head.rstrip(":")] = [" ".join(l.split()) for l in body if l.strip()]
            result = propose_status_splits(module, build, fighters[module])
            for proposal in result.proposals[1:]:  # the first unit's start is a manual decision
                if proposal.unit not in blocks:
                    continue  # proposal not adopted (e.g. a unit split by hand)
                with self.subTest(unit=proposal.unit):
                    self.assertEqual([" ".join(l.split()) for l in proposal.lines], blocks[proposal.unit])
                    checked += 1
        self.assertGreater(checked, 0)

    def test_marth_special_hi_and_lw_data_boundaries(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            data, text, bss, sinits = [], [], [], []
            for class_name, tag, name_addr, rtti_addr, vtable_addr, text_addr, bss_addr in [
                ("ftMarthStatusUniqProcessSpecialHi", "special_hi", 0x5500, 0x5528, 0x5584,
                 0x80004000, 0x80502000),
                ("ftMarthStatusUniqProcessSpecialLw", "special_lw", 0x5600, 0x5640, 0x5678,
                 0x80004100, 0x80502100),
            ]:
                d, t, b, sinit = _status_asm_records(class_name, tag, name_addr, rtti_addr,
                                                    vtable_addr, text_addr, bss_addr)
                data.extend(d); text.extend(t); bss.extend(b); sinits.append(sinit)
            data.extend([
                _asm_item("data", 0x55F4, 0xC, "obj", "special_hi_padding_rtti",
                          [".4byte type_info", ".4byte base_list", ".4byte 0x00000000"]),
                _asm_item("data", 0x5648, 0x8, "obj", "special_lw_base_name_1", ['.string "BaseA"']),
                _asm_item("data", 0x5650, 0x4, "obj", "special_lw_base_list_1", [".4byte base_type_1"]),
                _asm_item("data", 0x5654, 0xC, "obj", "special_lw_base_rtti_1",
                          [".4byte special_lw_base_name_1", ".4byte special_lw_base_list_1", ".4byte 0x00000001"]),
                _asm_item("data", 0x5660, 0x8, "obj", "special_lw_base_name_2", ['.string "BaseB"']),
                _asm_item("data", 0x5668, 0x4, "obj", "special_lw_base_list_2", [".4byte base_type_2"]),
                _asm_item("data", 0x566C, 0xC, "obj", "special_lw_base_rtti_2",
                          [".4byte special_lw_base_name_2", ".4byte special_lw_base_list_2", ".4byte 0x00000001"]),
            ])
            _write_status_asm(root, "ft_marth", data, text, bss, sinits)

            result = propose_status_splits("ft_marth", root, "ftMarth")

        ranges = {proposal.unit: next(line for line in proposal.lines if line.strip().startswith(".data"))
                  for proposal in result.proposals}
        self.assertIn("start:0x00005584 end:0x00005600", ranges["mo_fighter/ft_marth/ft_marth_status_uniq_process_special_hi.cpp"])
        self.assertIn("start:0x00005600 end:0x00005678", ranges["mo_fighter/ft_marth/ft_marth_status_uniq_process_special_lw.cpp"])

    def test_failed_m2c_draft_is_not_saved(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            build = root / "build"
            asm = build / "st_test" / "asm" / "mo_stage/st_test/st_test.s"
            asm.parent.mkdir(parents=True)
            asm.write_text("# test assembly\n", encoding="utf-8")
            drafts = root / "drafts"
            runner = common.Runner(lambda _: None)

            with patch.object(ops, "BUILD", build), patch.object(ops, "DRAFTS", drafts), \
                 patch.object(runner, "run", return_value=(2, "m2c internal error")):
                with self.assertRaisesRegex(common.ToolError, "m2c failed with exit code 2") as error:
                    ops.draft(runner, "st_test", "mo_stage/st_test/st_test")

            self.assertIn("m2c internal error", str(error.exception))
            self.assertFalse(drafts.exists())

    def test_runner_default_cwd_is_live_selection(self):
        with tempfile.TemporaryDirectory() as folder, patch.object(common, 'BRAWL', Path(folder)):
            _, out = common.Runner(lambda _: None).run([common.PY, '-c', 'import os; print(os.getcwd())'], quiet=True)
            self.assertEqual(Path(out).resolve(), Path(folder).resolve())

    def test_invalid_repo_fails_without_fallback(self):
        with tempfile.TemporaryDirectory() as folder:
            with self.assertRaises(common.ToolError):
                common.select_repo(folder)

    def test_subdirectory_is_not_checkout_root(self):
        with self.assertRaises(common.ToolError):
            common.select_repo(common.MAIN_REPO / 'src')

    def test_parallel_operations_cannot_integrate_delete_or_claim(self):
        with patch.object(common, 'BRAWL', common.WS / 'isolated-test'), patch.object(ops, 'git') as git:
            r = common.Runner(lambda _: None)
            for call in (lambda: ops.integrate(r, 'codex/test'), lambda: ops.cleanup(r, 'codex/test'),
                         lambda: ops.autopilot(r), lambda: ops.autopilot(r, dry_run=True)):
                with self.assertRaises(common.ToolError):
                    call()
            git.assert_not_called()

    def test_parallel_journal_is_only_tagged_note(self):
        with tempfile.TemporaryDirectory() as folder:
            script = Path(folder) / 'handoff.py'; script.touch()
            r = common.Runner(lambda _: None)
            with patch.object(common, 'HANDOFF', script), patch.object(common, 'BRAWL', Path(folder)), patch.object(r, 'run') as run:
                common.journal(r, 'verify', 'result', verified='not main verification')
                cmd = run.call_args.args[0]
                self.assertEqual(cmd[2:5], ['log', 'codex', 'note'])
                self.assertNotIn('--verified', cmd)
                self.assertIn('codex-parallel:', cmd[-1])

    def test_missing_or_failed_or_empty_objdump_cannot_match(self):
        with tempfile.TemporaryDirectory() as folder:
            obj = Path(folder) / 'test.o'
            with self.assertRaises(common.ToolError):
                ops._funcs(obj)
            obj.touch()
            for proc in (subprocess.CompletedProcess([], 1, stdout='', stderr='broken'),
                         subprocess.CompletedProcess([], 0, stdout='', stderr=''),
                         subprocess.CompletedProcess([], 0, stdout='00000000 <empty>:\n', stderr='')):
                with patch('subprocess.run', return_value=proc), self.assertRaises(common.ToolError):
                    ops._funcs(obj)

    def test_probe_rejects_error_even_after_true_text(self):
        r = common.Runner(lambda _: None)
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            module, unit = "st_test", "mo_stage/st_test/st_test"
            target = f"build\\RSBE01_01\\{module}\\obj\\mo_stage\\st_test\\st_test.o"
            (root / "build.ninja").write_text(
                f"build build\\RSBE01_01\\{module}\\{module}.plf: link {target}\n", encoding="utf-8")
            with patch.object(metrics, "METRICS_FILE", root / "timings.csv"), \
                 patch.object(ops, "BRAWL", root), patch.object(ops, 'is_rel', return_value=True), \
                 patch.object(r, 'run', return_value=(1, 'Full REL byte match: True')):
                self.assertFalse(ops.probe(r, module, unit))

    def test_probe_missing_linked_source_object_fails_before_subprocess(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            module = "ft_test"
            unit = "mo_fighter/ft_test/status"
            unit_path = unit.replace("/", "\\")
            target = f"build\\RSBE01_01\\{module}\\obj\\{unit_path}.o"
            other = "build\\RSBE01_01\\src\\mo_fighter\\ft_common\\shared.o"
            line = (f"build build\\RSBE01_01\\{module}\\{module}.plf: link "
                    f"{target} {other}\n")
            (root / "build.ninja").write_text(line, encoding="utf-8")
            runner = common.Runner(lambda _: None)

            with patch.object(metrics, "METRICS_FILE", root / "metrics.csv"), \
                 patch.object(ops, "BRAWL", root), patch.object(ops, "is_rel", return_value=True), \
                 patch.object(runner, "run") as run:
                with self.assertRaisesRegex(common.ToolError, "Run a BrawlTool build first") as error:
                    ops.probe(runner, module, unit)

            self.assertIn("shared.o", str(error.exception))
            run.assert_not_called()

    def test_probe_preflight_ignores_the_candidate_it_compiles(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            module = "ft_test"
            unit = "mo_fighter/ft_test/status"
            unit_path = unit.replace("/", "\\")
            candidate = f"build\\RSBE01_01\\src\\{unit_path}.o"
            line = (f"build build\\RSBE01_01\\{module}\\{module}.plf: link "
                    f"{candidate}\n")
            (root / "build.ninja").write_text(line, encoding="utf-8")
            self.assertEqual(ops.missing_probe_source_objects(root, module, unit), [])

    def test_template_annotation_is_fully_removed(self):
        with tempfile.TemporaryDirectory() as folder:
            obj = Path(folder) / 'test.o'; obj.touch()
            text = '00000000 <test>:\n   0:  beq 1234 <create__28stClassInfoImpl<51,7stOldin>Fv+0x24>\n'
            with patch('subprocess.run', return_value=subprocess.CompletedProcess([], 0, stdout=text, stderr='')):
                order, funcs = ops._funcs(obj)
            self.assertEqual(funcs['test'], ['beq <addr>'])

    def test_traversal_rejected_before_operations(self):
        for module, unit in [('..', 'x'), ('st_test', '../orig/foo'), ('st_test', '/x'), ('st_test', 'a\\b')]:
            with self.assertRaises(common.ToolError):
                common.validate_unit(module, unit)

    def test_failed_promotion_preserves_dirty_bytes(self):
        with tempfile.TemporaryDirectory() as folder:
            config, verified = Path(folder) / 'configure.py', Path(folder) / 'verified.txt'
            unit = 'mo_stage/st_test/st_test'
            old_config = b'# existing WIP\r\n{"lib": "st_test", "objects": [Object(NonMatching, "mo_stage/st_test/st_test.cpp")]}\r\n'
            old_verified = b'# existing dirty allowlist\r\nother.cpp\r\n'
            config.write_bytes(old_config); verified.write_bytes(old_verified)
            with patch.object(ops, 'CONFIGURE', config), patch.object(ops, 'VERIFIED', verified), \
                  patch.object(metrics, 'METRICS_FILE', Path(folder) / 'metrics.csv'), \
                 patch.object(ops, 'git', return_value='dirty') as git, patch.object(ops, 'probe', return_value=True), \
                 patch.object(ops, 'build', side_effect=common.ToolError('intentional failed gate')):
                with self.assertRaises(common.ToolError):
                    ops.promote(common.Runner(lambda _: None), unit)
                self.assertEqual(config.read_bytes(), old_config)
                self.assertEqual(verified.read_bytes(), old_verified)
                self.assertFalse(any('checkout' in c.args for c in git.call_args_list))

    def test_parallel_status_never_regenerates_main(self):
        r = common.Runner(lambda _: None)
        with patch.object(common, 'BRAWL', common.WS / 'isolated-test'), patch.object(r, 'run') as run:
            ops.status_page(r, open_it=False)
            run.assert_not_called()

    def test_failed_compile_still_records_rejected_review(self):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder) / 'repo'; root.mkdir()
            research = Path(folder) / 'research'
            unit = 'mo_stage/st_test/st_test'
            with patch.object(ops, 'BRAWL', root), patch.object(ops, 'BUILD', root / 'build/RSBE01_01'), \
                 patch.object(ops, 'RESEARCH', research), patch.object(ops, 'CONFIGURE', root / 'configure.py'), \
                 patch.object(ops, 'VERIFIED', root / 'verified.txt'), patch.object(ops, 'is_rel', return_value=True), \
                 patch.object(ops, 'unit_state', return_value='nonmatching'), patch.object(ops, 'git', return_value='test'), \
                 patch.object(ops, 'journal'), patch.object(ops, 'diff', side_effect=common.ToolError('compile failed')), \
                 patch.object(ops, 'probe') as probe:
                with self.assertRaises(common.ToolError):
                    ops.review(common.Runner(lambda _: None), 'st_test', unit)
                probe.assert_not_called()
                path = next(research.rglob('summary.json'))
                summary = json.loads(path.read_text())
                self.assertFalse(summary['full_rel_byte_match'])
                self.assertEqual(summary['error'], 'compile failed')


if __name__ == '__main__':
    unittest.main()
import json
