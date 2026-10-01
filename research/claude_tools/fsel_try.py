import subprocess, sys
VARS = {
"regret_noregparams": """static inline float fsel(float value, float ge, float lt) {
    register float ret;
    asm { fsel ret, value, ge, lt }
    return ret;
}
""",
"inplace": """static inline float fsel(register float value, register float ge, register float lt) {
    asm { fsel value, value, ge, lt }
    return value;
}
""",
"ge_out": """static inline float fsel(register float value, register float ge, register float lt) {
    asm { fsel ge, value, ge, lt }
    return ge;
}
""",
}
base = open("../st_battle.bak").read()
a = base.index("static inline float clamp(float value, float min, float max) {")
b = base.index("}\n", a) + 2
clamp = """static inline float clamp(float value, float min, float max) {
    float lower = fsel(value - min, value, min);
    return fsel(lower - max, max, lower);
}
"""
for k, v in VARS.items():
    s = base[:a] + v + "\n" + clamp + base[b:]
    open("src/mo_stage/st_battle/st_battle.cpp", "w", newline="\n").write(s)
    out = subprocess.run([sys.executable, r"C:/Users/balla/AppData/Local/Temp/claude/C--Users-balla-Documents-Brawl-Decompile/7bc8fa43-f13b-42c3-b039-71040809bd6c/scratchpad/fdiff.py", "mo_stage/st_battle/st_battle", "update__13stBattleFieldFf"], capture_output=True, text=True, env={**__import__("os").environ, "MOD": "st_battle"}).stdout
    n = len([l for l in out.splitlines() if l[:1] in "+-" and l[1:2].isalpha()])
    print(k, "MATCH" if ": MATCH" in out else n, out[:300] if "FAILED" in out or "Error" in out else "")
open("src/mo_stage/st_battle/st_battle.cpp", "w", newline="\n").write(base)
