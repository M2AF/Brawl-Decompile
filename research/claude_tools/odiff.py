# odiff.py <module> <unit> [-v]: compare target vs candidate objects function-by-function in section order
# (names may differ; pairs by position), and compare data sections byte-for-byte ignoring relocations.
import importlib.util
import re
import subprocess
import sys
import difflib
from pathlib import Path

ROOT = Path(r"C:\Users\balla\Documents\Brawl Decompile\brawl")
SP = Path(__file__).parent
OBJDUMP = ROOT / "build/binutils/powerpc-eabi-objdump.exe"
NINJA = r"C:\Users\balla\Documents\Brawl Decompile\.venv\Scripts\ninja.exe"
mod, unit = sys.argv[1], sys.argv[2]
verbose = "-v" in sys.argv
BS = "\\"
tgt = ROOT / "build" / "RSBE01_01" / mod / "obj" / (unit + ".o")
cand = ROOT / "build" / "RSBE01_01" / "src" / (unit + ".o")
r = subprocess.run([NINJA, str(cand.relative_to(ROOT)).replace("/", BS)], cwd=ROOT, capture_output=True, text=True)
if r.returncode:
    print(r.stdout[-3000:])
    sys.exit(1)


def funcs(obj):
    out = subprocess.run([str(OBJDUMP), "-dr", "--no-show-raw-insn", "-j", ".text", str(obj)], capture_output=True, text=True).stdout
    res = []
    cur = None
    for line in out.splitlines():
        m = re.match(r"^([0-9a-f]+) <(.+)>:$", line)
        if m:
            cur = [m[2], []]
            res.append(cur)
            continue
        if cur is None or not line.strip():
            continue
        m = re.match(r"^\s+([0-9a-f]+):\s+(.*)$", line)
        if m:
            ins = m[2].strip()
            if ins.startswith("R_"):
                ins = re.sub(r"\s(@\d+|lbl_\w+|fn_\w+|\.\w+)(\+0x[0-9a-f]+)?$", " <sym>", ins)
            ins = re.sub(r"\s+<[^>]*>", "", ins)
            ins = re.sub(r"^(b\w*)\s+[0-9a-f]+$", r"\1 <addr>", ins)
            cur[1].append(ins)
    return res


t = funcs(tgt)
import os
skip = set(os.environ.get("SKIP", "").split())
c = [f for f in funcs(cand) if f[0] not in skip]
print(f"target {len(t)} funcs, candidate {len(c)} funcs")
for i in range(max(len(t), len(c))):
    a = t[i] if i < len(t) else ["-", []]
    b = c[i] if i < len(c) else ["-", []]
    same = a[1] == b[1]
    print(f"{'MATCH' if same else 'DIFF '} {a[0]:<28} {b[0]}")
    if not same and verbose:
        for l in difflib.unified_diff(a[1], b[1], "target", "cand", n=1, lineterm=""):
            print("    " + l)


def sect(obj, name):
    out = subprocess.run([str(OBJDUMP), "-s", "-j", name, str(obj)], capture_output=True, text=True).stdout
    data = b""
    for line in out.splitlines():
        m = re.match(r"^ ([0-9a-f]{4,}) ((?:[0-9a-f]{2,8} ?){1,4})", line)
        if m:
            data += bytes.fromhex(m[2].replace(" ", ""))
    return data


for s in [".data", ".rodata", ".bss", ".ctors", ".sdata", ".sdata2"]:
    a, b = sect(tgt, s), sect(cand, s)
    if a or b:
        print(f"{s}: target {len(a)} bytes, candidate {len(b)} bytes, {'same bytes' if a == b else 'DIFFERENT'}")
