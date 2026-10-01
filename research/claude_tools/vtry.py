# vtry.py <unit> <symbol> <variants.py> [show-name]
# variants.py defines: START (marker text of function start), END (marker of next item), variants = {name: full function text}
import subprocess, sys
from pathlib import Path
SP = Path(__file__).parent
ROOT = Path(r"C:\Users\balla\Documents\Brawl Decompile\brawl")
unit, sym, vfile = sys.argv[1:4]
show = sys.argv[4] if len(sys.argv) > 4 else None
SRC = ROOT / "src" / (unit + ".cpp")
orig = SRC.read_text()
ns = {}
exec(Path(vfile).read_text(), ns)
start = orig.index(ns["START"]); end = orig.index(ns["END"], start + 1) if ns.get("END") else len(orig)
try:
    for name, body in ns["variants"].items():
        SRC.write_text(orig[:start] + body.strip("\n") + "\n\n" + orig[end:], newline="\n")
        out = subprocess.run([sys.executable, str(SP / "fdiff.py"), unit, sym], capture_output=True, text=True).stdout
        n = len([l for l in out.splitlines() if l[:1] in "+-" and not l.startswith(("+++", "---"))])
        print(f"{name}: {'MATCH' if ': MATCH' in out else str(n) + ' diff lines'}")
        if show == name or (show == "all"): print(out)
finally:
    SRC.write_text(orig, newline="\n")
