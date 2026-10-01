# Private finishing pass: 2026-10-01

Isolated brawl-codex5 / codex/finish, base fe9e4d6, final fd966e0.
Never push/upload this evidence: external timestamp review logs contain target asm.

Read ../../../codex_parallel/STAGES_STATUS.md for exact current state.
Commit e5b5e9e: Target-break data order + bounded code improvement, NonMatching.
Commit90d4a16: Floor source-linked after full-REL PASS + build/check127/127.
Commitfd966e0: Oldin data/layout recovery, NonMatching.

Commands from research, always explicit repo:
- ./brawltool-cli.bat --repo ../brawl-codex5 build --clean
- ./brawltool-cli.bat --repo ../brawl-codex5 check
- ./brawltool-cli.bat --repo ../brawl-codex5 review st_tengan mo_stage/st_tengan/gr_tengan_floor (PASS)
- review st_tbreak mo_stage/st_tbreak/st_tbreak (FAIL)
- review st_oldin mo_stage/st_oldin/st_oldin (FAIL)

Latest frozen review folders: st_tbreak/brawl-codex5/st_tbreak_20261001T214424.623611Z;
st_tengan/brawl-codex5/gr_tengan_floor_20261001T220909.678440Z;
st_oldin/brawl-codex5/st_oldin_20261001T220847.128207Z.
Each holds compile_commands.txt, review.log, summary.json with source/header/config/binary hashes.
Best .cpp/.h snapshots are committed-source copies. Oldin order/literal and Floor
comparison/helper trial logs are retained locally; only final best source is committed.
Floor's initial rel-make error was old model imports; corrected Ff/Fv, no unknown-name invention.
BrawlTool normalized diagnostics truncate at local labels, thus report a false visibility
mismatch after epilogue correction. Full REL is the acceptance gate and passes.
No permuter run/flag sweep. No running jobs. Source gating logs in this folder:
tbreak_gate_build/check.log; floor_promote.log; floor_final_build/check.log;
oldin_final_build/check.log. All final normal builds/checks pass127/127;
NonMatching stages use extracted fallback. Do not treat fallback as source acceptance.

elf_inspect.py is a stdlib-only read-only ELF32-BE inspector. oldin_data_audit.json
records section metadata only; local symbol names/relocation order can differ.
No fake pool padding or C++ shift-by32 was introduced.
