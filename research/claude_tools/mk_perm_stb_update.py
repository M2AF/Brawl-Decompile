# Builds a permuter input directory for stBattleField::update (st_battle.rel).
# Context = the whole TU (preprocessed by mwcceppc -E), the target function body
# rewritten in C-parsable form, and the extracted original object as target.
import subprocess
import sys
from pathlib import Path

ROOT = Path(r"C:\Users\balla\Documents\Brawl Decompile\brawl")
TOOLS = Path(__file__).parent
D = Path(sys.argv[1])
D.mkdir(parents=True, exist_ok=True)
SP_BIN = Path(sys.argv[2])  # directory holding a space-free powerpc-eabi-objdump.exe
UNIT = "mo_stage/st_battle/st_battle"

subprocess.run([sys.executable, str(TOOLS / "mk_compile.py"), UNIT, str(D)], check=True)
cmd = (D / "compile.sh").read_text().splitlines()[-1].split(' -lang=c++ -c "$IN"')[0]

src = (ROOT / "src" / (UNIT + ".cpp")).read_text()
start = src.index("void stBattleField::update(float deltaFrame) {")
end = src.index("\n}\n", start) + 3
before, after = src[:start], src[end:]

# Preprocess everything before the function (headers + earlier definitions).
(D / "pre.cpp").write_text(
    before
    + "\ntypedef nw4r::g3d::AnmScnRes AnmScnRes;\n"
    + "using nw4r::math::SinIdx;\n"
    + "#define update stBattleField::update\n",
    newline="\n",
)
pp = subprocess.run(
    ["bash", "-c", f'cd "{ROOT.as_posix()}" && {cmd} -lang=c++ -E "$(cygpath -w "$0")"', str(D / "pre.cpp")],
    capture_output=True,
    text=True,
)
if pp.returncode:
    sys.exit(pp.stdout + pp.stderr)
pre = pp.stdout + "\n#define update stBattleField::update\n"

pretend = """
typedef struct stParam { float m_shadowPitch; float m_shadowYaw; char _26[8]; } stParam;
typedef struct AnmScnRes { float (*GetFrame)(void); } AnmScnRes;
typedef struct gfSceneRoot { AnmScnRes* m_anmScnRes; } gfSceneRoot;
extern gfSceneRoot* g_gfSceneRoot;
extern stParam* m_stageParam;
extern char _0xA0[11];
float clamp(float value, float min, float max);
float SinIdx(float idx);
"""

body = """void update(float deltaFrame) {
    stParam* param = m_stageParam;
    if (param != 0) {
        float frame = 0.0f;
        AnmScnRes* anmScn = g_gfSceneRoot->m_anmScnRes;
        if (anmScn != 0) {
            frame = anmScn->GetFrame();
        }
        if (frame >= 0.0f && frame <= 6000.0f) {
            param->m_shadowPitch = 90.0f + -40.0f * SinIdx(32768.0f * clamp(frame / 6000.0f, 0.0f, 1.0f));
            param->m_shadowYaw = 240.0f + -120.0f * clamp(frame / 6000.0f, 0.0f, 1.0f);
            param->m_shadowPitch = 40.0f;
            *(float*)param->_26 = 0.0f;
            _0xA0[8] = 1;
        } else {
            param->m_shadowPitch = 90.0f;
            param->m_shadowYaw = 0.0f;
            *(float*)param->_26 = 0.0f;
        }
    }
}
"""

# Everything after the function, preprocessed separately is not needed: it only
# uses declarations already present. Append it verbatim (minus #includes).
tail = "\n".join(l for l in after.splitlines() if not l.startswith("#include"))
(D / "base.c").write_text(
    "PERM_IGNORE(\n" + pre + ")\nPERM_PRETEND(" + pretend + ")\n" + body + "PERM_IGNORE(\n#undef update\n" + tail + "\n)\n",
    newline="\n",
)

import shutil

shutil.copy(ROOT / "build/RSBE01_01/st_battle/obj" / (UNIT + ".o"), D / "target.o")
(D / "settings.toml").write_text(
    'func_name = "update"\ncompiler_type = "mwcc"\n'
    f'objdump_command = "{(SP_BIN / "powerpc-eabi-objdump.exe").as_posix()} -dr -EB -mpowerpc -M broadway"\n',
    newline="\n",
)
print("ok", D)
