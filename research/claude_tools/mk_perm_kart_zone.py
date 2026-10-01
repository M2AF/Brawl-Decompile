# Builds a permuter input directory for stKart::getZoneLightSetIndex (st_kart.rel).
# Context = the whole TU before the function (preprocessed by mwcceppc -E), the function
# in C-parsable form (identical tokens apart from NULL -> 0), and the extracted original object as target.
import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(r"C:\Users\balla\Documents\Brawl Decompile\brawl")
TOOLS = Path(__file__).parent
D = Path(sys.argv[1]); D.mkdir(parents=True, exist_ok=True)
SP_BIN = Path(sys.argv[2])
UNIT = "mo_stage/st_kart/st_kart"
subprocess.run([sys.executable, str(TOOLS / "mk_compile.py"), UNIT, str(D)], check=True)
cmd = (D / "compile.sh").read_text().splitlines()[-1].split(' -lang=c++ -c "$IN"')[0]
src = (ROOT / "src" / (UNIT + ".cpp")).read_text()
start = src.index("int stKart::getZoneLightSetIndex(Vec3f* pos) {")
end = src.index("\n}\n", start) + 3
before, body = src[:start], src[start:end]
cs = before.index("static inline float clamp(float value, float min, float max) {")
ce = before.index("\n}\n", cs) + 3
clamp_src = before[cs:ce].replace("nw4r::math::FSelect", "FSelect")
before = before[:cs] + before[ce:]
assert src[end:].strip() == "", "function must be last in the TU"
(D / "pre.cpp").write_text(before, newline="\n")
pp = subprocess.run(["bash", "-c", f'cd "{ROOT.as_posix()}" && {cmd} -lang=c++ -E "$(cygpath -w "$0")"', str(D / "pre.cpp")], capture_output=True, text=True)
if pp.returncode: sys.exit(pp.stdout + pp.stderr)
body = body.replace("int stKart::getZoneLightSetIndex(", "int getZoneLightSetIndex(").replace("pos == NULL", "pos == 0")
pretend = """
typedef struct Vec3f { float m_x; float m_y; float m_z; } Vec3f;
float FSelect(float value, float ge_zero, float lt_zero);
"""
(D / "base.c").write_text(
    "PERM_IGNORE(\n" + pp.stdout + "\nusing nw4r::math::FSelect;\n#define getZoneLightSetIndex stKart::getZoneLightSetIndex\n)\nPERM_PRETEND(" + pretend + ")\n"
    + clamp_src.replace("nw4r::math::", "") + "\n" + body,
    newline="\n")
shutil.copy(ROOT / "build/RSBE01_01/st_kart/obj" / (UNIT + ".o"), D / "target.o")
(D / "settings.toml").write_text('func_name = "getZoneLightSetIndex"\ncompiler_type = "mwcc"\n'
    f'objdump_command = "{(SP_BIN / "powerpc-eabi-objdump.exe").as_posix()} -dr -EB -mpowerpc -M broadway"\n', newline="\n")
print("ok", D)
