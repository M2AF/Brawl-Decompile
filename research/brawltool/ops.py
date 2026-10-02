"""brawltool operations. Every function takes a Runner and logs through it; gates raise ToolError."""
from __future__ import annotations

import difflib
import hashlib
import json
import re
import shutil
import subprocess
import webbrowser
from datetime import datetime, timezone
from collections import defaultdict
from pathlib import Path
from typing import Optional

from . import common
from .apply_status_splits import ApplyStatusSplitsError, apply_status_splits as apply_status_split_files
from .metrics import METRICS_FILE, summarize as summarize_metrics, timed_operation
from .rename_status import RenameSymbolsError, rename_status_configs
from .reference_status_splits import propose_status_splits, write_review_copy
common.select_repo()  # Also validate launches through the existing GUI entry point.

from .common import (BRAWL, BRANCH, BUILD, DRAFTS, DTK, HANDOFF, M2C, MAIN_DOL_SHA1, NINJA, OBJDUMP, PY, RESEARCH,
                     TOOLS, VENV_SCRIPTS, WS, Runner, ToolError, git, journal, is_parallel, require_main, validate_unit)

CONFIGURE = BRAWL / "configure.py"
VERIFIED = BRAWL / "config" / "RSBE01_01" / "verified_objects.txt"
STATUS_HTML = RESEARCH / "status" / "brawl_status.html"
STATUS_SPLIT_REVIEW = RESEARCH / "brawltool" / "review" / "status_splits"
OBJDIFF_RELEASES = "https://github.com/encounter/objdiff/releases/latest"


# ----------------------------------------------------------------------------- build & verify
@timed_operation("build")
def build(r: Runner, clean: bool = False) -> None:
    """configure + remove the stamp + ninja; must print OK: 127/127."""
    if clean:
        src = BUILD / "src"
        if not src.resolve().is_relative_to(BUILD.resolve()) or not BUILD.resolve().is_relative_to(BRAWL):
            raise ToolError(f"Refusing cache clear outside selected checkout: {src}")
        if src.exists():
            r.log(f"Clearing compiled-source cache {src}")
            shutil.rmtree(src)
    r.run([PY, "configure.py", "--version", "RSBE01_01"], quiet=True)
    ok = BUILD / "ok"
    if ok.exists():
        ok.unlink()
    code, out = r.run([NINJA], check=False)
    if code != 0 or "OK: 127/127 binaries verified" not in out:
        raise ToolError("Build/verification FAILED (no 'OK: 127/127'). See the log above.")
    r.log("PASS: OK: 127/127 binaries verified")


def independent_check(r: Runner) -> None:
    """verify_manifest against the originals with dtk, plus the verifier's own tests."""
    code, out = r.run([PY, "tools/verify_manifest.py", "config/RSBE01_01/binary-manifest.json",
                       "--sha1-file", "config/RSBE01_01/build.sha1", "--orig", "--dtk", DTK], check=False)
    if code != 0 or "OK: 127/127" not in out:
        raise ToolError("Independent check FAILED.")
    r.run([PY, "tools/test_verify_manifest.py"], quiet=True)
    dol = BRAWL / "orig" / "RSBE01_01" / "sys" / "main.dol"
    if hashlib.sha1(dol.read_bytes()).hexdigest() != MAIN_DOL_SHA1:
        raise ToolError("Original main.dol hash changed! Stop and investigate.")
    r.log("PASS: independent check 127/127, verifier tests OK, originals unchanged")


def status_page(r: Runner, open_it: bool = True) -> None:
    if is_parallel():
        r.log("Shared main status page unchanged. Use review for private worktree evidence.")
        return
    r.run([PY, TOOLS / "mk_status_page.py"])
    if open_it:
        webbrowser.open(STATUS_HTML.as_uri())


def metrics(r: Runner) -> None:
    summary = summarize_metrics()
    r.log(f"Timing CSV: {METRICS_FILE}")
    if not summary:
        r.log("No timed BrawlTool commands recorded yet.")
        return
    r.log(f"{'command':<10} {'runs':>5} {'mean':>10} {'median':>10} {'max':>10} {'failed':>7}")
    for command, stats in summary.items():
        r.log(f"{command:<10} {stats['count']:5d} {stats['mean_seconds']:9.3f}s "
              f"{stats['median_seconds']:9.3f}s {stats['max_seconds']:9.3f}s {stats['failures']:7d}")


def open_objdiff(r: Runner) -> None:
    """Launch ObjDiff for the active checkout, or open its official releases page."""
    config = BRAWL / "objdiff.json"
    if not config.is_file():
        raise ToolError(f"ObjDiff configuration is missing: {config}. Run configure.py first.")

    candidates = (VENV_SCRIPTS / "objdiff.exe", VENV_SCRIPTS / "objdiff-windows-x86_64.exe")
    executable = next((path for path in candidates if path.is_file()), None)
    if executable is None:
        executable = shutil.which("objdiff.exe") or shutil.which("objdiff")
    if executable is None:
        r.log("ObjDiff is not installed. Opening the official Windows releases page.")
        webbrowser.open(OBJDIFF_RELEASES)
        r.log(f"Save the Windows GUI as {VENV_SCRIPTS / 'objdiff.exe'} and click Open ObjDiff again.")
        return

    try:
        subprocess.Popen([str(executable)], cwd=BRAWL, env=r.env(), stdin=subprocess.DEVNULL,
                         stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    except OSError as exc:
        raise ToolError(f"Could not launch ObjDiff at {executable}: {exc}") from exc
    r.log(f"Opened ObjDiff for {BRAWL}")


# ----------------------------------------------------------------------------- configure helpers
def unit_state(unit: str) -> Optional[str]:
    """'matching', 'nonmatching' or None for mo_stage/st_x/file (no .cpp)."""
    s = CONFIGURE.read_text(encoding="utf-8")
    m = re.search(r'Object\((MatchingFor\("RSBE01_01"\)|NonMatching|Matching)\s*,\s*"' + re.escape(unit) + r'\.(?:cpp|c)"', s)
    if not m:
        return None
    return "nonmatching" if m.group(1) == "NonMatching" else "matching"


def module_of(unit: str) -> str:
    """Find the configure.py lib whose object list contains the unit."""
    s = CONFIGURE.read_text(encoding="utf-8")
    pos = s.find(f'"{unit}.cpp"')
    if pos < 0:
        pos = s.find(f'"{unit}.c"')
    if pos < 0:
        raise ToolError(f"{unit} is not in configure.py. Add it with 'split' first.")
    libs = list(re.finditer(r'"lib":\s*"([^"]+)"', s[:pos]))
    if not libs:
        raise ToolError(f"Cannot find the lib for {unit}.")
    return libs[-1].group(1)


UPSTREAM_BASE = "f168bd99c35f4204d615d68a834cd6ca376495b9"  # doldecomp/brawl commit the rev1 work started from


def list_units() -> list[tuple[str, str, str, bool]]:
    """(state, module, unit, ours) for every object whose source exists: our in-progress, other in-progress, ours, rest."""
    c = CONFIGURE.read_text(encoding="utf-8")
    libs = [(m.start(), m.group(1)) for m in re.finditer(r'"lib":\s*"([^"]+)"', c)]
    out = []
    for m in re.finditer(r'Object\((MatchingFor\("RSBE01_01"\)|NonMatching|Matching)\s*,\s*"([^"]+)\.(cpp|c)"', c):
        unit = m.group(2)
        if not (BRAWL / "src" / f"{unit}.{m.group(3)}").exists():
            continue
        prev = [name for pos, name in libs if pos < m.start()]
        if not prev:
            continue
        state = "in progress" if m.group(1) == "NonMatching" else "matching"
        out.append((state, prev[-1], unit))
    # Files added on our branch since the upstream base count as "ours" and are listed first in each group.
    import subprocess
    added = subprocess.run(["git", "-C", str(BRAWL), "diff", "--name-only", "--diff-filter=A", f"{UPSTREAM_BASE}..HEAD", "--", "src"],
                           capture_output=True, text=True).stdout.split()
    ours = {a[4:].rsplit(".", 1)[0] for a in added}
    out = [(st, mod, u, u in ours) for st, mod, u in out]
    out.sort(key=lambda t: (t[0] != "in progress", not t[3], t[1], t[2]))
    return out


def is_rel(module: str) -> bool:
    """True for REL modules (they have their own build directory); False for main.dol libraries."""
    return (BUILD / module / f"{module}.rel").exists() or (BUILD / module / "obj").is_dir() and module != "obj"


# ----------------------------------------------------------------------------- rank
def rank(r: Runner, exclude: tuple[str, ...] = (), top: int = 25, min_size: int = 256) -> None:
    """Smallest remaining extracted text chunks per module (needs a normal build's asm)."""
    rows = []
    for f in BUILD.glob("*/asm/auto_*_text.s"):
        mod = f.parts[-3]
        if mod == "asm" or any(mod.startswith(e) for e in exclude):
            continue
        s = f.read_text(encoding="utf-8", errors="replace")
        hdr = re.search(r"# 0x([0-9A-F]+)\.\.0x([0-9A-F]+) \| size: 0x([0-9A-F]+)", s)
        if not hdr:
            continue
        fns = re.findall(r"^\.fn (\S+),", s, re.M)
        unknown = {c for c in re.findall(r"\bbl (fn_[0-9A-F]{8})\b", s)}
        if int(hdr[3], 16) >= min_size:
            rows.append((int(hdr[3], 16), mod, f.stem, len(fns), len(unknown), hdr[1], hdr[2]))
    rows.sort(key=lambda t: (t[4], t[0]))
    r.log(f"{'bytes':>7} {'fns':>4} {'unk':>3}  module / chunk  [text range]")
    for size, mod, stem, nf, nu, a, b in rows[:top]:
        r.log(f"{size:7,} {nf:4} {nu:3}  {mod} / {stem}  [0x{a}..0x{b}]")
    r.log("unk = calls to unnamed DOL functions. Chunks are provisional: check class/RTTI boundaries before splitting.")


# ----------------------------------------------------------------------------- split (start a TU)
def split(r: Runner, module: str, unit: str, ranges: dict[str, str], force_active: Optional[str] = None) -> None:
    """Add a splits.txt entry and a NonMatching configure.py object for a new TU."""
    validate_unit(module, unit)
    splits = BRAWL / "config" / "RSBE01_01" / "rels" / module / "splits.txt"
    if module == "main":
        splits = BRAWL / "config" / "RSBE01_01" / "splits.txt"
    if not splits.exists():
        raise ToolError(f"No splits file for module {module}.")
    s = splits.read_text(encoding="utf-8")
    if f"\n{unit}.cpp:" in s:
        raise ToolError(f"{unit}.cpp already has a split.")
    order = [".text", ".ctors", ".dtors", ".rodata", ".data", ".bss", ".sdata", ".sdata2", ".sbss", ".sbss2"]
    lines = [f"{unit}.cpp:"]
    for sec in order:
        if sec in ranges:
            a, b = (int(x, 16) for x in ranges[sec].replace("0x", "").split("-"))
            lines.append(f"\t{sec:<11} start:0x{a:08X} end:0x{b:08X}")
    entry = "\n".join(lines) + "\n\n"
    anchor = s.find("\nmo_stage/mo_stage.cpp:") if "\nmo_stage/mo_stage.cpp:" in s else s.rfind("\nhome_button_icon.cpp:")
    s = s + "\n" + entry if anchor < 0 else s[:anchor + 1] + entry + s[anchor + 1:]
    splits.write_text(s, encoding="utf-8", newline="\n")
    c = CONFIGURE.read_text(encoding="utf-8")
    m = re.search(r'("lib":\s*"' + re.escape(module) + r'",.*?"objects":\s*)\[(.*?)\]', c, re.S)
    if not m:
        raise ToolError(f"Cannot find lib {module} in configure.py.")
    inner = m.group(2).strip()
    obj = f'Object(NonMatching, "{unit}.cpp")'
    new_inner = f"\n            {obj},\n        " if not inner else inner.rstrip().rstrip(",") + f", {obj}"
    c = c[:m.start(2)] + new_inner + c[m.end(2):]
    CONFIGURE.write_text(c, encoding="utf-8", newline="\n")
    if force_active:
        y = BRAWL / "config" / "RSBE01_01" / "config.yml"
        t = y.read_text(encoding="utf-8")
        key = f"  symbols: config/RSBE01_01/rels/{module}/symbols.txt\n  force_active: ["
        if key in t and force_active not in t:
            t = t.replace(key, key + force_active + ", ", 1)
            y.write_text(t, encoding="utf-8", newline="\n")
    src = BRAWL / "src" / (unit + ".cpp")
    if not src.exists():
        src.parent.mkdir(parents=True, exist_ok=True)
        src.write_text(f"// {unit}.cpp: work in progress (NonMatching). See research/drafts for the m2c draft.\n",
                       encoding="utf-8", newline="\n")
    r.log(f"Added split + NonMatching object for {unit} in {module}. Next: 'draft', write the source, then 'diff'.")


def status_splits(r: Runner, module: str, prefix: str = "ft", write_copy: bool = False) -> Optional[Path]:
    """Propose status TU splits and optionally append them to a local review copy."""
    try:
        result = propose_status_splits(module, BRAWL / "build" / "RSBE01_01", prefix)
    except (FileNotFoundError, ValueError) as exc:
        raise ToolError(str(exc)) from exc
    for warning in result.warnings:
        r.log(warning)
    r.log(result.render())
    if not write_copy:
        return None

    source = BRAWL / "config" / "RSBE01_01" / "rels" / module / "splits.txt"
    if not source.is_file():
        raise ToolError(f"No source splits.txt for {module}: {source}")
    destination = STATUS_SPLIT_REVIEW / module / "splits.txt"
    try:
        write_review_copy(source, destination, result.render(), BRAWL)
    except (OSError, ValueError) as exc:
        raise ToolError(str(exc)) from exc
    r.log(f"Review copy written; real splits.txt was not changed: {destination}")
    return destination


def apply_status_splits(r: Runner, module: str, prefix: str) -> tuple[str, ...]:
    """Generate and apply reviewed status proposals to both configs and configure.py."""
    try:
        result = propose_status_splits(module, BRAWL / "build" / "RSBE01_01", prefix)
        for warning in result.warnings:
            r.log(warning)
        r.log(result.render())
        split_files = {
            version: BRAWL / "config" / version / "rels" / module / "splits.txt"
            for version in ("RSBE01_01", "RSBE01_02")
        }
        units = apply_status_split_files(module, result.proposals, split_files, BRAWL / "configure.py")
    except (FileNotFoundError, OSError, ValueError) as exc:
        raise ToolError(str(exc)) from exc
    for unit in units:
        r.log(f"Added Object(NonMatching, \"{unit}\") to both version split sets.")
    r.log(f"Applied {len(units)} status split(s) with cflags_fighter. Review both configs and configure.py.")
    return units


def rename_status(r: Runner, module: str, status_args: tuple[str, ...]) -> None:
    """Apply the standard status symbol mapping to both version configs."""
    configs = {
        version: BRAWL / "config" / version / "rels" / module / "symbols.txt"
        for version in ("RSBE01_01", "RSBE01_02")
    }
    try:
        renames = rename_status_configs(module, status_args, configs)
    except (OSError, RenameSymbolsError) as exc:
        raise ToolError(str(exc)) from exc
    for old, new in renames.items():
        r.log(f"{old} -> {new}")


# ----------------------------------------------------------------------------- draft (m2c)
def draft(r: Runner, module: str, unit: str, functions: tuple[str, ...] = ()) -> Path:
    """Run m2c on the unit's split assembly (or an auto_ chunk name) and save a C draft."""
    validate_unit(module, unit)
    asm = BUILD / module / "asm" / (unit + ".s")
    if not asm.exists():
        alt = BUILD / module / "asm" / (Path(unit).name + ".s")
        if alt.exists():
            asm = alt
        else:
            raise ToolError(f"No assembly at {asm}. Run 'split' and a build first, or pass an auto_ chunk name.")
    cmd = [PY, M2C, "-t", "ppc-mwcc-c++", str(asm)]
    for f in functions:
        cmd += ["-f", f]
    code, out = r.run(cmd, quiet=True, check=False)
    if code != 0:
        detail = "\n".join(out.splitlines()[-20:])
        raise ToolError(f"m2c failed with exit code {code}; no new draft was saved.\n{detail}".rstrip())
    DRAFTS.mkdir(parents=True, exist_ok=True)
    dest = DRAFTS / f"{module}__{Path(unit).name}.m2c.c"
    dest.write_text("// m2c draft (machine output, NOT source): rewrite by hand against the headers.\n" + out + "\n",
                    encoding="utf-8", newline="\n")
    r.log(out[:6000] + ("\n... (truncated in log; full draft saved)" if len(out) > 6000 else ""))
    r.log(f"Draft saved: {dest}")
    return dest


# ----------------------------------------------------------------------------- diff
def _funcs(obj: Path) -> tuple[list[str], dict[str, list[str]]]:
    import subprocess
    if not obj.is_file():
        raise ToolError(f"Missing object: {obj}")
    if not OBJDUMP.is_file():
        raise ToolError(f"Missing objdump: {OBJDUMP}")
    proc = subprocess.run([str(OBJDUMP), "-dr", "--no-show-raw-insn", "-j", ".text", str(obj)], capture_output=True, text=True)
    if proc.returncode != 0:
        raise ToolError(f"Objdump failed for {obj}: {proc.stderr.strip()}")
    text = proc.stdout
    order, res, cur = [], {}, None
    for line in text.splitlines():
        m = re.match(r"^[0-9a-f]+ <(.+)>:$", line)
        if m:
            cur = m[1]
            order.append(cur)
            res[cur] = []
            continue
        if cur is None or not line.strip():
            continue
        m = re.match(r"^\s+[0-9a-f]+:\s+(.*)$", line)
        if m:
            ins = m[1].strip()
            if ins.startswith("R_"):
                continue  # relocation symbol names differ between extracted and compiled objects
            # Mangled template symbols contain nested '>'; consume the entire
            # annotation, otherwise its tail corrupts branch diagnostics.
            ins = re.sub(r"\s+<.*$", "", ins)
            ins = re.sub(r"^(b\w*)\s+[0-9a-f]+$", r"\1 <addr>", ins)
            res[cur].append(ins)
    if not order or not any(res.values()):
        raise ToolError(f"No function instructions parsed from {obj}; cannot report a match.")
    return order, res


def _sections(obj: Path) -> dict[str, bytes]:
    import subprocess
    proc = subprocess.run([str(OBJDUMP), "-s", str(obj)], capture_output=True, text=True)
    if proc.returncode != 0:
        raise ToolError(f"Section dump failed for {obj}: {proc.stderr.strip()}")
    text = proc.stdout
    secs, cur = {}, None
    for line in text.splitlines():
        m = re.match(r"^Contents of section (\S+):", line)
        if m:
            cur = m[1]
            secs[cur] = bytearray()
            continue
        m = re.match(r"^ [0-9a-f]+ ((?:[0-9a-f]{2,8} ?){1,4})", line)
        if cur and m:
            secs[cur] += bytes.fromhex(m[1].replace(" ", ""))
    return {k: bytes(v) for k, v in secs.items()}


@timed_operation("errors")
def errors(r: Runner, unit: str, max_errors: int = 30) -> bool:
    """Compile one unit with up to max_errors diagnostics (the build stops at 1) and print them compactly."""
    import subprocess
    obj = "build\\RSBE01_01\\src\\" + unit.replace("/", "\\") + ".o"
    cmds = subprocess.run([str(NINJA), "-t", "commands", obj], cwd=str(BRAWL), capture_output=True, text=True).stdout
    line = cmds.strip().splitlines()[-1] if cmds.strip() else ""
    if "mwcceppc" not in line:
        raise ToolError(f"No compile command for {unit}. Is it in configure.py and configured?")
    line = re.sub(r"-maxerrors \d+", f"-maxerrors {max_errors}", line)
    line = re.sub(r" -MMD", "", line)
    line = re.sub(r" -o \S+", lambda m: " -o build/RSBE01_01/brawltool_errcheck.o", line)
    out = subprocess.run(line, cwd=str(BRAWL), capture_output=True, text=True, shell=True)
    text = out.stdout + out.stderr
    msgs, cur = [], []
    for l in text.splitlines():
        if l.startswith("#") and "File:" in l:
            continue
        if l.strip().startswith("#") and l.strip() != "#":
            cur.append(l.strip().lstrip("#").rstrip())
            if "Error" in l or "Warning" in l:
                pass
        elif cur:
            msgs.append(cur); cur = []
    if cur:
        msgs.append(cur)
    count = 0
    for m in msgs:
        body = [x for x in m if x and not set(x.strip()) <= set("-^ ")]
        if body:
            count += 1
            r.log(" | ".join(x.strip() for x in body))
    ok = out.returncode == 0
    r.log(("PASS: compiles cleanly" if ok else f"FAIL: {count} diagnostic block(s)"))
    return ok


@timed_operation("diff")
def diff(r: Runner, module: str, unit: str, show: tuple[str, ...] = (), verbose: bool = False) -> bool:
    """Compile the candidate and compare it to the extracted target, function by function."""
    validate_unit(module, unit)
    tgt = BUILD / module / "obj" / (unit + ".o")
    if not is_rel(module):
        tgt = BUILD / "obj" / (unit + ".o")  # main.dol units
    cand = BUILD / "src" / (unit + ".o")
    if not tgt.exists():
        raise ToolError(f"No target object {tgt}. Is the split in place and the build current?")
    r.run([NINJA, str(cand.relative_to(BRAWL))], quiet=True)
    t_order, T = _funcs(tgt)
    c_order, C = _funcs(cand)
    # Pair identical names first, then the rest by position (dtk names vs mangled names).
    pairs, used = {}, set()
    for t in t_order:
        if t in C:
            pairs[t] = t
            used.add(t)
    rest_c = [c for c in c_order if c not in used]
    rest_t = [t for t in t_order if t not in pairs]
    sm = difflib.SequenceMatcher(a=[len(T[t]) for t in rest_t], b=[len(C[c]) for c in rest_c], autojunk=False)
    for tag, i1, i2, j1, j2 in sm.get_opcodes():
        if tag in ("equal", "replace"):
            for a, b in zip(rest_t[i1:i2], rest_c[j1:j2]):
                pairs[a] = b
    same = 0
    rows = []
    for t in t_order:
        c = pairs.get(t)
        ok = c is not None and T[t] == C[c]
        same += ok
        rows.append((ok, t, c))
    for ok, t, c in rows:
        if not ok or verbose:
            r.log(f"{'SAME' if ok else 'DIFF'} {t:<40} {c or '(missing)':<45} {len(T[t])} {len(C[c]) if c else '-'}")
        if c and not ok and (verbose or t in show or c in show):
            for l in difflib.unified_diff(T[t], C[c], "target", "candidate", n=2, lineterm=""):
                r.log("    " + l)
    extra = [c for c in c_order if c not in pairs.values()]
    if extra:
        r.log("Candidate-only functions (often unreferenced weak inlines the linker strips): " + ", ".join(extra))
    ts, cs = _sections(tgt), _sections(cand)
    sec_ok = True
    for sec in (".rodata", ".data", ".bss", ".ctors", ".sdata", ".sdata2"):
        if sec in ts or sec in cs:
            a, b = ts.get(sec, b""), cs.get(sec, b"")
            good = a == b
            sec_ok &= good
            r.log(f"{'SAME' if good else 'DIFF'} section {sec}: target {len(a)} bytes, candidate {len(b)} bytes")
    r.log(f"Instruction diagnostics: {same}/{len(t_order)}. Section contents {'match' if sec_ok else 'differ'}. "
          "Branches/relocations are normalized; BSS size is not covered. This is not byte-match acceptance. "
          "Final word is always the full-REL probe.")
    return same == len(t_order) and sec_ok


# ----------------------------------------------------------------------------- variants
@timed_operation("variants")
def variants(r: Runner, module: str, unit: str, spec: Path, function: str = "") -> list[tuple[int, int, str]]:
    """Try source variants (spec defines VARIANTS = [(name, [(old, new), ...]), ...]) and rank them.

    Each variant is applied to src/<unit>.cpp, compiled and compared; the file is always restored.
    Ranked by (diff lines in `function`, then fewer mismatching functions)."""
    import runpy
    src = BRAWL / "src" / f"{unit}.cpp"
    base = src.read_text(encoding="utf-8")
    table = [("base", [])] + list(runpy.run_path(str(spec))["VARIANTS"])
    results = []
    quiet = Runner(lambda line: None)
    try:
        for name, reps in table:
            text = base
            missing = [o for o, _ in reps if o not in text]
            if missing:
                r.log(f"{name:28s} SKIPPED (pattern not found: {missing[0][:50]!r})")
                continue
            for o, n in reps:
                text = text.replace(o, n)
            src.write_text(text, encoding="utf-8", newline="\n")
            try:
                score = _variant_score(quiet, module, unit, function)
            except ToolError as e:
                r.log(f"{name:28s} BUILD FAILED: {str(e).splitlines()[0][:80]}")
                continue
            results.append((score[0], score[1], name))
            r.log(f"{name:28s} {function or 'all'}: {score[0]} diff lines, functions matching {score[2]}")
    finally:
        src.write_text(base, encoding="utf-8", newline="\n")
    results.sort()
    if results:
        r.log("Best: " + ", ".join(f"{n} ({a})" for a, _, n in results[:3]))
    return results


def _variant_score(r: Runner, module: str, unit: str, function: str) -> tuple[int, int, str]:
    tgt = BUILD / module / "obj" / (unit + ".o")
    cand = BUILD / "src" / (unit + ".o")
    r.run([NINJA, str(cand.relative_to(BRAWL))], quiet=True)
    t_order, T = _funcs(tgt)
    c_order, C = _funcs(cand)
    lines, bad, good = 0, 0, 0
    c_rest = [c for c in c_order if c not in T]
    pairs = {}
    for t in t_order:
        if t in C:
            pairs[t] = t
    rest_t = [t for t in t_order if t not in pairs]
    sm = difflib.SequenceMatcher(a=[len(T[t]) for t in rest_t], b=[len(C[c]) for c in c_rest], autojunk=False)
    for tag, i1, i2, j1, j2 in sm.get_opcodes():
        if tag in ("equal", "replace"):
            pairs.update(zip(rest_t[i1:i2], c_rest[j1:j2]))
    for t in t_order:
        c = pairs.get(t)
        same = c is not None and T[t] == C[c]
        good += same
        bad += not same
        if function and function in (t, c) and c is not None:
            lines = sum(1 for l in difflib.unified_diff(T[t], C[c], lineterm="", n=0) if l[:1] in "+-" and not l.startswith(("---", "+++")))
    if not function:
        lines = bad
    return lines, bad, f"{good}/{len(t_order)}"


# ----------------------------------------------------------------------------- probe
def missing_probe_source_objects(root: Path, module: str, unit: str) -> list[Path]:
    """Find linked source objects needed by the probe that are absent from the build tree."""
    ninja_file = Path(root) / "build.ninja"
    try:
        ninja_text = ninja_file.read_text(encoding="utf-8").replace("$\n", "")
    except OSError as exc:
        raise ToolError(f"Cannot inspect {ninja_file}; configure the checkout before probing.") from exc
    key = f"build build\\RSBE01_01\\{module}\\{module}.plf: link "
    line = next((item for item in ninja_text.splitlines() if item.startswith(key)), None)
    if line is None:
        raise ToolError(f"No link rule for {module} in build.ninja; configure RSBE01_01 before probing.")

    objects = line[len(key):].split(" | ", 1)[0].split()
    target = f"build/RSBE01_01/{module}/obj/{unit}.o".replace("/", "\\")
    candidate = f"build/RSBE01_01/src/{unit}.o".replace("/", "\\")
    if (objects.count(target), objects.count(candidate)) not in ((1, 0), (0, 1)):
        raise ToolError(f"Probe link inputs for {module}/{unit} do not contain exactly one target or source object.")

    source_prefix = "build/RSBE01_01/src/"
    missing = []
    for obj in objects:
        normalized = obj.replace("\\", "/")
        if normalized.startswith(source_prefix) and normalized.endswith(".o") and obj != candidate:
            path = Path(root) / normalized
            if not path.is_file():
                missing.append(path)
    return missing


@timed_operation("probe")
def probe(r: Runner, module: str, unit: str) -> bool:
    validate_unit(module, unit)
    if not is_rel(module):
        raise ToolError(f"{module} is a main.dol library; the full-REL probe only works for REL modules.")
    missing = missing_probe_source_objects(BRAWL, module, unit)
    if missing:
        examples = "\n".join(f"  {path}" for path in missing[:10])
        remainder = f"\n  ... and {len(missing) - 10} more" if len(missing) > 10 else ""
        raise ToolError(f"Full-REL probe for {module} needs {len(missing)} other source object(s) that are missing:\n"
                        f"{examples}{remainder}\nRun a BrawlTool build first to restore them; probe will not build automatically.")
    code, out = r.run([PY, TOOLS / "probe_source_rel.py", module, unit], check=False)
    ok = code == 0 and "Full REL byte match: True" in out
    r.log(("PASS" if ok else "FAIL") + f": full-REL probe for {module} ({unit})")
    return ok


# ----------------------------------------------------------------------------- promote
def review(r: Runner, module: str, unit: str) -> bool:
    """Run local diagnostics/probe once and keep evidence, without promotion or ownership changes."""
    validate_unit(module, unit)
    if not is_rel(module):
        raise ToolError("review needs a REL module with a successful normal build first.")
    stamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%S.%fZ")
    dest = RESEARCH / "evidence/nonmatching" / module / BRAWL.name / (Path(unit).name + "_" + stamp)
    dest.mkdir(parents=True, exist_ok=False)
    meta = {"checkout": str(BRAWL), "head": git(r, "rev-parse", "HEAD"),
            "branch": git(r, "branch", "--show-current"), "module": module, "unit": unit,
            "configured_state": unit_state(unit), "instruction_diagnostics_match": None,
            "instruction_diagnostic_counts": None,
            "full_rel_byte_match": False, "error": None, "sha256": {},
            "note": "Does not promote, verify 127 binaries, claim/release a lease, merge or commit."}
    log_path = dest / "review.log"
    r.log(f"Review running locally; private log: {log_path}")
    failure = None
    with log_path.open("w", encoding="utf-8") as log:
        def record(line: str) -> None:
            counts = re.search(r"Instruction diagnostics: (\d+)/(\d+)", line)
            if counts:
                meta["instruction_diagnostic_counts"] = {"same": int(counts[1]), "total": int(counts[2])}
            log.write(line + "\n")
            log.flush()
        local = Runner(record)
        # Use the same Runner, so GUI Stop/cancellation also reaches this review.
        old_log = r.log
        r.log = record
        try:
            record(json.dumps({k: meta[k] for k in ("checkout", "head", "branch", "unit")}, indent=2))
            meta["instruction_diagnostics_match"] = diff(r, module, unit, verbose=True)
            meta["full_rel_byte_match"] = probe(r, module, unit)
            cmd = [NINJA, "-t", "commands", str(Path("build/RSBE01_01/src") / (unit + ".o"))]
            _, commands = r.run(cmd, quiet=True)
            (dest / "compile_commands.txt").write_text(commands + "\n", encoding="utf-8")
        except (ToolError, OSError) as exc:
            meta["error"] = str(exc)
            failure = exc
        finally:
            r.log = old_log
            paths = [CONFIGURE, VERIFIED, BRAWL / "config/RSBE01_01/config.yml",
                     BRAWL / "config/RSBE01_01/symbols.txt",
                     BRAWL / "config/RSBE01_01/rels" / module / "symbols.txt",
                     BRAWL / "config/RSBE01_01/rels" / module / "splits.txt",
                     BUILD / module / "obj" / (unit + ".o"), BUILD / "src" / (unit + ".o"),
                     BRAWL / "src" / (unit + ".cpp"), BRAWL / "src" / (unit + ".c"),
                     BRAWL / "orig/RSBE01_01/files/module" / (module + ".rel"),
                     BUILD / ("codex_" + module + "_probe") / (module + ".rel")]
            paths += sorted((BRAWL / "include").rglob("*.h"))
            for path in paths:
                if path.is_file():
                    meta["sha256"][str(path.relative_to(BRAWL))] = hashlib.sha256(path.read_bytes()).hexdigest()
            meta["git_status"] = git(local, "status", "--porcelain")
            (dest / "summary.json").write_text(json.dumps(meta, indent=2) + "\n", encoding="utf-8")
    ok = meta["full_rel_byte_match"] and meta["error"] is None
    r.log(f"{'PASS' if ok else 'FAIL'}: {module}/{Path(unit).name} full source REL. Summary: {dest / 'summary.json'}")
    journal(r, "note", f"Local review {module}/{unit}: full source REL {'matches' if ok else 'not accepted'}; "
            f"no promotion. Evidence {dest.relative_to(RESEARCH)}.")
    if failure:
        raise ToolError(f"Review failed: {failure}. Evidence: {dest}") from failure
    return bool(ok)


@timed_operation("promote")
def promote(r: Runner, unit: str, commit_message: Optional[str] = None) -> None:
    """All gates in order; edits configure.py + verified_objects.txt only after the probe passes."""
    validate_unit("main", unit)
    if is_parallel() and commit_message:
        raise ToolError("Automatic broad staging is disabled in worktrees. Commit explicit files manually after promotion.")
    state = unit_state(unit)
    if state != "nonmatching":
        raise ToolError(f"{unit} must be Object(NonMatching, ...) in configure.py (found: {state}).")
    module = module_of(unit)
    if git(r, "status", "--porcelain", "--untracked-files=no", "--", "configure.py", "config/RSBE01_01/verified_objects.txt"):
        r.log("Note: configure.py / verified_objects.txt already have uncommitted edits.")
    r.log(f"Gate 1/4: full-REL probe of {module} with {unit} from source")
    if not probe(r, module, unit):
        raise ToolError("Probe failed: the module is not byte-identical. Not promoted. Use 'diff' to see why.")
    snapshots = {path: path.read_bytes() for path in (CONFIGURE, VERIFIED)}
    c = CONFIGURE.read_text(encoding="utf-8")
    old = f'Object(NonMatching, "{unit}.cpp")'
    if c.count(old) != 1:
        raise ToolError("Promotion expects exactly one canonical C++ Object entry; configure was not changed.")
    c = c.replace(old, f'Object(MatchingFor("RSBE01_01"), "{unit}.cpp")', 1)
    try:
        CONFIGURE.write_text(c, encoding="utf-8", newline="\n")
        v = VERIFIED.read_text(encoding="utf-8")
        if f"{unit}.cpp" not in v.split():
            VERIFIED.write_text(v.rstrip("\n") + f"\n{unit}.cpp\n", encoding="utf-8", newline="\n")
        r.log("Gate 2/4: normal build with the stamp removed")
        build(r)
        r.log("Gate 3/4: independent check against the originals")
        independent_check(r)
        r.log("Gate 4/4: re-probe after promotion")
        if not probe(r, module, unit):
            raise ToolError("Post-promotion probe failed.")
    except BaseException:
        r.log("Rolling back the promotion edits (configure.py, verified_objects.txt).")
        for path, content in snapshots.items():
            path.write_bytes(content)
        raise
    status_page(r, open_it=False)
    journal(r, "verify", f"Promoted {unit} ({module}): full-REL probe byte-identical, 127/127, independent check OK.",
            verified=f"OK: 127/127 with {unit} promoted")
    r.log(f"PROMOTED {unit}. Remember: add a docs/RSBE01_01.md entry (techniques + UB review).")
    if commit_message:
        git(r, "add", "configure.py", "config", "src", "include", "docs")
        git(r, "commit", "-q", "-m", commit_message)
        r.log("Committed: " + git(r, "log", "--oneline", "-1"))


# ----------------------------------------------------------------------------- integrate / cleanup
def _resolve_keep_both(path: Path) -> None:
    s = path.read_text(encoding="utf-8")
    s = re.sub(r"<<<<<<< [^\n]*\n(.*?)=======\n(.*?)>>>>>>> [^\n]*\n",
               lambda m: m.group(1) + ("\n" if path.suffix == ".md" else "") + m.group(2), s, flags=re.S)
    path.write_text(s, encoding="utf-8", newline="\n")


def integrate(r: Runner, branch: str, cleanup_after: bool = False) -> None:
    """Cherry-pick a Codex branch's commits not yet on main, then clean rebuild + probes + independent check."""
    require_main("integrate")
    if git(r, "rev-parse", "--abbrev-ref", "HEAD") != BRANCH:
        raise ToolError(f"Main checkout is not on {BRANCH}.")
    if git(r, "status", "--porcelain", "--untracked-files=no"):
        raise ToolError("Main checkout has uncommitted changes. Commit or stash them first.")
    have = set(git(r, "log", "--format=%s", "-400").splitlines())
    todo = [l.split(" ", 1) for l in git(r, "log", "--reverse", "--format=%h %s", f"HEAD..{branch}").splitlines() if l]
    todo = [(h, s) for h, s in todo if s not in have]
    if not todo:
        r.log(f"Nothing to integrate: every commit on {branch} is already on {BRANCH}.")
    new_units = []
    for h, s in todo:
        r.log(f"Cherry-picking {h} {s}")
        code, _ = r.run(["git", "-C", str(BRAWL), "cherry-pick", h], quiet=True, check=False)
        if code != 0:
            conflicted = git(r, "diff", "--name-only", "--diff-filter=U").splitlines()
            auto = {"docs/RSBE01_01.md", "config/RSBE01_01/verified_objects.txt"}
            if conflicted and set(conflicted) <= auto:
                for f in conflicted:
                    _resolve_keep_both(BRAWL / f)
                git(r, "add", *conflicted)
                r.run(["git", "-C", str(BRAWL), "-c", "core.editor=true", "cherry-pick", "--continue"], quiet=True)
                r.log("  resolved docs/allowlist conflict by keeping both sides")
            else:
                git(r, "cherry-pick", "--abort", check=False)
                raise ToolError(f"Conflict in {conflicted} while picking {h}; aborted that pick. Resolve by hand.")
        diffp = git(r, "show", "--format=", "-U0", "HEAD", "--", "configure.py")
        added = "\n".join(l for l in diffp.splitlines() if l.startswith("+"))
        removed = "\n".join(l for l in diffp.splitlines() if l.startswith("-"))
        before = set(re.findall(r'Object\(MatchingFor\("RSBE01_01"\), "([^"]+)\.cpp"', removed))
        new_units += [u for u in re.findall(r'Object\(MatchingFor\("RSBE01_01"\), "([^"]+)\.cpp"', added) if u not in before]
    if todo:
        r.log("Clean rebuild of all source objects")
        build(r, clean=True)
        independent_check(r)
        for u in sorted(set(new_units)) + ["mo_stage/st_heal/st_heal"]:
            if unit_state(u) == "matching" and not probe(r, module_of(u), u):
                raise ToolError(f"Probe failed for {u} after integration. The cherry-picks are committed; investigate.")
        status_page(r, open_it=False)
        journal(r, "verify", f"Integrated {len(todo)} commit(s) from {branch}: clean rebuild 127/127, independent OK, "
                f"probes OK for {', '.join(sorted(set(new_units))) or 'n/a'}.", verified="OK: 127/127 after integration")
        r.log(f"INTEGRATED {len(todo)} commit(s). HEAD {git(r, 'log', '--oneline', '-1')}")
    if cleanup_after:
        cleanup(r, branch)


def cleanup(r: Runner, branch: str) -> None:
    """Remove the worktree of a fully integrated branch, after the safety checks (branch is kept)."""
    require_main("cleanup")
    wt = None
    for block in git(r, "worktree", "list", "--porcelain").split("\n\n"):
        if f"branch refs/heads/{branch}" in block:
            wt = Path(block.splitlines()[0].split(" ", 1)[1])
    if wt is None:
        r.log(f"No worktree for {branch}; nothing to remove.")
        return
    if wt.resolve() == BRAWL.resolve():
        raise ToolError("Refusing to remove the main checkout.")
    if r.run(["git", "-C", str(wt), "status", "--porcelain"], quiet=True)[1].strip():
        raise ToolError(f"{wt} has uncommitted changes; not removing.")
    have = set(git(r, "log", "--format=%s", "-600").splitlines())
    missing = [l for l in git(r, "log", "--format=%s", f"{BRANCH}..{branch}").splitlines() if l and l not in have]
    if missing:
        raise ToolError(f"{branch} has commits not on {BRANCH}: {missing[:3]}; not removing.")
    code_diff = git(r, "diff", "--stat", branch, BRANCH, "--", "src", "include", "config", "configure.py")
    if code_diff:
        r.log("Note: code differs between the branch and main (expected only if main has newer work):\n" + code_diff)
    code, links = r.run(["cmd", "/c", "dir", "/AL", "/S", "/B", str(wt)], quiet=True, check=False)
    if links.strip() and "File Not Found" not in links:
        raise ToolError(f"{wt} contains links/junctions; not removing:\n{links[:500]}")
    if (wt / "orig").exists() and (wt / "orig").is_symlink():
        raise ToolError("orig/ in the worktree is a link; not removing.")
    git(r, "worktree", "remove", "--force", str(wt))
    git(r, "worktree", "prune")
    dol = BRAWL / "orig" / "RSBE01_01" / "sys" / "main.dol"
    if hashlib.sha1(dol.read_bytes()).hexdigest() != MAIN_DOL_SHA1:
        raise ToolError("Original main.dol hash changed after cleanup! Investigate.")
    journal(r, "note", f"Removed integrated worktree {wt} ({branch}) after checks; branch kept; originals unchanged.")
    r.log(f"REMOVED worktree {wt}. Branch {branch} kept. Originals unchanged.")


# ----------------------------------------------------------------------------- autopilot
def _pending_branches(r: Runner) -> list[tuple[str, int]]:
    have = set(git(r, "log", "--format=%s", "-600").splitlines())
    out = []
    for b in git(r, "branch", "--list", "codex/*", "--format=%(refname:short)").splitlines():
        subs = [l for l in git(r, "log", "--format=%s", f"HEAD..{b}").splitlines() if l and l not in have]
        if subs:
            out.append((b, len(subs)))
    return out


def autopilot(r: Runner, dry_run: bool = False, do_integrate: bool = True, do_promote: bool = True) -> None:
    """The routine loop, in the same order a session would run it. Never writes matching code."""
    require_main("autopilot (use review for worktree diagnostics)")
    summary: list[str] = []
    r.log("Step 1/5: preflight")
    if git(r, "rev-parse", "--abbrev-ref", "HEAD") != BRANCH:
        raise ToolError(f"Main checkout is not on {BRANCH}.")
    dirty = git(r, "status", "--porcelain", "--untracked-files=no")
    if dirty:
        raise ToolError("Main checkout has uncommitted changes (someone may be working). Commit or stash first:\n" + dirty)
    branches = _pending_branches(r)
    wip = [(m, u) for st, m, u, ours in list_units() if st == "in progress" and ours]
    r.log("  Codex branches with new commits: " + (", ".join(f"{b} ({n})" for b, n in branches) or "none"))
    r.log(f"  Our in-progress TUs to re-check: {len(wip)}")
    if dry_run:
        r.log("PLAN (dry run, nothing changed):")
        r.log("  1. claim the handoff lease as 'tool', build 127/127")
        for b, n in branches:
            r.log(f"  2. integrate {b}: cherry-pick {n} commit(s), clean rebuild, independent check, probes")
        for m, u in wip:
            r.log(f"  3. diff + probe {u} ({m}); promote and commit if byte-identical")
        r.log("  4. refresh status page   5. summary + journal, release lease")
        return
    claimed = False
    if HANDOFF.exists():
        code, out = r.run([PY, HANDOFF, "claim", "tool", "autopilot run", "--hours", "2"], cwd=RESEARCH, quiet=True, check=False)
        if code != 0:
            raise ToolError("Could not claim the handoff lease (another agent is active?):\n" + out[-400:])
        claimed = True
    try:
        build(r)
        summary.append("Preflight build: 127/127")
        if do_integrate and branches:
            r.log("Step 2/5: integrate Codex branches")
            for b, n in branches:
                integrate(r, b)
                summary.append(f"Integrated {n} commit(s) from {b}")
            summary.append("Worktrees were NOT removed (Codex may still use them); use 'Clean up worktree' when Codex is done.")
        elif not do_integrate:
            r.log("Step 2/5: integration skipped (--no-integrate)" + (f"; pending: {', '.join(b for b, _ in branches)}" if branches else ""))
        else:
            r.log("Step 2/5: no Codex branches to integrate")
        r.log("Step 3/5: re-check our in-progress TUs")
        wip = [(m, u) for st, m, u, ours in list_units() if st == "in progress" and ours]  # refreshed after integration
        promoted = []
        for m, u in wip:
            try:
                diff(r, m, u)
            except ToolError as e:
                r.log(f"  {u}: diff unavailable ({e})")
                continue
            if not is_rel(m):
                r.log(f"  {u}: main.dol unit; the full-REL probe does not apply. Promote by hand once 'diff' is clean.")
                continue
            if do_promote and probe(r, m, u):
                msg = (f"feat: match {Path(u).name} ({m}) for RSBE01_01\n\nPromoted by BrawlTool autopilot after the full-REL "
                       "probe, 127/127 and the independent check. docs/RSBE01_01.md entry pending.")
                promote(r, u, commit_message=msg)
                promoted.append(u)
        summary.append("Promoted: " + (", ".join(promoted) or "none") + " (docs entries pending for any promoted TU)")
        r.log("Step 4/5: status page")
        status_page(r, open_it=False)
        r.log("Step 5/5: summary")
        rows = list_units()
        left = [u for st, m, u, ours in rows if st == "in progress" and ours]
        summary.append("Still in progress (ours): " + (", ".join(Path(u).name for u in left) or "none"))
        summary.append("HEAD: " + git(r, "log", "--oneline", "-1"))
        journal(r, "verify", *summary, verified=f"OK: 127/127 at {git(r, 'rev-parse', '--short', 'HEAD')} (autopilot)")
        busy = {m for st, m, _, o in rows if o and st == "in progress"}
        r.log("Next candidates (excluding modules with our work in progress):")
        rank(r, exclude=tuple(sorted(busy)), top=8)
        r.log("AUTOPILOT DONE:")
        for line in summary:
            r.log("  - " + line)
    finally:
        if claimed:
            r.run([PY, HANDOFF, "release", "tool", "-m", "autopilot finished", "--next", "see last tool entry"],
                  cwd=RESEARCH, quiet=True, check=False)
