# mk_compile.py <unit> <outdir>: write <outdir>/compile.sh using the project's exact compile command for <unit>
import re
import subprocess
import sys
from pathlib import Path

unit, outdir = sys.argv[1], Path(sys.argv[2])
ROOT = Path(r"C:\Users\balla\Documents\Brawl Decompile\brawl")
NINJA = r"C:\Users\balla\Documents\Brawl Decompile\.venv\Scripts\ninja.exe"
obj = "build\\RSBE01_01\\src\\" + unit.replace("/", "\\") + ".o"
cmd = subprocess.run([NINJA, "-t", "commands", obj], cwd=ROOT, capture_output=True, text=True).stdout.strip().splitlines()[-1]
# Drop depfile, source and output arguments; keep compiler and flags.
cmd = re.sub(r" -MMD\b.*$", "", cmd)
cmd = re.sub(r" -c \S+", "", cmd)
cmd = re.sub(r" -o \S+", "", cmd)
cmd = cmd.replace("\\", "/")
script = f"""#!/bin/bash
# Project compile flags for {unit}. Input is compiled as C++ despite the .c suffix.
cd "/c/Users/balla/Documents/Brawl Decompile/brawl"
IN=$(cygpath -w "$1")
OUT=$(cygpath -w "$3")
{cmd} -lang=c++ -c "$IN" -o "$OUT"
"""
(outdir / "compile.sh").write_text(script, newline="\n")
print(cmd[:400])
