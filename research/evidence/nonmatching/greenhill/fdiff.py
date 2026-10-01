#!/usr/bin/env python3
# Usage: fdiff.py <unit path w/o ext, e.g. sora/cm/cm_controller_menu_fixed> [symbol...]
# Rebuilds the candidate object and diffs per-function disassembly vs the target object.
import re, subprocess, sys, difflib
from pathlib import Path

ROOT = Path.cwd().resolve()
OBJDUMP = ROOT / "build/binutils/powerpc-eabi-objdump.exe"
NINJA = Path(r"C:\Users\balla\Documents\Brawl Decompile\.venv\Scripts\ninja.exe")
unit = sys.argv[1]
module = "RSBE01_01"
import os
mod = os.environ.get("MOD", module)
tgt = ROOT / (f"build/{module}/obj/{unit}.o" if mod == module else f"build/{module}/{mod}/obj/{unit}.o")
cand = ROOT / f"build/{module}/src/{unit}.o"
r = subprocess.run([str(NINJA), str(cand.relative_to(ROOT)).replace("/", "\\")], cwd=ROOT, capture_output=True, text=True)
if r.returncode:
    print(r.stdout[-4000:]); sys.exit(1)

def funcs(obj):
    out = subprocess.run([str(OBJDUMP), "-dr", "--no-show-raw-insn", str(obj)], capture_output=True, text=True).stdout
    res = {}; cur = None
    for line in out.splitlines():
        m = re.match(r"^[0-9a-f]+ <(.+)>:$", line)
        if m:
            cur = m[1]; res[cur] = []; continue
        if cur is None or not line.strip(): continue
        m = re.match(r"^\s+([0-9a-f]+):\s+(.*)$", line)
        if m:
            ins = m[2].strip()
            if ins.startswith("R_"):
                ins = re.sub(r"\s(@\d+|lbl_[0-9A-F]+)(\+0x[0-9a-f]+)?$", " <local-const>", ins)
            ins = re.sub(r"\s+<[^>]*>", "", ins)
            ins = re.sub(r"^(b\w*)\s+[0-9a-f]+$", r"\1 <addr>", ins)
            res[cur].append(ins)
        else:
            m = re.match(r"^\s+[0-9a-f]+:\s+(R_\S+)\s+(\S+)", line)
            if m: res[cur].append(f"    reloc {m[1]} " + re.sub(r"^(@\d+|lbl_[0-9A-F]+)(\+0x[0-9a-f]+)?$", "<local-const>", m[2]))
    return res

t = funcs(tgt); c = funcs(cand)
names = sys.argv[2:] or list(t)
for n in names:
    a = t.get(n); b = c.get(n)
    if a is None or b is None:
        print(f"== {n}: target={'yes' if a else 'no'} candidate={'yes' if b else 'no'}"); continue
    if a == b:
        print(f"== {n}: MATCH ({len([x for x in a if not x.startswith('    ')])} insns)")
    else:
        print(f"== {n}: DIFF")
        for l in difflib.unified_diff(a, b, "target", "candidate", n=2, lineterm=""):
            print(l)
print("candidate-only:", [n for n in c if n not in t])
