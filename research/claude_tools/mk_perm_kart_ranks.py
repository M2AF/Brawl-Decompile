# Builds a permuter input directory for stKart::updateRanks (st_kart.rel).
# Context = TU before the function (preprocessed) + TU after it, both in PERM_IGNORE; the function in
# C-parsable form: for-init declarations hoisted into blocks (hoist_for.py; verified identical codegen),
# static_cast -> C cast. Target = extracted original object.
import importlib.util, shutil, subprocess, sys
from pathlib import Path
ROOT = Path(r"C:\Users\balla\Documents\Brawl Decompile\brawl"); TOOLS = Path(__file__).parent
spec = importlib.util.spec_from_file_location("h", TOOLS / "hoist_for.py"); h = importlib.util.module_from_spec(spec); spec.loader.exec_module(h)
D = Path(sys.argv[1]); D.mkdir(parents=True, exist_ok=True); SP_BIN = Path(sys.argv[2])
UNIT = "mo_stage/st_kart/st_kart"
subprocess.run([sys.executable, str(TOOLS / "mk_compile.py"), UNIT, str(D)], check=True)
cmd = (D / "compile.sh").read_text().splitlines()[-1].split(' -lang=c++ -c "$IN"')[0]
src = (ROOT / "src" / (UNIT + ".cpp")).read_text()
start = src.index("void stKart::updateRanks(float deltaFrame) {")
end = src.index("\n}\n", start) + 3
before, body, after = src[:start], src[start:end], src[end:]
(D / "pre.cpp").write_text(before, newline="\n")
pp = subprocess.run(["bash", "-c", f'cd "{ROOT.as_posix()}" && {cmd} -lang=c++ -E "$(cygpath -w "$0")"', str(D / "pre.cpp")], capture_output=True, text=True)
if pp.returncode: sys.exit(pp.stdout + pp.stderr)
import re
body = re.sub(r"[ \t]*//[^\n]*\n", "", body)
body = h.hoist(body).replace("void stKart::updateRanks(", "void updateRanks(").replace("static_cast<stKartData*>(m_stageData)", "(stKartData*)m_stageData")
pretend = """
typedef unsigned char u8; typedef unsigned int u32; typedef int bool;
extern const int true; extern const int false;
typedef struct stKartRecord { u32 m_checkpoint; float m_distance; char _08[0x1C]; int m_lap; char _28[4]; u8 m_rank; u8 m_isRacing; char _2E[6]; } stKartRecord;
typedef struct stKartData { char _00[0x30]; u8 m_kartNum; } stKartData;
extern void* m_stageData; extern u8 m_bgState; extern u8 m_warningState; extern bool m_isZoomedOut; extern stKartRecord m_karts[8];
void* __alloca(unsigned int size); void zoomInCamera(void); void zoomOutCamera(float a, float b);
"""
tail = "\n".join(l for l in after.splitlines() if not l.startswith("#include")).replace("NULL", "0")
(D / "base.c").write_text(
    "PERM_IGNORE(\n" + pp.stdout + "\n#define updateRanks stKart::updateRanks\n)\nPERM_PRETEND(" + pretend + ")\n" + body
    + "PERM_IGNORE(\n#undef updateRanks\n" + tail + "\n)\n", newline="\n")
shutil.copy(ROOT / "build/RSBE01_01/st_kart/obj" / (UNIT + ".o"), D / "target.o")
(D / "settings.toml").write_text('func_name = "updateRanks"\ncompiler_type = "mwcc"\n'
    f'objdump_command = "{(SP_BIN / "powerpc-eabi-objdump.exe").as_posix()} -dr -EB -mpowerpc -M broadway"\n', newline="\n")
print("ok", D)
