import collections
import glob
import os
import re

mods = collections.defaultdict(lambda: [0, set(), 0])
for f in glob.glob("build/RSBE01_01/*/asm/auto_*_text.s"):
    mod = os.path.normpath(f).split(os.sep)[2]
    s = open(f).read()
    fns = set(re.findall(r"^\.fn (\S+),", s, re.M))
    size = int(re.search(r"# 0x([0-9A-F]+)\.\.0x([0-9A-F]+) \| size: 0x([0-9A-F]+)", s)[3], 16)
    calls = set(re.findall(r"\bbl (\S+)", s))
    un = set(c for c in calls if re.match(r"fn_[0-9A-F]{8}$", c))
    mods[mod][0] += size
    mods[mod][1] |= un
    mods[mod][2] += len(fns)
rows = sorted(mods.items(), key=lambda x: (len(x[1][1]), x[1][0]))
for m, (sz, un, n) in rows[:30]:
    print(m, hex(sz), n, len(un), sorted(un)[:6])
