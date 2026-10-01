# decomp-permuter trial: gfSlowManager::requestSlow (RSBE01_01)

Result: base score 35 → 0 at iteration ~3106 (~20 min wall, cap 20 min, stop condition `--stop-on-zero`).
Accepted only after the full TU built through ninja and all 127 binaries passed (commit b7c3a53).

## Reproduce
- Tool: simonlindholm/decomp-permuter @ 059609d4aec73eb0650726772954e1ad575825f8, checkout `Brawl Decompile/decomp-permuter`.
- Local patch: `permuter-local.patch` (src/preprocess.py: pass input through when no `cpp` on PATH).
- Python: project venv (Python 3.13.14) + `toml`.
- Compiler command: `compile.sh` (project flags for sora/gf/gf_slow_manager.cpp, GC/3.0a5.2, plus `-lang=c++`).
- Preprocessing inputs: `hdr.cpp` → `hdr.i` via the same mwcceppc command with `-E`; `base.c` = `PERM_IGNORE(hdr.i + #define requestSlow gfSlowManager::requestSlow)` + `PERM_PRETEND(C stand-in types)` + function body.
- Target extraction: `target.s` = `.include "macros.inc"`, `.text`, then the `.fn requestSlow__13gfSlowManagerFUc` … `.endfn` block from `build/RSBE01_01/asm/sora/gf/gf_slow_manager.s`; assembled with `build/binutils/powerpc-eabi-as.exe -mgekko -I include -I build/RSBE01_01/include target.s -o target.o`.
- Settings: `settings.toml` (func_name, compiler_type mwcc, objdump_command using a space-free copy of powerpc-eabi-objdump 2.42).
- Run: `python permuter.py <dir> -j 12 --stop-on-zero` under `timeout 1200`.
- Seed: this permuter version does not print the seed of successful candidates and chains randomization (`--keep-prob 0.6`), so the run is not replayable by one seed. The reproducible artifact is the winning source, `output-0-1/source.c` (+ `diff.txt`, `score.txt`). Future runs record the log and output only.

## Winning change and review
The permuter aliased `res` through a pointer. Source uses the equivalent `u8& result = res;` (verified to match).
Review: reference to a live local in the same scope — no lifetime issue, no type-punning or aliasing violation, no undefined behavior; semantics identical to the original expression.
This is a matching technique, not evidence of the original spelling.
