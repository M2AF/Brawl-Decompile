# Handoff board — Brawl RSBE01_01
<!-- handoff v1. LIVE STATE ONLY: rewrite in place, keep under ~60 lines.
     History goes in HANDOFF_LOG.md. Machine fields above the first ## are managed by handoff.py. -->

owner: claude
task: fighters: absolute-attack-data bitfield pattern -> Zelda final, MK finals
lease_until: 2026-10-03T01:23-03:00
repo: ../brawl
verify: cd ../brawl; ../.venv/Scripts/python.exe configure.py --version RSBE01_01; Remove-Item -LiteralPath build/RSBE01_01/ok -ErrorAction SilentlyContinue; ../.venv/Scripts/ninja.exe
verified: fa9a359 · build OK 127/127 after WIP commit · 2026-10-02T22:23-03:00
head: fa9a359 (rsbe01_01-support) clean
updated: 2026-10-02T22:32-03:00 · codex

## Now
- Main rsbe01_01-support is clean at9f4d31e; local commits only, no push or original-file change.
- Pit SpecialLwHold integrated from055115f: seven functions plus owned sections/relocations now source-linked.
- Clean-cache main rebuild127/127; independent built/original manifest127/127; verifier tests10/10.
- Full Pit source REL byte-identical (182192bytes, SHA1 80e6015eb3c8df3c0e14783c1c6a48a5340e67a2).
- Integration is complete; no Codex build/permuter job running. Claude is out of credits tonight.
- brawl-codex7 / codex/ike retained clean at055115f, already integrated; do not replay old commits.
- MK special_s_end remains NonMatching; its normal source-probe/promotion gates are pending.

## Next
- Claude/Codex: finish MK gallery rodata word, then MK final_end and final_hit_wait (define ftMetaknightFinalSendLinkEvent/Unlink there; see include/ft/ft_metaknight_final.h).

## Traps
- Fighter units owning shared weak RTTI: emission = reverse class-declaration order; include per-class ft_kinetic_energy_*.h headers in the needed order (see special_s). Name shared RTTI labels (__RTTI__...) so emitted copies dedupe.
- Since c472821 Stage::getZoneLightSetIndex takes Vec3f* (include/st/stage.h); sora_melee symbol renamed. Branches built before that must be rebuilt after cherry-pick.
- One TU including data, full source REL probe then MatchingFor/allowlist and fresh 127/127.
- Never push/upload; originals unchanged; target asm only evidence/nonmatching.
- No flag sweeps; bounded permuter for understood near-misses only.
- New shadowing headers: clear build/RSBE01_01/src (depfiles miss new files) and rebuild all before trusting 127/127.
- Every grMadein stage body builds a {0xFF,0},{0xFF,1} static pair before class info: reuse stMadeinStaticPair in include/st/st_madein_static_pair.h.
- MWCC: zero-initialised statics go to .bss unless #pragma explicit_zero_data; local aggregate templates go to .rodata; file-scope statics keep copy-before-store order.
- Dxgarden B90 is an unreachable epilogue label in B08; 4 bytes of rodata padding come from linker.
- Use probe_source_rel.py to compile before source probing; no stale object acceptance.
- Preserve all journal history; report source-linked separately from function-only wins.

## Pointers
- BrawlTool: research/brawltool/README.md (use `brawltool-cli.bat build|check|diff|probe|promote|integrate|cleanup`).
- Status page research/status/brawl_status.html; regenerate with claude_tools/mk_status_page.py after each promotion/integration.
- PROJECT_STATE.md, CODEX_RESUME.md and newest HANDOFF_LOG.md entry.
- evidence/nonmatching/heal/, dxgarden/, dxyorster/ (private evidence).
- ../brawl/docs/RSBE01_01.md (matching/UB/lifetime details); config/RSBE01_01/verified_objects.txt.
