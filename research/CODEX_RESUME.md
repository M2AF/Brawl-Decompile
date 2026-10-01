# Codex resume checkpoint — 2026-10-01

Read HANDOFF.md for live ownership, then PROJECT_STATE.md and the last HANDOFF_LOG.md entry. They distinguish the last
verified implementation checkpoint from documentation-only commits and dirty work.

Repo: C:/Users/balla/Documents/Brawl Decompile/brawl
Branch: rsbe01_01-support. Implementation checkpoint: fb2ad57 (Tengan Bg/Ashiba + Floor draft integrated by Claude). Clean tracked tree.
192 source-linked TUs: 175 upstream plus 17 rev1 additions, enumerated in
PROJECT_STATE.md and config/RSBE01_01/verified_objects.txt.
Candidates #1-#8 are complete (#7 st_heal by Claude 6cb6eb8; #8 Green Hill by Codex, integrated as f60af98).
#9 st_kart: NonMatching WIP at c472821 (two near-miss functions; evidence/nonmatching/kart/NOTES.md). If you cherry-pick a parallel stage TU onto it, rebuild: Stage::getZoneLightSetIndex now takes Vec3f*.

Normal and independent original-byte checks passed 127/127 at fb2ad57 (clean source rebuild; st_kart and tengan floor link extracted).
Verifier failure-path tests: 10 pass. Counts of linked module instances differ
from unique source TUs. Never call fallback reconstruction a completed decompile.

Build from brawl with ../.venv/Scripts/python.exe configure.py --version RSBE01_01,
then ../.venv/Scripts/ninja.exe. Independent check:
python tools/verify_manifest.py config/RSBE01_01/binary-manifest.json --sha1-file
config/RSBE01_01/build.sha1 --orig --dtk build/tools/dtk.exe

One TU at a time with data and relocations; NonMatching until fully verified;
rename defined mangled symbols and shared weak inlines/RTTI; local commits only.
Keep originals unchanged and target assembly private. Preserve existing matching
tricks (including gf_slow_manager's u8 reference). No compiler flag sweeps.
Battlefield's three TUs and menu-pad remain NonMatching. Parked near-misses and
bounded permuter records are in CLAUDE_STATUS.md / evidence/nonmatching.
No known active permuter run; the resolveReference trials ended without a match.

Before stopping, update HANDOFF_LOG.md with dirty files, last passing build,
per-function vs source-linked status, private evidence, exact reproduction commands
and the next small action. This checkpoint is not permission to push or publish.

Dxgarden: accepted 53 real functions / 3488 bytes, including registration; B90 is unreachable epilogue label in B08. Source .rodata 36 bytes + 4 linker padding bytes, full REL exact. Native SDK Color type pun and target uninitialized state byte noted in docs. No active jobs/dirty code.
