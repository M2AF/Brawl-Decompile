"""Private pre-promotion full-REL source probe; run from the brawl checkout.

Usage: python ../research/claude_tools/probe_source_rel.py MODULE UNIT_WITHOUT_CPP
Does not change configure.py, original files, or the promotion allowlist.
Requires a successful normal build and a separately compiled candidate object.
"""
import hashlib
import json
from pathlib import Path
import subprocess
import sys

root = Path.cwd().resolve()
module, unit = sys.argv[1:]
build = root / "build/RSBE01_01"
probe = build / ("codex_" + module + "_probe")
probe.mkdir(exist_ok=True)
config = json.loads((build / "config.json").read_text())
ninja = (root / "build.ninja").read_text().replace("$\n", "")
key = f"build build\\RSBE01_01\\{module}\\{module}.plf: link "
line = next(line for line in ninja.splitlines() if line.startswith(key))
objects = line[len(key):].split(" | ")[0].split()
target = f"build/RSBE01_01/{module}/obj/{unit}.o".replace("/", "\\")
candidate = f"build/RSBE01_01/src/{unit}.o".replace("/", "\\")
assert (objects.count(target), objects.count(candidate)) in ((1, 0), (0, 1)), "Need exactly one extracted or already-promoted candidate input"
# Never probe a stale object left behind by a failed source compile.
with (probe / "compile.log").open("w") as log:
    subprocess.run([str(root.parent / ".venv/Scripts/ninja.exe"), candidate],
                   check=True, stdout=log, stderr=subprocess.STDOUT)
assert (root / candidate).is_file(), "Candidate compile produced no object"
objects = [candidate if obj == target else obj for obj in objects]
rsp = probe / "source.rsp"
rsp.write_text("\n".join(objects) + "\n")
plf = probe / (module + ".plf")
link = [str(root / "build/compilers/GC/3.0a5.2/mwldeppc.exe"),
        "-fp", "hardware", "-nodefaults", "-sdata", "0", "-sdata2", "0",
        "-r1", "-lcf", str(build / module / "ldscript.lcf"),
        "-m", "_prolog", "-strip_partial", "-o", str(plf), "@" + str(rsp)]
with (probe / "link.log").open("w") as log:
    subprocess.run(link, check=True, stdout=log, stderr=subprocess.STDOUT)
files = [str(build / "main.elf")]
files += [str(plf if mod["name"] == module else
              build / mod["name"] / (mod["name"] + ".plf"))
          for mod in config["modules"]]
rel = [str(root / "build/tools/dtk.exe"), "rel", "make", "-w", "-c",
       "config/RSBE01_01/config.yml", *files]
with (probe / "rel.log").open("w") as log:
    subprocess.run(rel, check=True, stdout=log, stderr=subprocess.STDOUT)
original = root / "orig/RSBE01_01/files/module" / (module + ".rel")
output = probe / (module + ".rel")
a, b = original.read_bytes(), output.read_bytes()
print("Original:", len(a), hashlib.sha1(a).hexdigest())
print("Source probe:", len(b), hashlib.sha1(b).hexdigest())
print("Full REL byte match:", a == b)
if a != b:
    print("First differing byte:", next((hex(i) for i, (x, y) in
                                          enumerate(zip(a, b)) if x != y),
                                         "length only"))
    sys.exit(1)
