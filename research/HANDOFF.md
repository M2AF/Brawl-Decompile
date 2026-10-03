# Handoff board — Brawl RSBE01_01
<!-- handoff v1. LIVE STATE ONLY: rewrite in place, keep under ~60 lines.
     History goes in HANDOFF_LOG.md. Machine fields above the first ## are managed by handoff.py. -->

owner: none
task: -
lease_until: -
repo: ../brawl
verify: cd ../brawl; ../.venv/Scripts/python.exe configure.py --version RSBE01_01; Remove-Item -LiteralPath build/RSBE01_01/ok -ErrorAction SilentlyContinue; ../.venv/Scripts/ninja.exe
verified: e7def40 · Main e7def40 clean: Link eight commits integrated, five accepted source-linked TUs; clean127/127, independent verifier/tests/originals, all five accepted Link fullREL probes + heal PASS.583/4403 linked instances. Allowlist/source-input audit PASS. No pushes. · 2026-10-03T01:41-03:00
head: e7def40 (rsbe01_01-support) clean
updated: 2026-10-03T01:41-03:00 · codex

## Now
- Link handover finished; main rsbe01_01-support clean e7def40, eight worktree commits integrated.
- Five source-linked TUs: Slashd590d7c, Wait6bc9d55, Boomerang20f3a9f, Bombc5b80da, combined Finalc8f9446.
- Main clean127/127, independent verifier/tests/originals, five Link fullREL probes and heal regression PASS.
- 583/4403 source-linked object instances (DOL67/1722, REL516/2681).
- SlashEnd80c4039 NonMatching4/5;18 bounded variants, best retained. MK HitWait remains parked11/12.
- brawl-codex10/codex-link clean4f193b8 fully integrated; retain as evidence, never replay.
- Root BrawlTool fix709766f: missing-function scores rejected, exact byte restoration,41 tests PASS.
- No running build/permuter, no pushes/original edits; target evidence private.

## Next
- Check live main/lease/claims. Read PROJECT_STATE and codex_parallel/LINK_STATUS. Fox/Wolf manual reflector splits are fallback candidates; optional parked Link/MK near-misses only with a new bounded hypothesis.

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
- Variants -f is exact: missing names fail, source bytes restore. WholeREL remains acceptance.
- Preserve all journal history; report source-linked separately from function-only wins.

## Pointers
- BrawlTool: research/brawltool/README.md (use `brawltool-cli.bat build|check|diff|probe|promote|integrate|cleanup`).
- Status page research/status/brawl_status.html; regenerate with claude_tools/mk_status_page.py after each promotion/integration.
- PROJECT_STATE.md, codex_parallel/LINK_STATUS.md, FIGHTERS_STATUS.md, MK_FINALS_STATUS.md; latest journal.
- evidence/nonmatching/heal/, dxgarden/, dxyorster/ (private evidence).
- ../brawl/docs/RSBE01_01.md (matching/UB/lifetime details); config/RSBE01_01/verified_objects.txt.
