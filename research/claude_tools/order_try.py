# order_try.py <src.cpp> <obj.o> : print emitted function order for the current source
import subprocess
import sys
from pathlib import Path

ROOT = Path(r"C:\Users\balla\Documents\Brawl Decompile\brawl")
NINJA = r"C:\Users\balla\Documents\Brawl Decompile\.venv\Scripts\ninja.exe"
NM = str(ROOT / "build" / "binutils" / "powerpc-eabi-nm.exe")


def emitted(obj: str) -> list:
    r = subprocess.run([NINJA, obj.replace("/", "\\")], cwd=ROOT, capture_output=True, text=True)
    if r.returncode:
        return ["COMPILE FAILED: " + r.stdout[-500:]]
    out = subprocess.run([NM, "-n", str(ROOT / obj)], capture_output=True, text=True).stdout
    names = []
    for line in out.splitlines():
        parts = line.split()
        if len(parts) == 3 and parts[1] in "TtWw":
            names.append(parts[2])
    return names


if __name__ == "__main__":
    for n in emitted(sys.argv[1]):
        print(n)
