# cc_try.py <unit> [extra flags...]: compile unit with each compiler version (VERS env to limit),
# report per-function match against the target object.
import importlib.util
import os
import re
import subprocess
import sys
from pathlib import Path

unit, extra = sys.argv[1], sys.argv[2:]
ROOT = Path(r"C:\Users\balla\Documents\Brawl Decompile\brawl")
SP = Path(__file__).parent
NINJA = r"C:\Users\balla\Documents\Brawl Decompile\.venv\Scripts\ninja.exe"
BS = "\\"
spec = importlib.util.spec_from_file_location("fd", SP / "fdlib.py")
fd = importlib.util.module_from_spec(spec)
spec.loader.exec_module(fd)

obj = "build" + BS + "RSBE01_01" + BS + "src" + BS + unit.replace("/", BS) + ".o"
cmd = subprocess.run([NINJA, "-t", "commands", obj], cwd=ROOT, capture_output=True, text=True).stdout.strip().splitlines()[-1]
tgt = fd.funcs(ROOT / "build" / "RSBE01_01" / "obj" / (unit + ".o"))
vers = os.environ.get("VERS", "").split()
if not vers:
    vers = ["GC/" + v for v in os.listdir(ROOT / "build/compilers/GC")] + ["Wii/" + v for v in os.listdir(ROOT / "build/compilers/Wii")]
default_cc = "build" + BS + "compilers" + BS + "GC" + BS + "3.0a5.2" + BS
print("target funcs:", " ".join(tgt))
for v in vers:
    out = SP / "cc_out.o"
    if out.exists():
        out.unlink()
    c = cmd.replace(default_cc, "build" + BS + "compilers" + BS + v.replace("/", BS) + BS)
    c = re.sub(r"-MMD\s+", "", c)
    c = re.sub(r" -o \S+", lambda m: ' -o "' + str(out) + '"', c)
    if extra:
        c = c.replace(" -lang=c++", " " + " ".join(extra) + " -lang=c++")
    r = subprocess.run(c, cwd=ROOT, capture_output=True, text=True, shell=True)
    if r.returncode or not out.exists():
        print(f"{v}: compile failed {r.stdout[-200:]}")
        continue
    cand = fd.funcs(out)
    res = []
    for n, a in tgt.items():
        b = cand.get(n)
        res.append("=" if a == b else ("?" if b is None else "x"))
    print(f"{v}: {''.join(res)}  ({res.count('=')}/{len(res)})")
