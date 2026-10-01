"""brawltool operations. Every function takes a Runner and logs through it; gates raise ToolError."""
from __future__ import annotations

import difflib
import hashlib
import json
import re
import shutil
import webbrowser
from collections import defaultdict
from pathlib import Path
from typing import Optional

from .common import (BRAWL, BRANCH, BUILD, DRAFTS, DTK, HANDOFF, M2C, MAIN_DOL_SHA1, NINJA, OBJDUMP, PY, RESEARCH, TOOLS,
                     WS, Runner, ToolError, git, journal)

CONFIGURE = BRAWL / "configure.py"
VERIFIED = BRAWL / "config" / "RSBE01_01" / "verified_objects.txt"
STATUS_HTML = RESEARCH / "status" / "brawl_status.html"


# ----------------------------------------------------------------------------- build & verify
def build(r: Runner, clean: bool = False) -> None:
    """configure + remove the stamp + ninja; must print OK: 127/127."""
    if clean:
        src = BUILD / "src"
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
    r.run([PY, TOOLS / "mk_status_page.py"])
    if open_it:
        webbrowser.open(STATUS_HTML.as_uri())


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


# ----------------------------------------------------------------------------- draft (m2c)
def draft(r: Runner, module: str, unit: str, functions: tuple[str, ...] = ()) -> Path:
    """Run m2c on the unit's split assembly (or an auto_ chunk name) and save a C draft."""
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
    _, out = r.run(cmd, quiet=True, check=False)
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
    text = subprocess.run([str(OBJDUMP), "-dr", "--no-show-raw-insn", str(obj)], capture_output=True, text=True).stdout
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
            ins = re.sub(r"\s+<[^>]*>", "", ins)
            ins = re.sub(r"^(b\w*)\s+[0-9a-f]+$", r"\1 <addr>", ins)
            res[cur].append(ins)
    return order, res


def _sections(obj: Path) -> dict[str, bytes]:
    import subprocess
    text = subprocess.run([str(OBJDUMP), "-s", str(obj)], capture_output=True, text=True).stdout
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


def diff(r: Runner, module: str, unit: str, show: tuple[str, ...] = (), verbose: bool = False) -> bool:
    """Compile the candidate and compare it to the extracted target, function by function."""
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
    r.log(f"Functions matching: {same}/{len(t_order)}. Sections {'match' if sec_ok else 'differ'}. "
          "Final word is always the full-REL probe.")
    return same == len(t_order) and sec_ok


# ----------------------------------------------------------------------------- probe
def probe(r: Runner, module: str, unit: str) -> bool:
    if not is_rel(module):
        raise ToolError(f"{module} is a main.dol library; the full-REL probe only works for REL modules.")
    code, out = r.run([PY, TOOLS / "probe_source_rel.py", module, unit], check=False)
    ok = "Full REL byte match: True" in out
    r.log(("PASS" if ok else "FAIL") + f": full-REL probe for {module} ({unit})")
    return ok


# ----------------------------------------------------------------------------- promote
def promote(r: Runner, unit: str, commit_message: Optional[str] = None) -> None:
    """All gates in order; edits configure.py + verified_objects.txt only after the probe passes."""
    state = unit_state(unit)
    if state != "nonmatching":
        raise ToolError(f"{unit} must be Object(NonMatching, ...) in configure.py (found: {state}).")
    module = module_of(unit)
    if git(r, "status", "--porcelain", "--untracked-files=no", "--", "configure.py", "config/RSBE01_01/verified_objects.txt"):
        r.log("Note: configure.py / verified_objects.txt already have uncommitted edits.")
    r.log(f"Gate 1/4: full-REL probe of {module} with {unit} from source")
    if not probe(r, module, unit):
        raise ToolError("Probe failed: the module is not byte-identical. Not promoted. Use 'diff' to see why.")
    c = CONFIGURE.read_text(encoding="utf-8")
    c = c.replace(f'Object(NonMatching, "{unit}.cpp")', f'Object(MatchingFor("RSBE01_01"), "{unit}.cpp")', 1)
    CONFIGURE.write_text(c, encoding="utf-8", newline="\n")
    v = VERIFIED.read_text(encoding="utf-8")
    if f"{unit}.cpp" not in v.split():
        VERIFIED.write_text(v.rstrip("\n") + f"\n{unit}.cpp\n", encoding="utf-8", newline="\n")
    try:
        r.log("Gate 2/4: normal build with the stamp removed")
        build(r)
        r.log("Gate 3/4: independent check against the originals")
        independent_check(r)
        r.log("Gate 4/4: re-probe after promotion")
        if not probe(r, module, unit):
            raise ToolError("Post-promotion probe failed.")
    except ToolError:
        r.log("Rolling back the promotion edits (configure.py, verified_objects.txt).")
        git(r, "checkout", "--", "configure.py", "config/RSBE01_01/verified_objects.txt", check=False)
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
        new_units += re.findall(r'^\+.*?Object\(MatchingFor\("RSBE01_01"\), "([^"]+)\.cpp"', diffp, re.M)
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
