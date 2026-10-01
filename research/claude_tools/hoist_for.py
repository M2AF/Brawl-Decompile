# hoist_for.py: rewrite `for (T a = x, b = y; cond; inc) {...}` as `{ T a = x; T b = y; for (; cond; inc) {...} }`.
# Same declaration order and scope; avoids decomp-permuter's randomizer crash on for-init declarations.
import re
PAT = re.compile(r"for \((u8|s16|int|s32|u32) (\w+) = ([^,;]+), (\w+) = ([^;]+); ([^;]+); ([^)]+)\) \{")
def hoist(src):
    while True:
        m = PAT.search(src)
        if not m: return src
        t, a, x, b, y, cond, inc = m.groups()
        depth, i = 1, m.end()
        while depth:
            depth += {"{": 1, "}": -1}.get(src[i], 0); i += 1
        src = src[:m.start()] + f"{{ {t} {a} = {x}; {t} {b} = {y}; for (; {cond}; {inc}) {{" + src[m.end():i] + " }" + src[i:]
if __name__ == "__main__":
    import sys
    p = sys.argv[1]; print(hoist(open(p, encoding="utf-8").read()), end="")
