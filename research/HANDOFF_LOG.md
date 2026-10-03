# Shared Claude/Codex handoff log

## Current checkpoint — 2026-10-01, Codex
- Repo: C:/Users/balla/Documents/Brawl Decompile/brawl; branch rsbe01_01-support; HEAD b284006; tracked tree clean.
- Completed here: docs repair 11d214f; New Pork ground TU b284006 (29 functions plus all data/relocations), MatchingFor RSBE01_01 and allowlisted.
- Source-linked: 185 unique TUs (175 upstream + 10 rev1 additions). Total linked instances 517/4412 (DOL65 + REL452). New Pork stage body remains extracted.
- Last verification: fresh promoted normal rebuild and independent --orig --dtk byte comparison BOTH 127/127; 10 verifier tests pass. Originals unchanged.
- Function-only / NonMatching: Battlefield x3, menu-pad and parked upstream near-misses unchanged. New Pork has no remaining near-misses.
- In flight: none. No active build/permuter. No pending promotion or uncommitted source. Nothing pushed/uploaded.
- Next: candidate #5 st_dxyorster stage body (50 functions / 2340 bytes), not started. Recover class/data/vtable ownership against fresh config, add NonMatching split, rename definitions/shared weak symbols, then compile/diff before source probe and promotion.
- Evidence: evidence/nonmatching/newpork/FINAL.md, source_build.log, probe_result.txt and historical diff trials; Corneria evidence/matching/gr_dxcorneria/VERIFICATION.md.
- Repro tool: from brawl, ../.venv/Scripts/python.exe ../research/claude_tools/probe_source_rel.py st_newpork mo_stage/st_newpork/gr_newpork. Build candidate first; normal module PLFs must exist.
- Normal build: ../.venv/Scripts/python.exe configure.py --version RSBE01_01; ../.venv/Scripts/ninja.exe. Independent command is in CODEX_RESUME.md.
- Maintain default Vec2f argument in setSoundInfo and separate writable event arrays; explicit constructor arguments/flattening produce mismatches. Unsigned m_isShieldable bitfield preserves word access with unchanged layout; all old linked sources rebuilt/verified.
- Target disassembly and loose backups flagged by check-in are archived in evidence/nonmatching/archived_layout. No deletion; document/index pointers updated. Ignore historical old paths. Build extraction assembly stays private under git-ignored build/.
- Automatic review blocked source-cache directory deletion. Source timestamp updates forced a full recompile instead. No functional workaround or unverified result remains.
- Usage observed during work: five-hour16% used, weekly37% used; no imminent limit at that check. Refresh only when needed. Log every milestone and before stopping/context or usage exhaustion.

## Update protocol
Append a dated entry after a meaningful build/diff milestone and before stopping,
context compression, a handoff, or approaching usage exhaustion. Include HEAD and
branch, dirty files, exact current owner/TU, source-linked versus function-only
status, last successful verification and what it actually covers, private evidence
paths, commands, failed attempts worth preserving, and the next concrete action.
Keep a compact Current checkpoint at the top so a fresh session can resume safely.
A log entry does not bypass the whole-TU acceptance gate. Target asm stays private.

## Documentation/privacy checkpoint
- HEAD 11d214f, clean tracked tree. Updated pickup notes outside git.
- Archived analysis assembly, target packets, st_battle_text.s and loose Battlefield .bak files under evidence/nonmatching/archived_layout; no originals touched and nothing deleted. Index/document pointers updated. Normal build assembly remains ignored under brawl/build.
- Next: inspect New Pork target functions and data.

## New Pork draft checkpoint
- HEAD 11d214f; dirty configure.py, st_newpork/splits.txt, new gr_newpork.cpp/header and one docs table-contiguity fix.
- New Pork remains NonMatching and is NOT in verified_objects.txt. Class grNewpork, size 0x1A4, sound table 98 x 12-byte events, 4 banks.
- Split proposed: text 0x2724..0x2F60, rodata 0x88..0x90, data 0x670..0xE20. Verify final weak RTTI padding ownership against the full REL.
- In flight: ninja source-object/config targets, dtk split rebuilding generated config. Log evidence/nonmatching/newpork/compile.log.

## New Pork diffs after clean recompilation
- Full normal fallback build 127/127, confirming shared header change did not disturb existing linked TUs.
- setupAttack prefix and all attack field operations now match. Remaining mismatches in 3 functions are inline sound setup / by-value Vec2f temporary shape. Added grNewpork::setSoundInfo helper to preserve distinct pointer loads and the by-value copy. No flag changes/permuter.
- Data/rodata raw bytes match; fdiff by name next avoids false position diffs from 2 extra shared weak setters.

## New Pork source acceptance probe
- All 29 function instruction bodies match; four separate arrays recover MWCC's common data anchor and addi +0 codegen. Default Vec2f argument recovers the exact stack-slot pattern (explicit arguments did not).
- Isolated normal-flag source link: entire st_newpork.rel matches, 27,944 bytes; SHA-1 10254ec9bf1766222a2a44b73adead39e46c3b4b. Includes relocation/import tables, RTTI and data padding.
- Evidence: evidence/nonmatching/newpork/probe_result.txt; probe linker/rel logs under ignored build/RSBE01_01/codex_st_newpork_probe.
- Now promoting MatchingFor RSBE01_01 / allowlist, rebuilding after stamp removal. Promotion is pending final normal 127/127; do not claim final acceptance if it fails.
- Four named data banks: .data 0x670,0x7A8,0x940,0x958. Shared stage setters/RTTI renamed, stage itself remains extracted.

## Final checkpoint: b284006
- New Pork accepted through complete source probe and both 127/127 gates. All pickup notes synchronized; queue #1-#4 marked done. Next #5, no code started. Working tree clean.

## Append-only protocol adopted from Claude — 2026-10-01
This protocol supersedes the earlier instruction to rewrite the top checkpoint.
Existing text and entries stay intact. The newest entry at the bottom is the
current checkpoint; top summaries are dated historical snapshots.

- Read PROJECT_STATE.md, then the last log entry. Before implementation, check git status, git log -1 and a fresh 127/127 build against that entry; record discrepancies.
- Append after each promoted TU, before a long rebuild/permuter run, at session end and immediately when low credits or a handoff is mentioned. Write early.
- Never edit/delete old entries. Correct mistakes in a new entry.
- Keep PROJECT_STATE.md synchronized in the same sitting when HEAD, source-linked TUs, near-misses or next steps change.
- Never put target disassembly in this log; link private evidence under evidence/nonmatching.
- Entry fields: dated author/receiver; HEAD/cleanliness; build; completed work; partial work/evidence; running processes/caps; exact next step; traps/ownership.

### 2026-10-01 01:48 ADT — Codex → either
- HEAD: `b284006 feat: match New Pork ground TU for RSBE01_01`; tree clean: yes, confirmed with git status.
- Build: fresh configure, verification-stamp removal and ninja passed `OK: 127/127 binaries verified`. Log: evidence/handoff_protocol_check.log.
- Done this session: read Claude's protocol, reconciled it with the existing log and adopted append-only updates. No game source/config changes or new commits.
- Earlier completed work: documentation repair 11d214f and New Pork source promotion b284006. 185 source-linked TUs (175 upstream + 10 rev1 additions); New Pork's 29 functions/data/relocations fully source-linked.
- In progress: none. Battlefield/menu-pad and parked near-misses remain NonMatching; no change to their status.
- Running processes: none for this task; the validation build finished.
- Next step: candidate #5 st_dxyorster stage body, 50 functions / 2340 text bytes. Refresh config/queue and recover class/data/vtable ownership before drafting the NonMatching TU. No other session ownership assumed.
- Watch out for: Claude's pasted dbed709/#4 checkpoint predates completed New Pork work. Do not redo #4. Earlier target assembly/backups are archived under evidence/nonmatching/archived_layout. Read this bottom entry instead of treating the top snapshot as live. No push/upload; originals unchanged.

### 2026-10-01 — Claude → Codex (receiver check)
- HEAD: `b284006`; tree clean; not on any remote branch.
- Build: fresh configure + stamp removal + ninja → `OK: 127/127 binaries verified`. Linked 517/4412 (DOL 65/1722, REL 452/2690).
- Gate: 185 verified entries; all 10 `MatchingFor("RSBE01_01")` objects listed. No target asm outside evidence/nonmatching; no loose .bak files.
- Note: the original Claude template entry was overwritten when the log was restructured (not appended). Harmless; content superseded.
- Next step: candidate #5 `st_dxyorster` stage body, assigned to Codex. No Claude work in progress.

### 2026-10-01 01:53 ADT — Codex → either (candidate #5 receiver)
- HEAD b284006, rsbe01_01-support, clean; matches latest Claude check. No other owner active.
- Build: fresh receiver configure/stamp removal/ninja about to run; evidence/nonmatching/dxyorster/receiver_build.log.
- Task: st_dxyorster stage body only, candidate #5. Refresh provisional queue before code. Use st_battles/st_final stage templates.
- Next: confirm receiver 127/127 and ranking, then recover RTTI/data/splits. No promotion pending.

### 2026-10-01 — Codex (receiver/ranking passed)
- HEAD b284006 clean, receiver normal build OK 127/127. No mismatch with Claude entry.
- Refreshed generated config: #5 remains the smallest remaining provisional candidate (2340 text bytes / 50 functions). Other candidates retain their order. Evidence: evidence/nonmatching/dxyorster/ranking.txt.
- Recovered class string stDxYorster and allocation size 0x250. Inspecting class registration helpers and stage-owned data. No source edits yet.

### 2026-10-01 — Codex (candidate #5 draft)
- HEAD b284006; new NonMatching st_dxyorster stage TU/header and ground interface header; configure/splits dirty.
- Ownership refined beyond provisional queue: text 0x70..0xB00 (registration included), data 0..0x430, rodata 0..8, bss 8..0x18, ctors 0..4. Factory callees stay extern C and extracted.
- Source object configure/build started. No source promotion or allowlist change. Baseline receiver passed 127/127.
- Next: inspect object/diffs; rename defined symbols and shared weak emissions; isolated source REL probe. Private evidence/nonmatching/dxyorster.

### 2026-10-02T23:29-03:00 · codex · checkpoint · 415f2e6 (rsbe01_01-support) clean
- Starting brawl-codex9/codex-mk-finals baseline build/check at415f2e6; originals local ignored copy, pinned submodules initialized. Logs mk_finals/baseline_*.log. First gallery owns textCC64..D21C rodata30..40 data5E50..5ED8 bss198..1A8 ctorsC..10; target floatpool1/360/0 then rawword1. No edits before baseline gates.

### 2026-10-02T23:31-03:00 · codex · checkpoint · 415f2e6 (rsbe01_01-support) clean
- codex9 baseline build/check127/127 PASS. Gallery owned sections confirmed; try extern const int ftMetaknightFinalAttackGalleryUnusedWord=1 after methods to emit trailing unreferenced word. FullREL proof required; symbol placement/name ownership may need split label.

### 2026-10-02T23:31-03:00 · codex · note · 415f2e6 (rsbe01_01-support) clean
- codex-parallel: brawl-codex9: Local review ft_metaknight/mo_fighter/ft_metaknight/ft_metaknight_status_uniq_process_final_attack_gallery: full source REL matches; no promotion. Evidence evidence\nonmatching\ft_metaknight\brawl-codex9\ft_metaknight_status_uniq_process_final_attack_gallery_20261003T023136.124080Z.

### 2026-10-02T23:32-03:00 · codex · note · 415f2e6 (rsbe01_01-support) clean
- codex-parallel: brawl-codex9: Promoted mo_fighter/ft_metaknight/ft_metaknight_status_uniq_process_final_attack_gallery (ft_metaknight): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T23:36-03:00 · codex · checkpoint · 415f2e6 (rsbe01_01-support) clean
- Gallery source-linked in codex/mk-finals dad9d5e: full ft_metaknight REL byte match, fresh127/127, independent original verifier/tests, post-promotion probe PASS. Main remains415f2e6.
- Starting FinalEnd in codex9: text D21C..D6EC, rodata40..48, data5ED8..5F58, bss1A8..1B8, ctors10..14; all ends exclusive. Private target/evidence mk_finals/end_target.txt.

### 2026-10-02T23:39-03:00 · codex · note · 415f2e6 (rsbe01_01-support) clean
- codex-parallel: brawl-codex9: Local review ft_metaknight/mo_fighter/ft_metaknight/ft_metaknight_status_uniq_process_final_end: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_metaknight\brawl-codex9\ft_metaknight_status_uniq_process_final_end_20261003T023838.574034Z.

### 2026-10-02T23:40-03:00 · codex · note · 415f2e6 (rsbe01_01-support) clean
- codex-parallel: brawl-codex9: Local review ft_metaknight/mo_fighter/ft_metaknight/ft_metaknight_status_uniq_process_final_end: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_metaknight\brawl-codex9\ft_metaknight_status_uniq_process_final_end_20261003T024002.482752Z.

### 2026-10-02T23:40-03:00 · codex · note · 415f2e6 (rsbe01_01-support) clean
- codex-parallel: brawl-codex9: Local review ft_metaknight/mo_fighter/ft_metaknight/ft_metaknight_status_uniq_process_final_end: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_metaknight\brawl-codex9\ft_metaknight_status_uniq_process_final_end_20261003T024027.474351Z.

### 2026-10-02T23:40-03:00 · codex · note · 415f2e6 (rsbe01_01-support) clean
- codex-parallel: brawl-codex9: Local review ft_metaknight/mo_fighter/ft_metaknight/ft_metaknight_status_uniq_process_final_end: full source REL matches; no promotion. Evidence evidence\nonmatching\ft_metaknight\brawl-codex9\ft_metaknight_status_uniq_process_final_end_20261003T024056.135073Z.

### 2026-10-02T23:41-03:00 · codex · note · 415f2e6 (rsbe01_01-support) clean
- codex-parallel: brawl-codex9: Promoted mo_fighter/ft_metaknight/ft_metaknight_status_uniq_process_final_end (ft_metaknight): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T23:42-03:00 · codex · checkpoint · 415f2e6 (rsbe01_01-support) clean
- FinalEnd source-linked:9/9 functions, owned data and relocations whole-REL byte-identical; promotion fresh127/127 and independent original check/tests/postprobe PASS. Next FinalHitWait.
- FinalHitWait owns text D6EC..DD64, data5F58..5FD8, bss1B8..1C8, ctors14..18; no rodata, exclusive ends. Includes shared event44E/unlink helpers. Evidence private mk_finals/.

### 2026-10-02T23:44-03:00 · codex · checkpoint · 415f2e6 (rsbe01_01-support) clean
- FinalEnd commit3d00d1b accepted9/9 plus owned sections after all gates. FinalHitWait draft/symbol names now in codex9 NonMatching; review running (symbol edits regenerate splits), log evidence/nonmatching/mk_finals/hit_wait_review1.log.

### 2026-10-02T23:44-03:00 · codex · note · 415f2e6 (rsbe01_01-support) clean
- codex-parallel: brawl-codex9: Local review ft_metaknight/mo_fighter/ft_metaknight/ft_metaknight_status_uniq_process_final_hit_wait: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_metaknight\brawl-codex9\ft_metaknight_status_uniq_process_final_hit_wait_20261003T024329.927917Z.

### 2026-10-02T23:44-03:00 · codex · note · 415f2e6 (rsbe01_01-support) clean
- codex-parallel: brawl-codex9: Local review ft_metaknight/mo_fighter/ft_metaknight/ft_metaknight_status_uniq_process_final_hit_wait: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_metaknight\brawl-codex9\ft_metaknight_status_uniq_process_final_hit_wait_20261003T024453.604558Z.

### 2026-10-02T23:49-03:00 · codex · note · 415f2e6 (rsbe01_01-support) clean
- codex-parallel: brawl-codex9: Local review ft_metaknight/mo_fighter/ft_metaknight/ft_metaknight_status_uniq_process_final_hit_wait: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_metaknight\brawl-codex9\ft_metaknight_status_uniq_process_final_hit_wait_20261003T024946.914344Z.

### 2026-10-02T23:50-03:00 · codex · checkpoint · 415f2e6 (rsbe01_01-support) clean
- MK branch clean f515256: Gallery dad9d5e and End3d00d1b accepted source-linked; HitWait f515256 parked11/12 (entry load CSE), fullREL fails, NonMatching remains.25 bounded variants saved, no flag/permuter sweep.
- Starting final clean worktree build/check before authorized main integration; logs mk_finals/final_worktree_*.log. Main clean415f2e6.

### 2026-10-02T23:52-03:00 · tool · verify · 4b478ca (rsbe01_01-support) clean
- verified: OK: 127/127 after integration
- Integrated 3 commit(s) from codex/mk-finals: clean rebuild 127/127, independent OK, probes OK for mo_fighter/ft_metaknight/ft_metaknight_status_uniq_process_final_attack_gallery, mo_fighter/ft_metaknight/ft_metaknight_status_uniq_process_final_end.

### 2026-10-02T23:54-03:00 · codex · verify · 4b478ca (rsbe01_01-support) clean
- verified: Main4b478ca clean after all3 MK commits; clean build127/127, independent verifier/tests/original comparison PASS, Gallery+End fullREL byte-identical and heal regression PASS;578/4405 source-linked instances.
- Main IDs: Gallery5a512ec, End2db2e38, parked HitWait4b478ca. Local branch codex/mk-finals f515256 retained clean. No jobs/push/original changes.

### 2026-10-02T23:54-03:00 · codex · handoff · 4b478ca (rsbe01_01-support) clean
- Authorized integration complete main4b478ca clean. Fighters2 integrated17 source-linked+2parked; MK integrated2source-linked (Gallery5a512ec,End2db2e38)+HitWait parked11/12 in4b478ca.
- Main clean127/127, independent verifier/tests/original check, accepted MK fullREL and heal regression PASS. No running jobs/push/original edits. PROJECT_STATE/MK_FINALS_STATUS/HANDOFF board synced; retained worktrees already integrated.
- next: HitWait stays NonMatching: initStatus redundant entry reload/register issue; best normal source and25 bounded variants in evidence/nonmatching/mk_finals/hit_wait_*. Revisit only with new bounded idea, then fullREL+promotion127/127+independent check. Otherwise await next TU task.

### 2026-10-02T23:56-03:00 · codex · claim · 4b478ca (rsbe01_01-support) clean
- task: Link status manual splits and matching in codex/link
- lease until 2026-10-03T02:56-03:00

### 2026-10-02T23:57-03:00 · codex · checkpoint · 4b478ca (rsbe01_01-support) clean
- Created brawl-codex10 codex/link from clean main4b478ca. Local ignored originals/tool copies, submodules pinned. Starting baseline clean build/check, logs evidence/nonmatching/link/baseline_*.log. No main code edits.

### 2026-10-03T00:00-03:00 · codex · checkpoint · 4b478ca (rsbe01_01-support) clean
- Baseline codex10 clean build/check127/127 PASS. Applied6 manually audited Link TUs via brawltool/apply_status_splits.py:5 simple units + all3 Final classes in one TU. Both configs mirrored, all NonMatching, no source yet.
- Final ownership F998..10F5C, RO60..78, data83F8..8560, BSS180..1B0, ctors14..18. One sinit10EAC creates three instances; generator cannot split it. ControllerRTTI8068..80B8 stays extracted (EE14 only); BaseItem8250..837C belongs Bomb (F750 cast). Rebuild/check before source, logs link/splits_*.log.

### 2026-10-03T00:02-03:00 · codex · checkpoint · 4b478ca (rsbe01_01-support) clean
- Six manual Link splits verified127/127 with all units NonMatching; independent originals/tests PASS. Splits committed in codex/link (see gitHEAD). Starting Slash TU F26C..F348, data80B8..8150, BSS140..150, ctors4..8; no RO.

### 2026-10-03T00:04-03:00 · codex · note · 4b478ca (rsbe01_01-support) clean
- codex-parallel: brawl-codex10: Local review ft_link/mo_fighter/ft_link/ft_link_status_uniq_process_special_r_slash: full source REL matches; no promotion. Evidence evidence\nonmatching\ft_link\brawl-codex10\ft_link_status_uniq_process_special_r_slash_20261003T030300.192139Z.

### 2026-10-03T00:05-03:00 · codex · note · 4b478ca (rsbe01_01-support) clean
- codex-parallel: brawl-codex10: Promoted mo_fighter/ft_link/ft_link_status_uniq_process_special_r_slash (ft_link): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-03T00:05-03:00 · codex · checkpoint · 4b478ca (rsbe01_01-support) clean
- Link Slash accepted17/17 + fullREL190320 SHA1cf0f6e708b6cfec180edcb614036f405d5861570; source promotion127/127, independent originals/tests and postprobe PASS; local commit recorded. Starting SlashEnd exact splits unchanged.

### 2026-10-03T00:07-03:00 · codex · note · 4b478ca (rsbe01_01-support) clean
- codex-parallel: brawl-codex10: Local review ft_link/mo_fighter/ft_link/ft_link_status_uniq_process_special_r_slash_end: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_link\brawl-codex10\ft_link_status_uniq_process_special_r_slash_end_20261003T030610.161344Z.

### 2026-10-03T00:36-03:00 · codex · note · 4b478ca (rsbe01_01-support) clean
- codex-parallel: brawl-codex10: Local review ft_link/mo_fighter/ft_link/ft_link_status_uniq_process_special_r_slash_end: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_link\brawl-codex10\ft_link_status_uniq_process_special_r_slash_end_20261003T033628.319693Z.

### 2026-10-03T00:36-03:00 · codex · note · 4b478ca (rsbe01_01-support) clean
- codex-parallel: brawl-codex10: Local review ft_link/mo_fighter/ft_link/ft_link_status_uniq_process_special_r_slash_end: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_link\brawl-codex10\ft_link_status_uniq_process_special_r_slash_end_20261003T033651.221378Z.

### 2026-10-03T00:39-03:00 · codex · checkpoint · 4b478ca (rsbe01_01-support) clean
- codex/link: Slash source-linked1791328 after fullREL/probe/promotion127/127+independent PASS. SlashEnd parked NonMatching4/5; one multiply operand-order difference,14 bounded variants, private link/slash_end_*.
- next: Wait: text10F5C..11084 data8560..85D0 bss1B0..1C0 ctors18..1C no rodata. Implement helper and three forwarding overrides.

### 2026-10-03T00:42-03:00 · codex · note · 4b478ca (rsbe01_01-support) clean
- codex-parallel: brawl-codex10: Local review ft_link/mo_fighter/ft_link/ft_link_status_uniq_process_wait: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_link\brawl-codex10\ft_link_status_uniq_process_wait_20261003T034106.262669Z.

### 2026-10-03T00:43-03:00 · codex · note · 4b478ca (rsbe01_01-support) clean
- codex-parallel: brawl-codex10: Local review ft_link/mo_fighter/ft_link/ft_link_status_uniq_process_wait: full source REL matches; no promotion. Evidence evidence\nonmatching\ft_link\brawl-codex10\ft_link_status_uniq_process_wait_20261003T034254.574965Z.

### 2026-10-03T00:44-03:00 · codex · note · 4b478ca (rsbe01_01-support) clean
- codex-parallel: brawl-codex10: Promoted mo_fighter/ft_link/ft_link_status_uniq_process_wait (ft_link): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-03T00:44-03:00 · codex · checkpoint · 4b478ca (rsbe01_01-support) clean
- codex/link: Wait fullREL190320 bytes byte-identical, fresh127/127 + independent/tests/originals PASS;7/7 diagnostics, now source-linked. Main4b478ca unchanged.
- next: Boomerang TU: textF4BC..F74C rodata50..60 data81D0..8250 bss160..170 ctorsC..10. Derive fields/calls, name shared Fighter/StageObject RTTI, implement and review.

### 2026-10-03T00:46-03:00 · codex · note · 4b478ca (rsbe01_01-support) clean
- codex-parallel: brawl-codex10: Local review ft_link/mo_fighter/ft_link/ft_link_status_uniq_process_special_boomerang: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_link\brawl-codex10\ft_link_status_uniq_process_special_boomerang_20261003T034550.568693Z.

### 2026-10-03T00:48-03:00 · codex · note · 4b478ca (rsbe01_01-support) clean
- codex-parallel: brawl-codex10: Local review ft_link/mo_fighter/ft_link/ft_link_status_uniq_process_special_boomerang: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_link\brawl-codex10\ft_link_status_uniq_process_special_boomerang_20261003T034755.390836Z.

### 2026-10-03T00:49-03:00 · codex · checkpoint · 4b478ca (rsbe01_01-support) clean
- Wait accepted fd06da1. Boomerang review2 running, private link/boomerang_review2.log. Unique relocated RTTI name-string helper maps emitted shared RTTI to extracted target labels; pyelftools0.33 installed only in local venv. Header extension preserves earlier ftData offsets; source cast remains reference form.
- next: Check Boomerang review2, promote if byte-identical; otherwise bounded local float-add tuning. Then Bomb.

### 2026-10-03T00:49-03:00 · codex · note · 4b478ca (rsbe01_01-support) clean
- codex-parallel: brawl-codex10: Local review ft_link/mo_fighter/ft_link/ft_link_status_uniq_process_special_boomerang: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_link\brawl-codex10\ft_link_status_uniq_process_special_boomerang_20261003T034929.049575Z.

### 2026-10-03T00:50-03:00 · codex · note · 4b478ca (rsbe01_01-support) clean
- codex-parallel: brawl-codex10: Local review ft_link/mo_fighter/ft_link/ft_link_status_uniq_process_special_boomerang: full source REL matches; no promotion. Evidence evidence\nonmatching\ft_link\brawl-codex10\ft_link_status_uniq_process_special_boomerang_20261003T035050.241907Z.

### 2026-10-03T00:51-03:00 · codex · note · 4b478ca (rsbe01_01-support) clean
- codex-parallel: brawl-codex10: Promoted mo_fighter/ft_link/ft_link_status_uniq_process_special_boomerang (ft_link): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-03T00:52-03:00 · codex · checkpoint · 4b478ca (rsbe01_01-support) clean
- codex/link: Boomerang source-linked fullREL + promotion127/127 + independent/tests/originals PASS. Explicit float conversion of integer local fixed addition operands; no UB trick.
- next: Bomb: textF74C..F998 data8250..83F8 bss170..180 ctors10..14 no rodata. Class owns BaseItem/Gimmick observer RTTI ahead of its vtable. Keep both work-flag calls before the condition.

### 2026-10-03T00:53-03:00 · codex · note · 4b478ca (rsbe01_01-support) clean
- codex-parallel: brawl-codex10: Local review ft_link/mo_fighter/ft_link/ft_link_status_uniq_process_special_bomb: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_link\brawl-codex10\ft_link_status_uniq_process_special_bomb_20261003T035226.583539Z.

### 2026-10-03T00:55-03:00 · codex · note · 4b478ca (rsbe01_01-support) clean
- codex-parallel: brawl-codex10: Local review ft_link/mo_fighter/ft_link/ft_link_status_uniq_process_special_bomb: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_link\brawl-codex10\ft_link_status_uniq_process_special_bomb_20261003T035408.535043Z.

### 2026-10-03T00:56-03:00 · codex · note · 4b478ca (rsbe01_01-support) clean
- codex-parallel: brawl-codex10: Local review ft_link/mo_fighter/ft_link/ft_link_status_uniq_process_special_bomb: full source REL matches; no promotion. Evidence evidence\nonmatching\ft_link\brawl-codex10\ft_link_status_uniq_process_special_bomb_20261003T035626.092367Z.

### 2026-10-03T00:56-03:00 · codex · note · 4b478ca (rsbe01_01-support) clean
- codex-parallel: brawl-codex10: Promoted mo_fighter/ft_link/ft_link_status_uniq_process_special_bomb (ft_link): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-03T00:57-03:00 · codex · checkpoint · 4b478ca (rsbe01_01-support) clean
- codex/link: Bomb source-linked,5/5 funcs plus owned data/layout/relocations, wholeREL + fresh127/127 + independent/tests/originals PASS. Four Link TUs accepted (Slash Wait Boomerang Bomb); SlashEnd parked4/5.
- next: Final combined3 classes: textF998..10F5C rodata60..78 data83F8..8560 bss180..1B0 ctors14..18. One sinit10EAC owns all3 global registrations; first get private m2c draft and recover helper types.

### 2026-10-03T01:06-03:00 · codex · checkpoint · 4b478ca (rsbe01_01-support) clean
- Bomb accepted f1b702d. Final combined3-class first complete C++ draft written NonMatching with shared helpers, typed search bitfields and partial catch/capture interfaces. Clean-source rebuild after new shadow header running in brawl-codex10; private link/final_headers_build.log. Final not probed/promoted.
- next: After clean127/127: errors Final, fix typed interface errors; name3 status classes/shared sinit/globals and split combined BSS descriptors; match fullREL before any promotion.

### 2026-10-03T01:12-03:00 · codex · note · 4b478ca (rsbe01_01-support) clean
- codex-parallel: brawl-codex10: Local review ft_link/mo_fighter/ft_link/ft_link_status_uniq_process_final: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_link\brawl-codex10\ft_link_status_uniq_process_final_20261003T041008.462067Z.

### 2026-10-03T01:13-03:00 · codex · note · 4b478ca (rsbe01_01-support) clean
- codex-parallel: brawl-codex10: Local review ft_link/mo_fighter/ft_link/ft_link_status_uniq_process_final: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_link\brawl-codex10\ft_link_status_uniq_process_final_20261003T041242.775079Z.

### 2026-10-03T01:21-03:00 · codex · checkpoint · 4b478ca (rsbe01_01-support) clean
- Final currently22/30 diagnostic functions; Gravity RTTI3018 named. Applying explained stack-local ordering, word-copy and equivalent branch-layout fixes; Final still NonMatching. Running real diff, not errcheck/stale candidate. Private link/final_diff4.log.
- next: Inspect remaining Final function/data differences, then full-REL review before promotion.

### 2026-10-03T01:29-03:00 · codex · checkpoint · 4b478ca (rsbe01_01-support) clean
- Final30/30 via explained local placement, typed boolean catch args and inline module/task getters. Retained in real TU. Shared headers changed; starting clean worktree build at link/final_clean_build.log, then review wholeREL. No Final promotion yet.
- next: Require fresh clean127/127, Final fullREL byte identity, promotion independent gates; document matching/UB and commit locally.

### 2026-10-03T01:30-03:00 · codex · note · 4b478ca (rsbe01_01-support) clean
- codex-parallel: brawl-codex10: Local review ft_link/mo_fighter/ft_link/ft_link_status_uniq_process_final: full source REL matches; no promotion. Evidence evidence\nonmatching\ft_link\brawl-codex10\ft_link_status_uniq_process_final_20261003T043030.101726Z.

### 2026-10-03T01:31-03:00 · codex · note · 4b478ca (rsbe01_01-support) clean
- codex-parallel: brawl-codex10: Promoted mo_fighter/ft_link/ft_link_status_uniq_process_final (ft_link): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-03T01:32-03:00 · codex · checkpoint · 4b478ca (rsbe01_01-support) clean
- Final source-linked54a0cf3 (verify commit ID in git):30/30, clean127/127, fullREL review3, promotion fresh127/127 + independent verifier/tests/originals + postprobe PASS. Five Link TUs now source-linked; SlashEnd parked4/5. No flags/permuter/push/original edits.
- next: Quick bounded SlashEnd inline-arithmetic idea; then commit any outcome, integrate codex/link locally and clean verify main.

### 2026-10-03T01:33-03:00 · codex · correction · 4b478ca (rsbe01_01-support) clean
- Final commit ID is bdd2589. Prior checkpoint used incorrect placeholder54a0cf3; verification results and five accepted Link TUs are unchanged.

### 2026-10-03T01:34-03:00 · codex · note · 4b478ca (rsbe01_01-support) clean
- codex-parallel: brawl-codex10: Local review ft_link/mo_fighter/ft_link/ft_link_status_uniq_process_special_r_slash_end: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_link\brawl-codex10\ft_link_status_uniq_process_special_r_slash_end_20261003T043410.393723Z.

### 2026-10-03T01:34-03:00 · codex · checkpoint · 4b478ca (rsbe01_01-support) clean
- codex/link clean at4f193b8:8 local commits, five accepted TUs (Slash, Wait, Boomerang, Bomb, combined Final), SlashEnd parked4/5 after18 variants. Main4b478ca clean, Codex lease, no Brawl build/permuter processes. Starting authorized local integration; private link/integrate.log. No push.
- next: Complete main clean127/127, independent check and five accepted fullREL probes plus heal; update state and release lease.

### 2026-10-03T01:36-03:00 · tool · verify · e7def40 (rsbe01_01-support) clean
- verified: OK: 127/127 after integration
- Integrated 8 commit(s) from codex/link: clean rebuild 127/127, independent OK, probes OK for mo_fighter/ft_link/ft_link_status_uniq_process_final, mo_fighter/ft_link/ft_link_status_uniq_process_special_bomb, mo_fighter/ft_link/ft_link_status_uniq_process_special_boomerang, mo_fighter/ft_link/ft_link_status_uniq_process_special_r_slash, mo_fighter/ft_link/ft_link_status_uniq_process_wait.

### 2026-10-03T01:41-03:00 · codex · verify · e7def40 (rsbe01_01-support) clean
- verified: Main e7def40 clean: Link eight commits integrated, five accepted source-linked TUs; clean127/127, independent verifier/tests/originals, all five accepted Link fullREL probes + heal PASS.583/4403 linked instances. Allowlist/source-input audit PASS. No pushes.
- Root workbench709766f: missing variant function name rejected and exact original bytes restored;41 tests and live rejected/valid smoke PASS. No target data in this tool commit.
- next: Release lease; next agent reads PROJECT_STATE and LINK_STATUS. Fox/Wolf fallback manual splits remain unstarted; SlashEnd and MK HitWait parked.

### 2026-10-03T01:41-03:00 · codex · handoff · e7def40 (rsbe01_01-support) clean
- Main e7def40 clean; five Link status TUs source-linked and fully reverified after local integration. SlashEnd remains NonMatching4/5 with18 bounded variants and private repro. Worktree codex/link4f193b8 clean and fully integrated, no processes. Root BrawlTool709766f guarded scoring/restoration,41 tests PASS. PROJECT_STATE/LINK_STATUS/board synced. Nothing pushed; originals unchanged.
- next: Check live main/lease/claims. Read PROJECT_STATE and codex_parallel/LINK_STATUS. Fox/Wolf manual reflector splits are fallback candidates; optional parked Link/MK near-misses only with a new bounded hypothesis.
