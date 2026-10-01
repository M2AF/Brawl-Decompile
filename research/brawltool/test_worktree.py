"""Focused stdlib tests: routing and false-positive/rollback gates, no original writes."""
from pathlib import Path
import subprocess
import tempfile
import unittest
from unittest.mock import patch

from . import common, ops


class WorktreeTests(unittest.TestCase):
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
        with patch.object(ops, 'is_rel', return_value=True), patch.object(r, 'run', return_value=(1, 'Full REL byte match: True')):
            self.assertFalse(ops.probe(r, 'st_test', 'mo_stage/st_test/st_test'))

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
