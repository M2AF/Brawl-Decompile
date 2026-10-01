# Builds the permuter input directory for utRelocate::resolveReference.
import subprocess
import sys
from pathlib import Path

SP = Path(__file__).parent
D = SP / "perm_rr"
D.mkdir(exist_ok=True)
ROOT = Path(r"C:\Users\balla\Documents\Brawl Decompile\brawl")

subprocess.run([sys.executable, str(SP / "mk_compile.py"), "sora/ut/ut_relocate", str(D)], check=True)

(D / "hdr.cpp").write_text(
    """#include <cstring>
#include <revolution/OS.h>
#include <types.h>
#include <ut/ut_relocate.h>
""",
    newline="\n",
)

# Preprocess with the project compiler command (-E)
script = (D / "compile.sh").read_text().splitlines()[-1]
cmd = script.split(' -lang=c++ -c "$IN"')[0]
pp = subprocess.run(
    ["bash", "-c", f'cd "/c/Users/balla/Documents/Brawl Decompile/brawl" && {cmd} -lang=c++ -E "$(cygpath -w "$0")"', str(D / "hdr.cpp")],
    capture_output=True,
    text=True,
)
if pp.returncode:
    sys.exit(pp.stdout + pp.stderr)
(D / "hdr.i").write_text(pp.stdout, newline="\n")

fixed = """
inline void* utRelocate::getPublicAddress(const char* symName) const {
    const DATSymbol* sym;
    for (u32 i = 0; i < m_hdr.nSymbols; i++) {
        sym = m_symtabStart;
        if (!std::strcmp(m_strtabStart + sym[i].name, symName))
            return m_dataStart + sym[i].offset;
    }
    return nullptr;
}
#define resolveReference utRelocate::resolveReference
"""

pretend = """
typedef unsigned int u32;
typedef int s32;
typedef struct DATHeader { u32 nImports; } DATHeader;
typedef struct utRelocate { void* (*getPublicAddress)(const char*); } utRelocate;
static DATHeader m_hdr;
const char* getImportName(s32 i, u32 n);
void locateExtern(const char* name, void* addr);
void OSReport(const char* fmt, ...);
"""

body = """void resolveReference(const utRelocate* other) {
    for (s32 i = 0; i < m_hdr.nImports; i++) {
        const char* importName = getImportName(i, m_hdr.nImports);
        if (importName) {
            void* addr = (void*)(other->getPublicAddress(importName));
            if (!addr)
                OSReport("utRelocate: not found symbol! ->[%s] \\n", importName);
            locateExtern(importName, addr);
        }
    }
}
"""
(D / "base.c").write_text(
    "PERM_IGNORE(\n" + (D / "hdr.i").read_text() + fixed + ")\nPERM_PRETEND(" + pretend + ")\n" + body,
    newline="\n",
)

asm = (ROOT / "build/RSBE01_01/asm/sora/ut/ut_relocate.s").read_text().splitlines()
start = next(i for i, l in enumerate(asm) if l.startswith(".fn resolveReference__10utRelocateFPC10utRelocate"))
end = next(i for i, l in enumerate(asm) if l.startswith(".endfn resolveReference__10utRelocateFPC10utRelocate"))
# The function references a string in .data; keep its label as an external symbol.
(D / "target.s").write_text('.include "macros.inc"\n.text\n' + "\n".join(asm[start : end + 1]) + "\n", newline="\n")
subprocess.run(
    [str(ROOT / "build/binutils/powerpc-eabi-as.exe"), "-mgekko", "-I", "include", "-I", "build/RSBE01_01/include", str(D / "target.s"), "-o", str(D / "target.o")],
    cwd=ROOT,
    check=True,
)
(D / "settings.toml").write_text(
    'func_name = "resolveReference"\ncompiler_type = "mwcc"\n'
    f'objdump_command = "{(SP / "bin" / "powerpc-eabi-objdump.exe").as_posix()} -dr -EB -mpowerpc -M broadway"\n',
    newline="\n",
)
print("ok", D)
