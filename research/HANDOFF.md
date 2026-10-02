# Handoff board — Brawl RSBE01_01
<!-- handoff v1. LIVE STATE ONLY: rewrite in place, keep under ~60 lines.
     History goes in HANDOFF_LOG.md. Machine fields above the first ## are managed by handoff.py. -->

owner: claude
task: fighters (ft_*): recon + upstream NonMatching fighter TUs, then smallest fighter TUs
lease_until: 2026-10-01T23:13-03:00
repo: ../brawl
verify: cd ../brawl; ../.venv/Scripts/python.exe configure.py --version RSBE01_01; Remove-Item -LiteralPath build/RSBE01_01/ok -ErrorAction SilentlyContinue; ../.venv/Scripts/ninja.exe
verified: 33d3f02 · promote gates 1-4 PASS at 33d3f02 · 2026-10-01T20:13-03:00
head: 33d3f02 (rsbe01_01-support) clean
updated: 2026-10-01T21:17-03:00 · codex

## Now
- HEAD 9ec5405 on rsbe01_01-support, clean; local only. 193 source TUs; 127/127 (clean rebuild + independent via autopilot).
- In progress (ours, NonMatching): st_dxgreens (65/69, regalloc only), st_kart (61/63), st_tbreak, st_oldin, Battlefield x3, menu_pad (DOL).
- Worktrees: only main. codex/finish integrated (e5b5e9e, 90d4a16, fd966e0) and brawl-codex5 removed after checks.
- No running jobs. Lease free.

## Next
- Marth special_s, special_final, if_marth_final; then other fighters' status TUs (need splits)

## Traps
- Since c472821 Stage::getZoneLightSetIndex takes Vec3f* (include/st/stage.h); sora_melee symbol renamed. Branches built before that must be rebuilt after cherry-pick.
- One TU including data, full source REL probe then MatchingFor/allowlist and fresh 127/127.
- Never push/upload; originals unchanged; target asm only evidence/nonmatching.
- No flag sweeps; bounded permuter for understood near-misses only.
- New shadowing headers: clear build/RSBE01_01/src (depfiles miss new files) and rebuild all before trusting 127/127.
- Every grMadein stage body builds a {0xFF,0},{0xFF,1} static pair before class info: reuse stMadeinStaticPair (include/st_heal/st_heal.h), move to a shared header on second use.
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
