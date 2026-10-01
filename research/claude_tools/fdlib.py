import re, subprocess
from pathlib import Path

OBJDUMP = Path(r"C:\Users\balla\Documents\Brawl Decompile\brawl\build\binutils\powerpc-eabi-objdump.exe")


def funcs(obj):
    out = subprocess.run([str(OBJDUMP), "-dr", "--no-show-raw-insn", str(obj)], capture_output=True, text=True).stdout
    res = {}
    cur = None
    for line in out.splitlines():
        m = re.match(r"^[0-9a-f]+ <(.+)>:$", line)
        if m:
            cur = m[1]
            res[cur] = []
            continue
        if cur is None or not line.strip():
            continue
        m = re.match(r"^\s+([0-9a-f]+):\s+(.*)$", line)
        if m:
            ins = m[2].strip()
            if ins.startswith("R_"):
                ins = re.sub(r"\s(@\d+|lbl_[0-9A-F]+)(\+0x[0-9a-f]+)?$", " <local-const>", ins)
            ins = re.sub(r"\s+<[^>]*>", "", ins)
            ins = re.sub(r"^(b\w*)\s+[0-9a-f]+$", r"\1 <addr>", ins)
            res[cur].append(ins)
    return res
