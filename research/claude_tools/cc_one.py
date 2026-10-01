# cc_one.py <unit> <symbol> [flags...]: compile with extra flags, print diff of one symbol
import importlib.util, re, subprocess, sys, difflib
from pathlib import Path
unit, sym, extra = sys.argv[1], sys.argv[2], sys.argv[3:]
ROOT = Path(r"C:\Users\balla\Documents\Brawl Decompile\brawl"); SP = Path(__file__).parent
BS = "\\"
spec = importlib.util.spec_from_file_location("fd", SP / "fdlib.py"); fd = importlib.util.module_from_spec(spec); spec.loader.exec_module(fd)
obj = "build" + BS + "RSBE01_01" + BS + "src" + BS + unit.replace("/", BS) + ".o"
cmd = subprocess.run([r"C:\Users\balla\Documents\Brawl Decompile\.venv\Scripts\ninja.exe", "-t", "commands", obj], cwd=ROOT, capture_output=True, text=True).stdout.strip().splitlines()[-1]
out = SP / "cc_out.o"
c = re.sub(r"-MMD\s+", "", cmd); c = re.sub(r" -o \S+", lambda m: ' -o "' + str(out) + '"', c)
c = c.replace(" -lang=c++", " " + " ".join(extra) + " -lang=c++")
r = subprocess.run(c, cwd=ROOT, capture_output=True, text=True, shell=True)
if r.returncode: print(r.stdout); sys.exit(1)
a = fd.funcs(ROOT / "build/RSBE01_01/obj" / (unit + ".o"))[sym]; b = fd.funcs(out)[sym]
d = [l for l in difflib.unified_diff(a, b, "target", "cand", n=1, lineterm="")]
print("MATCH" if a == b else "\n".join(d))
