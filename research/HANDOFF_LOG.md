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

### 2026-10-02T01:16-03:00 · codex · note · 8d3b44a (rsbe01_01-support) dirty 4
- codex-parallel: Rebased codex/ike onto requested0a48697, preserving article-interface superset and new inherited Normal brake20. Moved Controller vector18 into recovered Normal padding and kept derived vector28; Gravity preserves speed08 and1C while exposing Ike field18. Old earlier-base results need fresh validation. Clean rebuild starts next; main/Claude Luigi work untouched.

### 2026-10-02T01:18-03:00 · codex · note · 8d3b44a (rsbe01_01-support) dirty 8
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_special_lw: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_special_lw_20261002T041855.523007Z.

### 2026-10-02T01:20-03:00 · codex · note · 8d3b44a (rsbe01_01-support) dirty 8
- codex-parallel: Clean base0a build/check127/127; Ike Lw remains one-byte frsp mismatch after header placement fixes. Generator ranking excludes Claude-reserved Luigi; smallest clear candidate Pit SpecialHiFly (module112,text E148..E274,4 functions/300bytes). Reviewing owned data end: generator includes float25 at6A48 without a warning; class RTTI ends6A48, so reference ownership must be checked before source. Fox/Wolf proposals rejected by generator vtable-shape assumption. Main untouched.

### 2026-10-02T01:20-03:00 · tool · verify · 8d3b44a (rsbe01_01-support) dirty 8
- verified: OK: 127/127 with mo_fighter/ft_luigi/ft_luigi_status_uniq_process_special_s_wall promoted
- Promoted mo_fighter/ft_luigi/ft_luigi_status_uniq_process_special_s_wall (ft_luigi): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T01:21-03:00 · codex · note · 8d3b44a (rsbe01_01-support) dirty 12
- codex-parallel: Selected Pit SpecialHiFly for one-TU implementation. Proven ownership module112: textE148..E274, data69D0..6A48, bss1B0..1C0, ctors8..C, no rodata. Generator end6A4C was wrong: float25 at6A48 is referenced only by Hold functionE278 and stays extracted. Fly overrides exitStatus (vtable10), not execStatus. Source will use only that override/global instance; shared base methods/RTTI names will dedupe. No Luigi/main edits.

### 2026-10-02T01:23-03:00 · claude · verify · d4b3ec1 (rsbe01_01-support) clean
- verified: verify_manifest 127/127; probes PASS for all 8 fighter units' affected set
- MATCHED Luigi special_s_ram + special_s_wall (d4b3ec1); fighter units matched: 8 (Marth 2, Mario 3, Luigi 3; Luigi status set complete). CORRECTION: the never-called-function RTTI technique was wrong; real rule = unit .data starts 8-aligned + RTTI groups cast only by the next unit belong to it (emitted before its vtable; declare class before that header). Marth splits changed: special_s data ends 0x54E8, special_hi starts 0x54E8 (both configs); stand-in functions removed. New header overrides: so/ground/so_ground_module_impl.h (getTouchFlag/isAttachable u32), so/kinetic/so_kinetic_energy.h (AttributeMask s16). Generator updated with alignment+ownership rule. NOTE Copilot: brawltool port's Marth fixture (special_hi 0x5584) is now outdated -> 0x54E8.
- next: next fighter via mk_status_splits (Pit/Wolf/Fox small sets)

### 2026-10-02T01:24-03:00 · codex · note · d4b3ec1 (rsbe01_01-support) clean
- codex-parallel: brawl-codex7: Local review ft_pit/mo_fighter/ft_pit/ft_pit_status_uniq_process_special_hi_fly: full source REL matches; no promotion. Evidence evidence\nonmatching\ft_pit\brawl-codex7\ft_pit_status_uniq_process_special_hi_fly_20261002T042442.667797Z.

### 2026-10-02T01:25-03:00 · codex · note · d4b3ec1 (rsbe01_01-support) clean
- codex-parallel: Pit SpecialHiFly full REL probe PASS (182192bytes SHA1 80e6015eb3c8df3c0e14783c1c6a48a5340e67a2), 4/4 functions. Ownership corrected to data69D0..6A48, float25 left for Hold. Promotion gates begin in isolated worktree; logs evidence/nonmatching/ike/pit_fly_promote.log. Main and Claude Luigi files untouched.

### 2026-10-02T01:26-03:00 · claude · note · d4b3ec1 (rsbe01_01-support) clean
- Fighter claims added to board Next: Claude = marth/mario/luigi (done), sonic, metaknight; Codex = ike, pit (+fox/wolf). mk_status_splits.py: rodata end is padded to 8 only over objects no other code references (Codex's ft_pit float case).

### 2026-10-02T01:26-03:00 · codex · note · d4b3ec1 (rsbe01_01-support) clean
- codex-parallel: brawl-codex7: Promoted mo_fighter/ft_pit/ft_pit_status_uniq_process_special_hi_fly (ft_pit): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T01:29-03:00 · codex · note · d4b3ec1 (rsbe01_01-support) dirty 3
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_special_lw: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_special_lw_20261002T042927.708728Z.

### 2026-10-02T01:29-03:00 · codex · note · d4b3ec1 (rsbe01_01-support) dirty 3
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_special_hi: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_special_hi_20261002T042932.159045Z.

### 2026-10-02T01:29-03:00 · codex · note · d4b3ec1 (rsbe01_01-support) dirty 5
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_final: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_final_20261002T042936.384516Z.

### 2026-10-02T01:29-03:00 · codex · note · d4b3ec1 (rsbe01_01-support) dirty 5
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_special_s: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_special_s_20261002T042941.984087Z.

### 2026-10-02T01:29-03:00 · codex · note · d4b3ec1 (rsbe01_01-support) dirty 5
- codex-parallel: brawl-codex7: Local review ft_pit/mo_fighter/ft_pit/ft_pit_status_uniq_process_special_hi_fly: full source REL matches; no promotion. Evidence evidence\nonmatching\ft_pit\brawl-codex7\ft_pit_status_uniq_process_special_hi_fly_20261002T042946.741249Z.

### 2026-10-02T01:31-03:00 · tool · verify · d4b3ec1 (rsbe01_01-support) dirty 6
- verified: OK: 127/127 with mo_fighter/ft_sonic/ft_sonic_status_uniq_process_special_s_wall_end promoted
- Promoted mo_fighter/ft_sonic/ft_sonic_status_uniq_process_special_s_wall_end (ft_sonic): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T01:32-03:00 · codex · note · d4b3ec1 (rsbe01_01-support) dirty 6
- codex-parallel: Base corrected to0a48697, clean codex/ike HEADc98614a. Pit SpecialHiFly accepted/source-linked atc98614a: full REL byte-identical, normal127/127, independent127/127, post-promotion probe PASS. Source-linked additions1 (Pit), all4 Ike remain NonMatching; Lw still one-byte frsp/fmr. Rewritten Ike commitsbbfee4e/b7e2dc9/3e05e1d/4b19058 +73822c1. FIGHTERS_STATUS and NEXT_FIGHTER_QUEUE updated with exact ranges, current reviews and generator float25 ownership correction. Latest private evidence under evidence/nonmatching/ike/base0a/. Next clear candidate Pit LwHold; Claude-reserved Luigi untouched. No main/Marth edits, lease claim, push, merge or running jobs.

### 2026-10-02T01:38-03:00 · claude · verify · 3a192a8 (rsbe01_01-support) clean
- verified: clean build + verify_manifest 127/127 at 3a192a8; 11/11 fighter probes byte-identical
- Integrated codex/ike onto main (cherry-picks 8f219d1..3a192a8: Ike 5 NonMatching drafts + Pit SpecialHiFly MATCHED). Resolved docs appends, verified_objects union, controller header -> Codex's reconciled version (m_28 kept; Normal now has m_speed 0x08, m_18 0x18, m_brake 0x20; Stop m_28; Gravity m_18). Also committed 9c53020 (Sonic s_wall_end + final_end MATCHED; soMotionChangeParam ctor override). Clean rebuild 127/127 + independent verifier 127/127; full-REL probe byte-identical for all 11 matched fighter units. brawl-codex7 kept (Codex active): Codex must rebase codex/ike onto 3a192a8 before continuing. NOTE: research/brawltool currently fails to import (status_splits.py line 182 'from __future__' mid-file, Copilot edit in progress) - promote done manually with identical gates.
- next: Claude: Sonic lw_hold, then dash; Codex: rebase onto 3a192a8 then Pit SpecialLwHold

### 2026-10-02T01:44-03:00 · claude · verify · 3a192a8 (rsbe01_01-support) clean
- verified: brawltool unittest 37/37; status-splits == reference for 5 fighters
- Took over Copilot's unfinished BrawlTool step (Copilot out of credits). State verified: brawltool imports again; status-splits now imports the reference parser (brawltool/reference_status_splits.py adapter; duplicate port removed); output identical to claude_tools/mk_status_splits.py for marth/mario/luigi/sonic/pit. Added test_reference_proposals_match_committed_fighter_splits (reads local extracted asm, skips if absent; compares non-first proposals with committed splits.txt) - it caught a real generator gap: Pit hi_fly data end 0x6A4C vs Codex's verified 0x6A48 (a static .float used by the next class). Generalized ownership rule in mk_status_splits.py: trailing data objects used only by the next unit's code (or by other moved objects) move to the next unit. 37/37 tests pass. Restored tracked __pycache__ churn. Tooling changes in research/ are uncommitted (workspace repo), as before.
- next: Claude: Sonic lw_hold then dash; Codex: rebase onto 3a192a8, Pit SpecialLwHold

### 2026-10-02T01:44-03:00 · codex · note · 3a192a8 (rsbe01_01-support) clean
- codex-parallel: Resuming Pit SpecialLwHold in brawl-codex7 only. Rebasing codex/ike onto 3a192a8 and clearing source cache before baseline build. Main lease stays Claude; no main edits. Direct configure/probe path selected while tools settle.

### 2026-10-02T01:48-03:00 · codex · note · 3a192a8 (rsbe01_01-support) dirty 2
- codex-parallel: codex/ike rebased to3a192a8 (all prior patches already integrated); clean-cache direct build and independent original/built manifest checks127/127. Before coding Pit SpecialLwHold: module112 textE274..E4D4, rodata20..28, data6A48..6AC8, bss1C0..1D0, ctorsC..10. Seven functions; float25 belongs Hold. Latest generator agrees. Target/proposals saved privately under evidence/nonmatching/ike/pit_hold/. Main/lease untouched.

### 2026-10-02T01:50-03:00 · tool · verify · 3a192a8 (rsbe01_01-support) dirty 4
- verified: OK: 127/127 with mo_fighter/ft_sonic/ft_sonic_status_uniq_process_special_lw_hold promoted
- Promoted mo_fighter/ft_sonic/ft_sonic_status_uniq_process_special_lw_hold (ft_sonic): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T01:55-03:00 · tool · verify · f545e46 (rsbe01_01-support) dirty 6
- verified: OK: 127/127 with mo_fighter/ft_metaknight/ft_metaknight_status_uniq_process_special_s_rush promoted
- Promoted mo_fighter/ft_metaknight/ft_metaknight_status_uniq_process_special_s_rush (ft_metaknight): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T01:55-03:00 · codex · note · f545e46 (rsbe01_01-support) dirty 6
- codex-parallel: brawl-codex7: Local review ft_pit/mo_fighter/ft_pit/ft_pit_status_uniq_process_special_lw_hold: full source REL matches; no promotion. Evidence evidence\nonmatching\ft_pit\brawl-codex7\ft_pit_status_uniq_process_special_lw_hold_20261002T045524.826563Z.

### 2026-10-02T01:57-03:00 · claude · handoff · f545e46 (rsbe01_01-support) dirty 6
- LOW CREDITS handoff. Since 3a192a8: f545e46 Sonic special_lw_hold MATCHED. Uncommitted->committing now: Meta Knight status splits (5 units, both configs), special_s_rush MATCHED+promoted (gates passed), special_s_end source written, diff 6/6 + rodata SAME but NOT yet probed/promoted (run: brawltool-cli.bat promote mo_fighter/ft_metaknight/ft_metaknight_status_uniq_process_special_s_end after ninja). Remaining Meta Knight: final_attack_gallery, final_end, final_hit_wait. Sonic special_s_dash deferred (contains soArrayContractibleTable<const acCmdArgConv> class + ~0x900 bytes helpers). Fighter units matched: 13 (+s_end pending). Tools: claude_tools/mk_status_splits.py (+apply_status_splits.py, rename_syms.py); brawltool status-splits/apply-status-splits/rename-status wrap them (37 tests). research/ tooling changes uncommitted (workspace repo).
- next: Codex/next agent: promote MK special_s_end, then MK final_* units; Sonic dash later

### 2026-10-02T01:58-03:00 · codex · note · be62934 (rsbe01_01-support) clean
- codex-parallel: COMPLETE Pit SpecialLwHold, new local commit055115f on clean codex/ike, base3a192a8 in brawl-codex7. Seven functions608text bytes plus owned rodata/data/BSS/ctors and relocations. Pre-promotion review and post-promotion full REL byte-identical (182192bytes SHA1 80e6015eb3c8df3c0e14783c1c6a48a5340e67a2); fresh promoted normal127/127 + independent original/built manifest127/127; verifier tests10/10. MatchingFor and allowlist updated. Evidence/matched.cpp/accepted.json private under evidence/nonmatching/ike/pit_hold; docs UB/lifetime/aliasing review written. FIGHTERS_STATUS and NEXT_FIGHTER_QUEUE updated. One new source-linked TU this session, no function-only promotions, no jobs/permuter. Main advanced independently tobe62934; not edited or verified by Codex, lease not claimed. Integrating agent should cherry-pick055115f only (old Ike/Pit commits already integrated), reconcile later config/docs changes and reverify127/127 plus full Pit probe. Nothing pushed, originals unchanged.

### 2026-10-02T02:01-03:00 · codex · claim · be62934 (rsbe01_01-support) clean
- task: One-time local integration of Pit SpecialLwHold055115f and validation
- lease until 2026-10-02T05:01-03:00
- FORCED over held by claude for 175 more min
- User explicitly authorized Codex to integrate tonight because Claude is out of credits. Main be62934 clean; no active Brawl build/compiler process. Scope: cherry-pick055115f, clean rebuild, independent check and Pit source probe; never push.

### 2026-10-02T02:01-03:00 · codex · checkpoint · be62934 (rsbe01_01-support) clean
- Before baseline verification/integration: configure+forced Ninja on main be62934, then cherry-pick055115f and clear source cache for clean integration build. Private logs research/evidence/nonmatching/ike/pit_hold/integration_*; do not promote unrelated Meta Knight drafts.

### 2026-10-02T02:02-03:00 · codex · verify · be62934 (rsbe01_01-support) clean
- verified: be62934 baseline forced configure+Ninja OK127/127
- User-authorized integration: main baseline is verified; applying only055115f.

### 2026-10-02T02:03-03:00 · codex · checkpoint · 9f4d31e (rsbe01_01-support) clean
- Pit055115f integrated locally as9f4d31e on main; docs/allowlist append conflicts resolved preserving both Sonic/Meta Knight and Pit entries. Main clean. Source cache cleared by preserving src_before_pit_integration_055115f; starting full clean configure+Ninja at9f4d31e. Integration is not yet verified; log integration_clean_build.log.

### 2026-10-02T02:06-03:00 · codex · verify · 9f4d31e (rsbe01_01-support) clean
- verified: 9f4d31e clean rebuild127/127; independent127/127; verifier tests10/10; full Pit source REL byte-identical
- User-authorized one-time local integration complete.055115f cherry-picked as9f4d31e; docs/allowlist append conflicts kept both sides. Only eight Pit files changed, MK special_s_end stillNonMatching. FIGHTERS_STATUS, PROJECT_STATE, queue and status page updated. Evidence: evidence/nonmatching/ike/pit_hold/integration_*. Nothing pushed; originals unchanged; both checkouts clean.

### 2026-10-02T02:06-03:00 · codex · handoff · 9f4d31e (rsbe01_01-support) clean
- One-time Pit integration finished at9f4d31e, all gates pass, no running job. Released lease for Claude/next agent; brawl-codex7 retained. Journal rotated preserving148 historical entries in HANDOFF_ARCHIVE.md.
- next: Receiver: run status and claim after checking current main; probe/review MK special_s_end, promote only after full REL match +127/127, then MK final_* units; Sonic dash deferred.

### 2026-10-02T21:30-03:00 · tool · verify · 9f4d31e (rsbe01_01-support) dirty 2
- verified: OK: 127/127 with mo_fighter/ft_metaknight/ft_metaknight_status_uniq_process_special_s_end promoted
- Promoted mo_fighter/ft_metaknight/ft_metaknight_status_uniq_process_special_s_end (ft_metaknight): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T21:30-03:00 · claude · claim · 8a3ffb1 (rsbe01_01-support) clean
- task: fighters: Meta Knight final_* status units, then next fighter
- lease until 2026-10-03T01:30-03:00

### 2026-10-02T21:31-03:00 · claude · note · 8a3ffb1 (rsbe01_01-support) clean
- 8a3ffb1: MK special_s_end MATCHED (fighter units: Claude 14 + Codex Pit 2 = 16 on main incl. Marth/Mario/Luigi/Sonic/MK/Pit). Removed brawl-codex7 after checks (clean; 055115f content identical to 9f4d31e; main.dol unchanged); branch codex/ike kept. mk_status_splits.py: dedupe classes by vtable (Pit lw_hold was listed twice). Assignments: Claude = MK final_attack_gallery/final_end/final_hit_wait, then ft_snake; Codex = new worktree brawl-codex8 from 8a3ffb1: Pit special_s_revolve, then ft_ness, ft_lucas.

### 2026-10-02T21:35-03:00 · codex · note · 8a3ffb1 (rsbe01_01-support) dirty 5
- codex-parallel: Created brawl-codex8 / codex/fighters2 from8a3ffb1; originals copied locally/ignored. Main Claude-owned with active Zelda edits; no main build/edit or lease claim. Before clean baseline build: logs evidence/nonmatching/fighters2/. Tasks Pit Revolve then Ness/Lucas, one TU at a time.

### 2026-10-02T21:36-03:00 · tool · verify · 8a3ffb1 (rsbe01_01-support) dirty 6
- verified: OK: 127/127 with mo_fighter/ft_zelda/ft_zelda_status_uniq_process_special_s promoted
- Promoted mo_fighter/ft_zelda/ft_zelda_status_uniq_process_special_s (ft_zelda): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T21:39-03:00 · tool · verify · 4bd6ae6 (rsbe01_01-support) dirty 5
- verified: OK: 127/127 with mo_fighter/ft_zelda/ft_zelda_status_uniq_process_special_hi promoted
- Promoted mo_fighter/ft_zelda/ft_zelda_status_uniq_process_special_hi (ft_zelda): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T21:40-03:00 · claude · checkpoint · 49c5a3d (rsbe01_01-support) clean
- verified: promote gates PASS; clean build 127/127
- Zelda special_s (4bd6ae6) + special_hi (latest) MATCHED; MK finals deferred (heavy). ftData gains unk84 (ft_common_data_accesser.h). Fighter units on main: Claude 16 + Codex Pit 2 = 18. Next: Zelda special_lw, hi3, hi2, final.

### 2026-10-02T21:40-03:00 · codex · note · 49c5a3d (rsbe01_01-support) clean
- codex-parallel: brawl-codex8 baseline127/127 and independent127/127. Initialized pinned BrawlHeaders/OpenRVL submodules after initial missing-header build; originals ignored. Pit Revolve ownership proved: textDDE0..E148 starts after ftPit adjustor thunks throughDDD8; data6938..69D0 starts after ftPit class-info RTTI692C..6938. Leading energy RTTI6854..68E0 and ftPit classinfo68E0..6938 stay extracted, no casts in Revolve. Owned BSS1A0..1B0/ctors4..8, no rodata. Evidence fighters2/ft_pit/. Coding NonMatching now.

### 2026-10-02T21:42-03:00 · tool · verify · 49c5a3d (rsbe01_01-support) dirty 5
- verified: OK: 127/127 with mo_fighter/ft_zelda/ft_zelda_status_uniq_process_special_lw promoted
- Promoted mo_fighter/ft_zelda/ft_zelda_status_uniq_process_special_lw (ft_zelda): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T21:43-03:00 · codex · note · 36528f6 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Local review ft_pit/mo_fighter/ft_pit/ft_pit_status_uniq_process_special_s_revolve: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_pit\brawl-codex8\ft_pit_status_uniq_process_special_s_revolve_20261003T004319.464049Z.

### 2026-10-02T21:43-03:00 · codex · note · 36528f6 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Local review ft_pit/mo_fighter/ft_pit/ft_pit_status_uniq_process_special_s_revolve: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_pit\brawl-codex8\ft_pit_status_uniq_process_special_s_revolve_20261003T004346.408937Z.

### 2026-10-02T21:44-03:00 · codex · note · 36528f6 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Promoted mo_fighter/ft_pit/ft_pit_status_uniq_process_special_s_revolve (ft_pit): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T21:45-03:00 · codex · note · 36528f6 (rsbe01_01-support) dirty 2
- codex-parallel: Pit Revolve accepted/source-linked in brawl-codex8 (codex/fighters2); full REL byte-identical, promote normal127/127+independent127/127+postprobePASS. Local commit recorded in worktree log. One source-linked TU so far; no main edits/lease claim/push. Next Ness, WARN review confirmed first start11034 afterftNess thunk1102C, data88F0 afterclassinfoRTTI88E4; Gravity data8BB0..8BF4 used by next attack unit. Private fighters2/ft_pit evidence. Preparing reviewed Ness splits only.

### 2026-10-02T21:47-03:00 · codex · note · 36528f6 (rsbe01_01-support) dirty 2
- codex-parallel: Pit accepted commit3e62bb6 (amended to add explicit rev2 split; brawltool split only writes current revision). Now Ness nine splits mirrored/NonMatching; first starts and Gravity-next-unit ownership reviewed. One active TU SpecialS: text116AC..117B8, rodata28..30, data8AC0..8B38, bss200..210, ctors10..14. Extending existing ft_common_data_accesser override with proven pointers80/84 and float18/2C, no BrawlHeaders fork. Before clean-cache build/header review; evidence fighters2/.

### 2026-10-02T21:48-03:00 · tool · verify · 36528f6 (rsbe01_01-support) dirty 4
- verified: OK: 127/127 with mo_fighter/ft_zelda/ft_zelda_status_uniq_process_special_hi3 promoted
- Promoted mo_fighter/ft_zelda/ft_zelda_status_uniq_process_special_hi3 (ft_zelda): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T21:52-03:00 · codex · note · 2c1c48e (rsbe01_01-support) clean
- codex-parallel: Tool caveat found during NessS: brawltool rename-status METHOD_SUFFIXES exitStatus=i omits FP16soModuleAccesser (unlike canonical rename_syms). Corrected only worktree symbol files to full exitStatus__31ftNessStatusUniqProcessSpecialSFP16soModuleAccesseri. For remaining override renames pass explicit full suffix or canonical helper redirected to brawl-codex8; shared BrawlTool left untouched while Claude active. Clean header build127/127; named build/promote running, logs fighters2/ness_*.

### 2026-10-02T21:52-03:00 · codex · note · 2c1c48e (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Promoted mo_fighter/ft_ness/ft_ness_status_uniq_process_special_s (ft_ness): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T21:54-03:00 · codex · note · 2c1c48e (rsbe01_01-support) dirty 2
- codex-parallel: Ness SpecialS accepted/source-linked (module101 REL277192 bytes SHA1 e61788578d9f18bc36bfb7349c43826cdf4f34d8), brawltool promote all gatesPASS: normal127/127 independent127/127 postprobeTrue. Header cachecleared/allsource rebuilt. Committed locally in codex/fighters2; nine Ness splits scaffolded (eight remainNonMatching). Next one TU SpecialHiReflect: text12B9C..12CA8, rodata88..90, data8C70..8CF0, bss230..240, ctors1C..20; body directdata84/float2C. No main edits or leaseclaim.

### 2026-10-02T21:56-03:00 · codex · note · 2c1c48e (rsbe01_01-support) dirty 2
- codex-parallel: brawl-codex8: Promoted mo_fighter/ft_ness/ft_ness_status_uniq_process_special_hi_reflect (ft_ness): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T21:59-03:00 · codex · note · 2c1c48e (rsbe01_01-support) dirty 2
- codex-parallel: Ness SpecialHiReflect accepted and committed754b7cf on codex/fighters2. Full REL identity plus fresh127/127 and independent checks PASS. Main untouched. Next investigate Ness AttackS4 inheritance from RTTI/vtable before coding.

### 2026-10-02T22:00-03:00 · codex · note · 2c1c48e (rsbe01_01-support) dirty 2
- codex-parallel: Next TU Ness AttackS4: module101 text1151C..116AC data8A40..8AC0 bss1F0..200 ctorsC..10 no rodata. RTTI base list proves ftStatusUniqProcessSmashAttack; inherited init/exit vtable relocations prove sora_melee fn_27_169554/fn_27_1696D0 signatures. Add minimal shared base header in isolated worktree, name those methods in both configs, clear source cache. Private asm fighters2/ft_ness/target_1151C.txt.

### 2026-10-02T22:03-03:00 · tool · verify · 2c1c48e (rsbe01_01-support) dirty 5
- verified: OK: 127/127 with mo_fighter/ft_zelda/ft_zelda_status_uniq_process_special_hi2 promoted
- Promoted mo_fighter/ft_zelda/ft_zelda_status_uniq_process_special_hi2 (ft_zelda): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T22:03-03:00 · claude · checkpoint · f778235 (rsbe01_01-support) clean
- verified: f778235 OK 127/127 + independent verifier
- Zelda special_hi3 (2c1c48e) and special_hi2 (f778235) matched: full ft_zelda REL byte-identical, fresh 127/127, independent check OK. hi3's 2nd override is execFixPosCounter (vtable +0x20), not exitStatus. hi2: MSL atan2f copy needs '#pragma scheduling on' (optimization_level is ignored); ternary FLT_MIN length; getTouchNormal mask widened to u32 in include/so/ground override; split exitStatus tail blr merged. Docs updated.
- next: Claude: Zelda final, then Link (manual splits). Codex: Pit special_s_revolve / ness / lucas in brawl-codex8.

### 2026-10-02T22:04-03:00 · codex · note · f778235 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Promoted mo_fighter/ft_ness/ft_ness_status_uniq_process_attack_s4 (ft_ness): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T22:04-03:00 · codex · note · f778235 (rsbe01_01-support) clean
- codex-parallel: Ness AttackS4 accepted/source-linked, fullREL identity, cleanheader127/127, independent check and postprobePASS. Local commit on codex/fighters2. Next Ness AttackHi4 text113E4..1151C data8988..8A40 bss1E0..1F0 ctors8..C noRO; inherited SmashAttack base and power-event constructor derived from stores/slotB8 and sendEventParents. No main code/header edits.

### 2026-10-02T22:06-03:00 · claude · claim · f778235 (rsbe01_01-support) clean
- task: fighters: absolute-attack-data bitfield pattern -> Zelda final, MK finals
- lease until 2026-10-03T02:06-03:00

### 2026-10-02T22:06-03:00 · codex · note · f778235 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Promoted mo_fighter/ft_ness/ft_ness_status_uniq_process_attack_hi4 (ft_ness): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T22:07-03:00 · codex · note · f778235 (rsbe01_01-support) clean
- codex-parallel: Ness AttackHi4 accepted/source-linked, brawltool promote all gatesPASS. Next Ness SpecialLw: text12CA8..12EB4 data8CF0..8D68 bss240..250 ctors20..24 noRO; source will use existing Stop layout and ref cast, opaque module-local fn_101_B640 remains extern C. Shared RTTI labels named from records for dedupe. No main edit/build/leaseclaim.

### 2026-10-02T22:09-03:00 · codex · note · f778235 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Promoted mo_fighter/ft_ness/ft_ness_status_uniq_process_special_lw (ft_ness): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T22:10-03:00 · codex · note · f778235 (rsbe01_01-support) clean
- codex-parallel: Ness SpecialLw accepted/source-linked after fullREL+normal127/127+independent check+postprobe. Next SpecialLwHold text12EB4..131FC rodata90..A0 data8D68..8DE8 bss250..260 ctors24..28. Six functions including Vec3f ctor; name shared ctor fn_101_1303C. Target effect and sound handles/slots verified against headers. Private evidence fighters2/ft_ness/target_12EB4.txt. No main mutation.

### 2026-10-02T22:13-03:00 · codex · note · f778235 (rsbe01_01-support) dirty 4
- codex-parallel: brawl-codex8: Promoted mo_fighter/ft_ness/ft_ness_status_uniq_process_special_lw_hold (ft_ness): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T22:13-03:00 · codex · note · f778235 (rsbe01_01-support) dirty 4
- codex-parallel: Ness SpecialLwHold accepted/source-linked all promotion gatesPASS. Next AttackHi4Start text11034..113E4 data88F0..8988 bss1D0..1E0 ctors4..8 noRO;20 funcs includes base inlines and eventctor11260. Earlier ftNess adjustor ends11034/classInfoRTTIends88F0; boundaries proved. Extend existing article-manage interface slots14/30/3C, shadow so_article.h only to expose existing methods publicly. Clean source rebuild required; no main edits.

### 2026-10-02T22:16-03:00 · tool · verify · f778235 (rsbe01_01-support) dirty 6
- verified: OK: 127/127 with mo_fighter/ft_zelda/ft_zelda_status_uniq_process_final promoted
- Promoted mo_fighter/ft_zelda/ft_zelda_status_uniq_process_final (ft_zelda): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T22:17-03:00 · codex · note · 0bdbf95 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Promoted mo_fighter/ft_ness/ft_ness_status_uniq_process_attack_hi4_start (ft_ness): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T22:19-03:00 · codex · note · 0bdbf95 (rsbe01_01-support) clean
- codex-parallel: Ness AttackHi4Start accepted/source-linked; all19 diagnostics and fullREL+fresh127/127+independent check+postprobePASS. Next SpecialHi text117B8..11D78 rodata30..58 data8B38..8BB0 bss210..220 ctors14..18. Recover cached modules and positional/link/ground logic; common data84float24 added preserving offsets; unnamed math DOL/module helpers stay extern C. Bounded matching next. Main untouched.

### 2026-10-02T22:23-03:00 · codex · note · 0bdbf95 (rsbe01_01-support) dirty 5
- codex-parallel: brawl-codex8: Promoted mo_fighter/ft_ness/ft_ness_status_uniq_process_special_hi (ft_ness): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T22:23-03:00 · claude · checkpoint · fa9a359 (rsbe01_01-support) clean
- verified: build OK 127/127 after WIP commit
- Zelda final matched (0bdbf95): recovered soCollisionAttackAbsoluteData bitfields; attack-data copy fields now unsigned bitfields (gr_oldin/gr_newpork still match). All 6 Zelda status units done. MK final_attack_gallery WIP committed NonMatching: 8/8 functions match; only gap is a trailing rodata word 0x00000001 (scratch test: 'extern const int k = 1;' emits it, but BEFORE the float pool - target has it AFTER; try defining it after the functions). Stopped: weekly credits ~99%.
- next: Claude/Codex: finish MK gallery rodata word, then MK final_end and final_hit_wait (define ftMetaknightFinalSendLinkEvent/Unlink there; see include/ft/ft_metaknight_final.h).

### 2026-10-02T22:24-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: Ness SpecialHi accepted/source-linked all six funcs/fullREL plus promotion checksPASS. Last Ness TU SpecialHiAttack text11D78..12B9C rodata58..88 data8BB0..8C70 bss220..230 ctors18..1C. Gravity directbase proven by RTTI8BC8; include its header after statusclass to emit prefix. Shared Vec2f lengthSq/multiply/assignment helpers named from bodies; unnamedmath helpers remain extern C. Private m2c/asm fighters2/. Cleanheaderbuild before diffs. Main untouched.

### 2026-10-02T22:32-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: Ness SpecialHiAttack firstdiff6/10; corrected collision-occurrence virtualslot4C (not isChanged58), exact float minimum, operand temporaries and cached posture. DOL8003DC64 reads Vec2f this, rotates by angle via matrix, writes Vec2f out; signature/semantics agree with pinned Vec2f::rot. Named rot__5Vec2fFP5Vec2ff both configs in isolated worktree and use member call to recover argument schedule. Next symbol rebuild/diff; original target asm remains private fighters2/vector_rotate_proof.txt.
