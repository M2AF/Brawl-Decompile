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

### 2026-10-01T14:59-03:00 · claude · verify · 88d8d3f (rsbe01_01-support) clean
- verified: OK: 127/127 at 88d8d3f (Tengan + shared header integrated); st_tengan/st_heal/st_greenhill full-REL byte match
- Clean source rebuild; independent --orig --dtk 127/127; verifier tests OK. 190 TUs.

### 2026-10-01T14:59-03:00 · claude · handoff · 88d8d3f (rsbe01_01-support) clean
- Tengan integrated at 88d8d3f, clean, 127/127. Docs synced.
- next: st_kart capped permuter, or next candidate (tengan Bg/Floor/Ashiba or rerank stage bodies).

### 2026-10-01T15:01-03:00 · claude · claim · 88d8d3f (rsbe01_01-support) clean
- task: st_kart capped permuter: getZoneLightSetIndex then updateRanks
- lease until 2026-10-01T18:01-03:00

### 2026-10-01T15:01-03:00 · claude · note · 88d8d3f (rsbe01_01-support) clean
- Codex given parallel prompt: worktree ../brawl-codex3, branch codex/tengan2 from 88d8d3f; remaining tengan grounds (Bg/Floor/Ashiba) one TU at a time.

### 2026-10-01T15:04-03:00 · claude · checkpoint · 88d8d3f (rsbe01_01-support) clean
- Permuter run 1 STARTED: stKart::getZoneLightSetIndex. Input built by claude_tools/mk_perm_kart_zone.py into evidence/nonmatching/kart/permuter_zone (whole-TU context in PERM_IGNORE, clamp+function permutable, target.o = extracted st_kart.o).
- Command: (decomp-permuter @059609d + local preprocess patch) timeout 1800 ../.venv/Scripts/python.exe permuter.py <dir> -j 12 --stop-on-zero; log <dir>/run.log. Cap 30 min. Base score 6000 (60 s trial: best 5955).
- Stop condition: score 0 or cap. Any output is accepted only via full-REL probe + 127/127.

### 2026-10-01T15:15-03:00 · codex · note · 88d8d3f (rsbe01_01-support) clean
- codex-parallel: fresh brawl-codex3 on codex/tengan2 at 88d8d3f created; local ignored originals/toolchain and independent submodule metadata copied. Starting clean-source baseline configure+ninja, log evidence/nonmatching/tengan/session2/baseline.log; main checkout/Claude lease untouched.

### 2026-10-01T15:18-03:00 · codex · note · 88d8d3f (rsbe01_01-support) clean
- codex-parallel: brawl-codex3 baseline fresh-source build passed 127/127 at 88d8d3f. Selecting grTenganBg FIRST: .text 0x65BC..0x67EC (560 bytes/3 functions), .data 0xAB8..0xDD0 (792 bytes including stripped weak RTTI residue), no rodata/bss/ctors. Testing this inferred smallest boundary via separate-TU full REL probe before any promotion.

### 2026-10-01T15:24-03:00 · codex · note · 88d8d3f (rsbe01_01-support) clean
- codex-parallel: grTenganBg 3/3 instruction comparison and full-REL source byte identity pass. Separate TU naturally reproduces weak RTTI residue. Promotion build with removed ok stamp and post-promotion REL re-probe in flight in brawl-codex3; logs tengan/session2/bg_promoted_*. No next TU code written yet.

### 2026-10-01T15:25-03:00 · codex · note · 88d8d3f (rsbe01_01-support) clean
- codex-parallel: grTenganBg accepted/committed 45388f8 on codex/tengan2; promoted 127/127 and re-probe st_tengan pass. Selecting grTenganAshiba NEXT before source edits: .text 0x7174..0x77B4 (1600 bytes/6 functions), .data 0xFF0..0x1208 (536 bytes), .rodata 0x108..0x114 (12 bytes), no bss/ctors. Larger Floor remains unstarted.

### 2026-10-01T15:29-03:00 · codex · note · 88d8d3f (rsbe01_01-support) clean
- codex-parallel: grTenganAshiba 6/6 normalized instruction comparison and full source REL byte identity pass. Starting removed-stamp promotion build and post-promotion st_tengan re-probe, logs tengan/session2/ashiba_promoted_*. Floor not started; main/Claude lease untouched.

### 2026-10-01T15:32-03:00 · codex · note · 88d8d3f (rsbe01_01-support) clean
- codex-parallel: grTenganAshiba accepted/committed eb439b1; promoted 127/127 and st_tengan full-REL re-probe pass. Selecting LAST TU grTenganFloor before edits: .text 0x67EC..0x7174 (2440 bytes/7 functions), .data 0xDD0..0xFF0 (544 bytes), .rodata 0xF8..0x108 (16 bytes), no bss/ctors. Bounded source pass: initial separate TU plus at most 8 understood layout/boolean variants, stop by 15:55 -03:00 if unresolved; no flag sweep. Logs tengan/session2/floor_*.

### 2026-10-01T15:34-03:00 · claude · checkpoint · 88d8d3f (rsbe01_01-support) clean
- Permuter run 1 FINISHED (getZoneLightSetIndex): hit 30-min cap (timeout exit 124) at 15:34 after 22,833 iterations. Best 5880 vs base 6000; NO match. Best outputs (output-5880-1..3) only hoist the second clamp argument into a temp; not applied. Evidence: evidence/nonmatching/kart/permuter_zone (run.log, outputs, base.c, compile.sh, settings.toml, target.o; builder claude_tools/mk_perm_kart_zone.py).
- Permuter run 2 STARTED 15:35: updateRanks, dir evidence/nonmatching/kart/permuter_ranks (builder mk_perm_kart_ranks.py; loops hoisted via hoist_for.py, verified identical codegen). Same command, timeout 1800, cap 30 min, stop on 0.

### 2026-10-01T15:36-03:00 · claude · note · 88d8d3f (rsbe01_01-support) clean
- Permuter scoring note: decomp-permuter objdumps the WHOLE target/candidate object, so each run's score includes the other st_kart near-miss as a constant floor (both bases = 6000). A perfect updateRanks will not reach 0; evaluate best outputs in the real TU with kdiff/probe.
- Run 2 (updateRanks) starting now, timeout 1800 (30 min cap), dir evidence/nonmatching/kart/permuter_ranks/run.log.

### 2026-10-01T15:49-03:00 · codex · note · 88d8d3f (rsbe01_01-support) clean
- codex-parallel: Floor bounded pass complete: five of seven functions match diagnostic comparison; updateVisibility trailing blr and changeAnimation mask/stack-slot differences remain. Floor stays NonMatching. Final build, failed Floor full-REL probe and accepted Bg/Ashiba re-probes will be logged under evidence/nonmatching/tengan/session2/. No new matching trials or permuter; no main edits or lease claim.

### 2026-10-01T15:52-03:00 · codex · note · 88d8d3f (rsbe01_01-support) clean
- codex-parallel: Tengan remaining grounds finished on clean isolated codex/tengan2 HEAD 6351813. Accepted source-linked TUs: Bg 45388f8 and Ashiba eb439b1, each full-REL/pro-motion 127/127 plus post-promotion probe. Floor WIP 6351813 stays NonMatching: 5/7 instruction diagnostics, failed source full-REL SHA1 f909ded2670caa7a47a9a1a531f4a09aa9940983. Final stamp-removed normal build + independent verifier pass 127/127, Bg/Ashiba final full-REL probes identical, 128 originals identical. Status/repro/integration order in codex_parallel/TENGAN_STATUS.md; all private evidence under evidence/nonmatching/tengan/session2/. No main edit, lease claim/release, integration or push. No Codex jobs running; all three requested grounds done or attempted.

### 2026-10-01T15:59-03:00 · claude · checkpoint · 6bf569c (rsbe01_01-support) clean
- Cherry-picked codex/tengan2 45388f8 -> a29d1b2 (Bg), eb439b1 -> 625b4c8 (Ashiba), 6351813 -> 6bf569c (Floor NonMatching) onto 88d8d3f, no conflicts. Running clean rebuild + checks; log evidence/nonmatching/tengan2_integration.log. Permuter run 2 still running in parallel (unaffected: preprocessed input, private target copy).

### 2026-10-01T16:07-03:00 · claude · checkpoint · fb2ad57 (rsbe01_01-support) clean
- Permuter run 2 FINISHED (updateRanks): cap at 16:06 (exit 124), 22,545 iterations, best score 5630; in-TU check of 15 best outputs: best 13 diff lines vs 16 baseline, no match, nothing applied. st_kart stays NonMatching (parked). Notes appended to evidence/nonmatching/kart/NOTES.md.
- Codex given next task: worktree ../brawl-codex4, branch codex/stages from fb2ad57 (tbreak, oldin stage bodies, then reranked madein-style).

### 2026-10-01T16:07-03:00 · claude · handoff · fb2ad57 (rsbe01_01-support) clean
- fb2ad57 clean, 127/127. Tengan Bg/Ashiba integrated, worktrees cleaned, st_kart permuter runs done (no match, parked).
- next: Integrate codex/stages when reported; main line: choose non-overlapping candidate.

### 2026-10-01T16:11-03:00 · codex · note · fb2ad57 (rsbe01_01-support) clean
- codex-parallel: Fresh brawl-codex4 codex/stages at fb2ad57 prepared with private local orig/toolchain copies and independent submodule metadata. Starting clean-source configure/ninja baseline; log evidence/nonmatching/stages/baseline.log. Main read only and no lease claim. Only stage bodies tbreak then oldin will be edited here.

### 2026-10-01T16:12-03:00 · claude · note · fb2ad57 (rsbe01_01-support) clean
- Removed worktree ../brawl-codex3 (codex/tengan2) after checks: clean, all 3 commits on main (a29d1b2/625b4c8/6bf569c), no code diff vs main, no junctions, orig copy real; main.dol SHA-1 unchanged. Branch kept. User granted standing permission to delete integrated Codex copies after such checks.

### 2026-10-01T16:16-03:00 · codex · note · fb2ad57 (rsbe01_01-support) clean
- codex-parallel: Baseline fresh isolated fb2ad57 passes 127/127 (stages/baseline.log). Selecting stTargetBreak stage body before source edits: .text [0x70,0x1B64), .data [0,0xCE8), .rodata [0,0xA0), .bss [8,0x28), .ctors [0,4); no owned dtors. Includes module-local grTargetBreakGimmickSpring subclass/weak virtuals; gr_tbreak.cpp remains separate/source-linked. Initial implementation plus at most eight focused matching variants; no flag sweeps/permuter. Evidence only nonmatching/tbreak/.

### 2026-10-01T16:34-03:00 · codex · note · fb2ad57 (rsbe01_01-support) clean
- codex-parallel: Tbreak corrected diagnostic 56/58; only createObj/update remain, including aggregate stack copies and scheduling differences. Full-REL probe first exposed Vec3f::lengthSq declaration-only lowering (replaced with typed inline arithmetic/SDK vector helpers), then a pre-existing grGimmickSpring startup mangling mismatch. Isolated RSBE01_01 sora_melee symbol at 0x26FFC4 is being corrected to header/base-virtual LayerType signature; no main edit. Starting full baseline rebuild and source probe; tbreak/final_build.log and final_probe.log. No promotion without full bytes/relocations.

### 2026-10-01T16:41-03:00 · claude · note · fb2ad57 (rsbe01_01-support) clean
- Added status page research/status/brawl_status.html + generator claude_tools/mk_status_page.py (reads report.json etc.); verified by Edge headless screenshots at 1440px and 560px. Regenerate after each promotion/integration.

### 2026-10-01T16:43-03:00 · codex · note · fb2ad57 (rsbe01_01-support) clean
- codex-parallel: Tbreak NonMatching committed a3c9ef6, 56/58 instruction diagnostics; full-REL false 23816 vs 23744, hash d708ab6748f1adad495654a569d64f1af837f3ed. Normal build 127/127; no source-linked addition. Selecting stOldin stage body BEFORE source: .text [0x70,0x418C), .data [0,0x6C0), .rodata [0,0xE4), .bss [8,0x18), .ctors [0,4); no dtors. Evidence shows this module has NO static pair (initializer only registers class info at bss14); do not add a fabricated pair. Stage size608, four unnamed 0x84-byte DOL-managed members plus three snd3DGenerator members and large hazard state machines. Start with lifetime/layout recovery; evidence only nonmatching/oldin/. No optional candidate until Oldin assessment completed.

### 2026-10-01T16:50-03:00 · claude · checkpoint · fb2ad57 (rsbe01_01-support) clean
- Building local toolkit research/brawltool (CLI + tkinter GUI, launch BrawlTool.bat): build/verify, independent check, status page, rank, split, draft (m2c @708d2d2 cloned to research/tools/m2c), diff, probe, promote (all gates), integrate (cherry-pick + clean rebuild + probes), cleanup (worktree checks per user rule). No repo changes.

### 2026-10-01T16:56-03:00 · claude · checkpoint · fb2ad57 (rsbe01_01-support) clean
- BrawlTool v1 ready: research/brawltool (README), launchers BrawlTool.bat (GUI) and brawltool-cli.bat. Tested: rank, diff (st_kart 61/63), probe (heal PASS), promote refusal (kart, no edits), integrate no-op, cleanup no-op, split (written + reverted), draft (m2c), status, build 127/127, check 127/127, GUI screenshot.

### 2026-10-01T17:00-03:00 · claude · note · fb2ad57 (rsbe01_01-support) clean
- BrawlTool: added ordered TU dropdown (our in-progress, upstream in-progress, ours matched, upstream matched; fills Module/Unit). Screenshot-verified.

### 2026-10-01T17:03-03:00 · tool · claim · fb2ad57 (rsbe01_01-support) clean
- task: autopilot run
- lease until 2026-10-01T19:03-03:00

### 2026-10-01T17:03-03:00 · tool · verify · fb2ad57 (rsbe01_01-support) clean
- verified: OK: 127/127 at fb2ad57 (autopilot)
- Preflight build: 127/127
- Promoted: none (docs entries pending for any promoted TU)
- Still in progress (ours): cm_controller_menu_pad, gr_battle, gr_battle_ground, st_battle, st_kart, gr_tengan_floor
- HEAD: fb2ad57 docs: record Tengan Bg/Ashiba integration and progress for RSBE01_01

### 2026-10-01T17:03-03:00 · tool · handoff · fb2ad57 (rsbe01_01-support) clean
- autopilot finished
- next: see last tool entry

### 2026-10-01T17:04-03:00 · claude · checkpoint · fb2ad57 (rsbe01_01-support) clean
- BrawlTool autopilot added (GUI 'Plan (dry run)' / 'Run autopilot'; CLI autopilot [--dry-run|--no-integrate|--no-promote]). Real run tested with --no-integrate: lease claimed/released as 'tool', 127/127, 6 WIP TUs diffed/probed (none match, nothing promoted), status + journal written, git clean. DOL units are diffed but never auto-promoted. codex/stages has 1 unintegrated commit (Codex still working). Journal rotated (48 entries archived).

### 2026-10-01T17:27-03:00 · codex · note · fb2ad57 (rsbe01_01-support) clean
- codex-parallel: Oldin complete draft bodies now compile (constructor, dispatcher, six coroutine/helper bodies, attacks, collision). Typed parameter/name/sequence pools recovered; no fabricated static pair. 41/53 instruction diagnostics before final clean rebuild; none promoted. Found DOL gfModelAnimation mangling errors at800283BC/80028498/8002858C: evidence confirms u32 count(void), setFrame(float), getFrame(void); isolated rev1 symbols corrected. Next clean source-cache rebuild, full Oldin REL probe (including accepted ground), independent127 and original hash check. BrawlTool CLI currently hardcodes main checkout; using cwd-aware helpers directly. No jobs/permuter/main edits or lease claim.

### 2026-10-01T17:39-03:00 · codex · note · fb2ad57 (rsbe01_01-support) clean
- codex-parallel: Oldin draft committed 91b5438 on codex/stages (brawl-codex4), clean. All bodies compile, 41/53 instruction diagnostics; structural plus register differences remain. Full source REL FAILS: 34160 vs32744, SHA1 89eb72deac66fa49957ac9e65161b681747c4143 vs905f78be9ff518c881f446ef8c9d667252db0782. Kept NonMatching; no allowlist additions. Fresh source-cache fallback build127/127; independent --orig --dtk127/127; ten verifier tests pass. Best sources/commands/input hashes/private diffs frozen under evidence/nonmatching/oldin/. Target-break a3c9ef6 also NM. No new source-linked TUs. Main unchanged/no lease claim/push. Next: user-authorized BrawlTool isolated-worktree selection and local review logging; optional third stage deferred.

### 2026-10-01T17:44-03:00 · codex · note · fb2ad57 (rsbe01_01-support) clean
- codex-parallel: brawl-codex4: Local review st_oldin/mo_stage/st_oldin/st_oldin: full source REL not accepted; no promotion. Evidence evidence\nonmatching\st_oldin\brawl-codex4\st_oldin_20261001T204455.123970Z.

### 2026-10-01T17:46-03:00 · codex · note · fb2ad57 (rsbe01_01-support) clean
- codex-parallel: brawl-codex4: Local review st_heal/mo_stage/st_heal/st_heal: full source REL matches; no promotion. Evidence evidence\nonmatching\st_heal\brawl-codex4\st_heal_20261001T204607.909453Z.

### 2026-10-01T17:46-03:00 · codex · note · fb2ad57 (rsbe01_01-support) clean
- codex-parallel: brawl-codex4: Local review st_oldin/mo_stage/st_oldin/st_oldin: full source REL not accepted; no promotion. Evidence evidence\nonmatching\st_oldin\brawl-codex4\st_oldin_20261001T204657.416717Z.

### 2026-10-01T17:47-03:00 · codex · note · fb2ad57 (rsbe01_01-support) clean
- codex-parallel: brawl-codex4: Local review st_tbreak/mo_stage/st_tbreak/st_tbreak: full source REL not accepted; no promotion. Evidence evidence\nonmatching\st_tbreak\brawl-codex4\st_tbreak_20261001T204700.670712Z.

### 2026-10-01T17:51-03:00 · codex · note · fb2ad57 (rsbe01_01-support) clean
- codex-parallel: brawl-codex4: Local review st_heal/mo_stage/st_heal/st_heal: full source REL matches; no promotion. Evidence evidence\nonmatching\st_heal\brawl-codex4\st_heal_20261001T205136.489165Z.

### 2026-10-01T17:55-03:00 · codex · note · fb2ad57 (rsbe01_01-support) clean
- codex-parallel: Finished this pass. brawl-codex4 codex/stages clean91b5438; Target-break a3c9ef6 and Oldin91b5438 remain NonMatching. Diagnostic56/58 and41/53 respectively; full source RELs both fail; zero new source-linked TUs. Fresh source-cache normal build and independent --orig --dtk127/127; ten verifier tests pass. BrawlTool worktree --repo + private review command installed; 12 tool tests/static compile pass, actual heal review byte-identical, both WIPs correctly rejected. Parallel integrate/cleanup/autopilot blocked; no lease claims/verified-board updates; rollback preserves dirty bytes. Tool backup+patch+hashes evidence/nonmatching/brawltool_before_worktree_support. Main unchanged fb2ad57 clean; no merges/rebases/pushes. No jobs. Handoff codex_parallel/STAGES_STATUS.md + BRAWLTOOL_STATUS.md; optional fresh chunk ranking NEXT_STAGE_QUEUE.md, boundaries unproven so no third TU started.

### 2026-10-01T18:24-03:00 · tool · claim · fb2ad57 (rsbe01_01-support) clean
- task: autopilot run
- lease until 2026-10-01T20:24-03:00

### 2026-10-01T18:26-03:00 · tool · verify · fe9e4d6 (rsbe01_01-support) clean
- verified: OK: 127/127 after integration
- Integrated 2 commit(s) from codex/stages: clean rebuild 127/127, independent OK, probes OK for n/a.

### 2026-10-01T18:26-03:00 · tool · verify · fe9e4d6 (rsbe01_01-support) clean
- verified: OK: 127/127 at fe9e4d6 (autopilot)
- Preflight build: 127/127
- Integrated 2 commit(s) from codex/stages
- Worktrees were NOT removed (Codex may still use them); use 'Clean up worktree' when Codex is done.
- Promoted: none (docs entries pending for any promoted TU)
- Still in progress (ours): cm_controller_menu_pad, gr_battle, gr_battle_ground, st_battle, st_kart, st_oldin, st_tbreak, gr_tengan_floor
- HEAD: fe9e4d6 Add NonMatching Oldin stage body and reviewed layout evidence

### 2026-10-01T18:26-03:00 · tool · handoff · fe9e4d6 (rsbe01_01-support) clean
- autopilot finished
- next: see last tool entry

### 2026-10-01T18:26-03:00 · tool · note · fe9e4d6 (rsbe01_01-support) clean
- Removed integrated worktree C:\Users\balla\Documents\Brawl Decompile\brawl-codex4 (codex/stages) after checks; branch kept; originals unchanged.

### 2026-10-01T18:27-03:00 · claude · checkpoint · fe9e4d6 (rsbe01_01-support) clean
- Integrated codex/stages via BrawlTool autopilot: a3c9ef6/91b5438 -> main (HEAD fe9e4d6), clean rebuild 127/127, independent OK, heal probe OK; tbreak/oldin remain NonMatching (probes FAIL, section sizes differ). Removed worktree brawl-codex4 after checks (main.dol SHA-1 unchanged). Fixed autopilot to refresh the WIP list after integration; Codex's 12 tool tests pass (run as python -m unittest brawltool.test_worktree).

### 2026-10-01T18:28-03:00 · claude · claim · fe9e4d6 (rsbe01_01-support) clean
- task: Melee stage bodies (st_dx*), one TU at a time
- lease until 2026-10-01T21:28-03:00

### 2026-10-01T18:29-03:00 · codex · note · fe9e4d6 (rsbe01_01-support) clean
- codex-parallel: Receiver mainfe9e4d6 clean, lease free; no claim. Created brawl-codex5/codex/finish from fe9e4d6. Local ignored originals/toolchains/headers copied; independent header Git metadata. Starting BrawlTool build --clean then check, private logs evidence/nonmatching/finish5/. First TU Target-break; verify section ownership/ordering before createObj/update. Main read-only, no merge/rebase/push.

### 2026-10-01T18:29-03:00 · claude · checkpoint · fe9e4d6 (rsbe01_01-support) clean
- Started st_dxgreens stage body (Green Greens, module 79): text 0x70..0x1998 (incl sinit 0x1888, classinfo 0x18EC-0x1998), rodata 0..0x10, data 0..0x490, bss 8..0x18, ctors 0..4 (ownership from label refs; no overlap with ground code). Stage size 0x804; ctor out of line (fn_79_A4); unnamed DOL callees fn_8015C238/fn_8015C2BC near nw4r LinkListImpl.

### 2026-10-01T18:31-03:00 · codex · note · fe9e4d6 (rsbe01_01-support) dirty 3
- codex-parallel: brawl-codex5: Local review st_tbreak/mo_stage/st_tbreak/st_tbreak: full source REL not accepted; no promotion. Evidence evidence\nonmatching\st_tbreak\brawl-codex5\st_tbreak_20261001T213133.550657Z.

### 2026-10-01T18:34-03:00 · codex · note · fe9e4d6 (rsbe01_01-support) dirty 3
- codex-parallel: brawl-codex5: Local review st_tbreak/mo_stage/st_tbreak/st_tbreak: full source REL not accepted; no promotion. Evidence evidence\nonmatching\st_tbreak\brawl-codex5\st_tbreak_20261001T213443.353999Z.

### 2026-10-01T18:40-03:00 · codex · note · fe9e4d6 (rsbe01_01-support) dirty 3
- codex-parallel: brawl-codex5: Local review st_tbreak/mo_stage/st_tbreak/st_tbreak: full source REL not accepted; no promotion. Evidence evidence\nonmatching\st_tbreak\brawl-codex5\st_tbreak_20261001T214036.758113Z.

### 2026-10-01T18:42-03:00 · codex · note · fe9e4d6 (rsbe01_01-support) dirty 3
- codex-parallel: brawl-codex5: Local review st_tbreak/mo_stage/st_tbreak/st_tbreak: full source REL not accepted; no promotion. Evidence evidence\nonmatching\st_tbreak\brawl-codex5\st_tbreak_20261001T214218.696656Z.

### 2026-10-01T18:44-03:00 · codex · note · fe9e4d6 (rsbe01_01-support) dirty 3
- codex-parallel: brawl-codex5: Local review st_tbreak/mo_stage/st_tbreak/st_tbreak: full source REL not accepted; no promotion. Evidence evidence\nonmatching\st_tbreak\brawl-codex5\st_tbreak_20261001T214424.623611Z.

### 2026-10-01T18:44-03:00 · codex · note · fe9e4d6 (rsbe01_01-support) dirty 3
- codex-parallel: Target-break bounded pass complete before build/commit. Data3304 bytes raw identical after class declaration reorder + debug newline correction; packed attack101 byte corrected. Object RO156 vs160 is final4-byte alignment ownership, proved entire linked RO164 identical; no fake padding/global or split-boundary change. createObj848 vs851 instructions, update441 vs440; diagnostics56/58 still. Full REL rejects. Keeping NonMatching; no permuter/flags. Starting clean worktree build/check, logs finish5/tbreak_gate_*.log; then commit TU and take Floor.

### 2026-10-01T18:47-03:00 · codex · note · fe9e4d6 (rsbe01_01-support) dirty 3
- codex-parallel: Target-break parked/committed3432777 (check actual local hash if drift) on codex/finish. Clean build/check127/127; source remainsNonMatching/no allowlist. Linked RO164 exactly equals reference; rawdata3304 identical; code56/58, wholeREL23712 SHA1e5825a6a34db488ea86291e005077b380dd66d4f fails. No permuter/flags. Main has unrelated dxgreens WIP by other agent; left untouched. Next Floor text6A1C..71FC/dataDA8..10F0 (verify ranges against config), reproduce current source-probe and recover old model-import spellings before matching.

### 2026-10-01T18:47-03:00 · codex · note · fe9e4d6 (rsbe01_01-support) dirty 3
- codex-parallel: brawl-codex5: Local review st_tengan/mo_stage/st_tengan/gr_tengan_floor: full source REL not accepted; no promotion. Evidence evidence\nonmatching\st_tengan\brawl-codex5\gr_tengan_floor_20261001T214711.617780Z.

### 2026-10-01T18:47-03:00 · codex · note · fe9e4d6 (rsbe01_01-support) dirty 3
- codex-parallel: Correction to immediately preceding note: actual Target-break commit is e5b5e9e, NOT3432777. That note also gave unverified Floor ranges; disregard them. Read the current split before edits; exact confirmed ranges follow in next checkpoint. No past entries edited.

### 2026-10-01T18:51-03:00 · codex · note · fe9e4d6 (rsbe01_01-support) dirty 3
- codex-parallel: Floor exact confirmed ownership text67EC..7174, rodataF8..108, dataDD0..FF0; no bss/ctors. On codex/finish only, correcting obsolete setFrame/getFrameCount imports to integrated Ff/Fv spellings before byte probe. Target-break parked commit e5b5e9e verified build/check127/127; STAGES_STATUS now current. Main/Claude lease untouched.

### 2026-10-01T18:51-03:00 · codex · note · fe9e4d6 (rsbe01_01-support) dirty 3
- codex-parallel: brawl-codex5: Local review st_tengan/mo_stage/st_tengan/gr_tengan_floor: full source REL not accepted; no promotion. Evidence evidence\nonmatching\st_tengan\brawl-codex5\gr_tengan_floor_20261001T215139.896393Z.

### 2026-10-01T18:57-03:00 · codex · note · fe9e4d6 (rsbe01_01-support) dirty 3
- codex-parallel: brawl-codex5: Local review st_tengan/mo_stage/st_tengan/gr_tengan_floor: full source REL matches; no promotion. Evidence evidence\nonmatching\st_tengan\brawl-codex5\gr_tengan_floor_20261001T215714.995835Z.

### 2026-10-01T18:58-03:00 · codex · note · fe9e4d6 (rsbe01_01-support) dirty 3
- codex-parallel: Floor full source REL PASS57504 SHA1 839c8054988ecf7f32862da78fc429daea8833b1; nested inline helpers + defined u8 unsigned comparison match changeAnimation, local epilogue label fixes visibility. Beginning promote/build/check gates in codex/finish only. Private review st_tengan/brawl-codex5/gr_tengan_floor_20261001T215714.995835Z. Main/lease untouched.

### 2026-10-01T18:58-03:00 · codex · note · fe9e4d6 (rsbe01_01-support) dirty 3
- codex-parallel: brawl-codex5: Promoted mo_stage/st_tengan/gr_tengan_floor (st_tengan): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-01T18:59-03:00 · codex · note · fe9e4d6 (rsbe01_01-support) dirty 3
- codex-parallel: brawl-codex5: Local review st_tengan/mo_stage/st_tengan/gr_tengan_floor: full source REL matches; no promotion. Evidence evidence\nonmatching\st_tengan\brawl-codex5\gr_tengan_floor_20261001T215914.230414Z.

### 2026-10-01T19:00-03:00 · codex · note · fe9e4d6 (rsbe01_01-support) dirty 3
- codex-parallel: Tengan Floor accepted/source-linked on codex/finish; actual commit hash recorded in STAGES_STATUS (read git). Full REL byte-identical57504 SHA1 839c8054988ecf7f32862da78fc429daea8833b1, promotion gates + final build/check127/127 PASS, originals unchanged. One new source-linked TU; Target-break remains NonMatching e5b5e9e. Next bounded Oldin DATA audit: text70..418C, rodata0..E4, data0..6C0, bss8..18, ctors0..4. No main edits/lease claim/merge/rebase/push.

### 2026-10-01T19:00-03:00 · codex · note · fe9e4d6 (rsbe01_01-support) dirty 3
- codex-parallel: brawl-codex5: Local review st_oldin/mo_stage/st_oldin/st_oldin: full source REL not accepted; no promotion. Evidence evidence\nonmatching\st_oldin\brawl-codex5\st_oldin_20261001T220009.695922Z.

### 2026-10-01T19:05-03:00 · codex · note · fe9e4d6 (rsbe01_01-support) dirty 3
- codex-parallel: brawl-codex5: Local review st_oldin/mo_stage/st_oldin/st_oldin: full source REL not accepted; no promotion. Evidence evidence\nonmatching\st_oldin\brawl-codex5\st_oldin_20261001T220504.767039Z.

### 2026-10-01T19:07-03:00 · codex · note · fe9e4d6 (rsbe01_01-support) dirty 3
- codex-parallel: brawl-codex5: Local review st_oldin/mo_stage/st_oldin/st_oldin: full source REL not accepted; no promotion. Evidence evidence\nonmatching\st_oldin\brawl-codex5\st_oldin_20261001T220756.584627Z.

### 2026-10-01T19:08-03:00 · codex · note · fe9e4d6 (rsbe01_01-support) dirty 3
- codex-parallel: Oldin data finishing complete; raw rodata228/data1728/bss16/ctors4 byte-equal, no split changes/padding. Corrected literal precision, function order and observed timer/bounds values. 41/53 functions; structural code/relocations still fail wholeREL34152 SHA1 2a40ccbe333d93caf7befdc426efb928716fee69 vs32744. Parking NonMatching after bounded pass; starting final fallback build/check and accepted Floor re-probe. No flags/permuter/main edits. Evidence finish5 and st_oldin/brawl-codex5.

### 2026-10-01T19:08-03:00 · codex · note · fe9e4d6 (rsbe01_01-support) dirty 3
- codex-parallel: brawl-codex5: Local review st_oldin/mo_stage/st_oldin/st_oldin: full source REL not accepted; no promotion. Evidence evidence\nonmatching\st_oldin\brawl-codex5\st_oldin_20261001T220847.128207Z.

### 2026-10-01T19:09-03:00 · codex · note · fe9e4d6 (rsbe01_01-support) dirty 3
- codex-parallel: brawl-codex5: Local review st_tengan/mo_stage/st_tengan/gr_tengan_floor: full source REL matches; no promotion. Evidence evidence\nonmatching\st_tengan\brawl-codex5\gr_tengan_floor_20261001T220909.678440Z.

### 2026-10-01T19:11-03:00 · codex · note · fe9e4d6 (rsbe01_01-support) dirty 3
- codex-parallel: Finishing pass complete; brawl-codex5/codex/finish CLEAN at fd966e0. Local commits e5b5e9e Target-break parked56/58, 90d4a16 Floor ACCEPTED source-linked/fullREL57504 SHA1 839c8054988ecf7f32862da78fc429daea8833b1, fd966e0 Oldin parked41/53 with raw data sections recovered. Final build/check127/127 and Floor wholeREL re-probe PASS; originals unchanged. One new source-linked TU; no function-only promotions. STAGES_STATUS and finish5 README/snapshots/audit written; no jobs/permuter/flag sweep/main edits/lease claim/merge/rebase/push. Only lease owner integrates three commits and repeats clean gates, preserving Claude WIP.

### 2026-10-01T19:30-03:00 · claude · handoff · 76d7147 (rsbe01_01-support) clean
- st_dxgreens WIP committed 76d7147 (65/69, NonMatching); BrawlTool gained errors/variants commands.
- next: Autopilot integrating codex/finish.

### 2026-10-01T19:30-03:00 · tool · claim · 76d7147 (rsbe01_01-support) clean
- task: autopilot run
- lease until 2026-10-01T21:30-03:00

### 2026-10-01T19:31-03:00 · tool · verify · 9ec5405 (rsbe01_01-support) clean
- verified: OK: 127/127 after integration
- Integrated 3 commit(s) from codex/finish: clean rebuild 127/127, independent OK, probes OK for mo_stage/st_tengan/gr_tengan.

### 2026-10-01T19:31-03:00 · tool · verify · 9ec5405 (rsbe01_01-support) clean
- verified: OK: 127/127 at 9ec5405 (autopilot)
- Preflight build: 127/127
- Integrated 3 commit(s) from codex/finish
- Worktrees were NOT removed (Codex may still use them); use 'Clean up worktree' when Codex is done.
- Promoted: none (docs entries pending for any promoted TU)
- Still in progress (ours): cm_controller_menu_pad, gr_battle, gr_battle_ground, st_battle, st_dxgreens, st_kart, st_oldin, st_tbreak
- HEAD: 9ec5405 Recover Oldin literal ordering and observed timer values

### 2026-10-01T19:31-03:00 · tool · handoff · 9ec5405 (rsbe01_01-support) clean
- autopilot finished
- next: see last tool entry

### 2026-10-01T19:32-03:00 · tool · note · 9ec5405 (rsbe01_01-support) clean
- Removed integrated worktree C:\Users\balla\Documents\Brawl Decompile\brawl-codex5 (codex/finish) after checks; branch kept; originals unchanged.

### 2026-10-01T19:32-03:00 · claude · checkpoint · 9ec5405 (rsbe01_01-support) clean
- Committed st_dxgreens WIP 76d7147 (65/69, NonMatching). Autopilot integrated codex/finish -> 9ec5405 (Tengan Floor matched; tbreak/oldin improved NonMatching): clean rebuild 127/127, independent OK; floor full-REL probe PASS. Removed brawl-codex5 after checks.
- BrawlTool: new errors + variants commands (README); integrate now detects every newly-promoted object on multi-object configure lines.

### 2026-10-01T19:35-03:00 · claude · claim · 9ec5405 (rsbe01_01-support) clean
- task: fighters (ft_*): recon + upstream NonMatching fighter TUs, then smallest fighter TUs
- lease until 2026-10-01T22:35-03:00

### 2026-10-01T19:35-03:00 · claude · note · 9ec5405 (rsbe01_01-support) clean
- Work split agreed with user: Codex = stages (st_*), Claude = fighters (ft_*). Keep module areas separate to avoid conflicts.

### 2026-10-01T19:35-03:00 · codex · note · 9ec5405 (rsbe01_01-support) clean
- codex-parallel: Created brawl-codex6 branch codex/dx at9ec5405; isolated originals/compiler/tools/BrawlHeaders copies. Main clean receiver at9ec5405; lease not claimed. Beginning baseline build --clean + check, logs evidence/nonmatching/dx6/baseline_*.log. Next Onett boundary derivation, then Big Blue; one TU at a time.

### 2026-10-01T19:38-03:00 · codex · note · 9ec5405 (rsbe01_01-support) clean
- codex-parallel: Baseline build/check127/127 PASS. Chosen Onett stDxOnett size300, module78 stage text70..1684, rodata0..58, data0..548 (through base class-info RTTI), bss8..18, ctors0..4. Ground factory1684/constantpool58/stringpool548 onward stays extracted. Reference proof saved evidence/nonmatching/dx6/onett_ownership.json. Beginning split/draft in codex/dx; main/lease untouched.

### 2026-10-01T19:55-03:00 · codex · note · 9ec5405 (rsbe01_01-support) dirty 6
- codex-parallel: Onett source/header draft compiles; diagnostic63/71, raw rodata/data/ctors identical (not REL acceptance). Named81 owned function/metadata symbols after recovering vtable hierarchy. Added ABI-preserving camera field names; starting isolated clean build, evidence/nonmatching/dx6/onett_clean_build.log. Main and Claude lease untouched.

### 2026-10-01T19:56-03:00 · claude · checkpoint · 9ec5405 (rsbe01_01-support) dirty 6
- verified: ninja OK 127/127; brawltool diff 8/10; probe links (REL 16 bytes short due to the 2 near-misses)
- Marth special_hi (first fighter TU) drafted: src/mo_fighter/ft_marth/ft_marth_status_uniq_process_special_hi.cpp + include/ft/ft_kinetic_energy.h + include/so/so_enable.h override (enable/unable setters). KEY FINDING: fighter RELs use cflags_fighter (-O2,s) like Purin; switched ft_marth to it (outlined Vec3f ctor / class ctor / 0x48 sinit match only at -O2,s). Techniques: reference dynamic_cast<T&> (isref=1), Vec2f::copy for getSumSpeed result (word copy), out-of-line static abs() under dont_inline, execStop/execFixPos defined out of class between execStatus and exitStatus. Symbol renames (both configs): ft_marth special_hi fns/vtable/RTTI, Vec3f ctor 77F4, soStatusUniqProcess base inlines B514-B53C, kinetic RTTI labels, g_ftMarthStatusUniqProcessSpecialHi (bss 1B4, referenced by ft_marth.cpp); sora_melee 89DAC/15CF90/15CF5C named ftKineticEnergyClearUnable/mulBrake/mulSpeedX (descriptive, originals unknown). Status 8/10 functions; initStatus = f30/f31 reg alloc around speed.x and 0.0f; execStatus = constant 11 held in r28. Build 127/127 OK. Not committed.
- next: variants/permuter on initStatus (capped), then the 11; then probe + commit NonMatching WIP

### 2026-10-01T20:02-03:00 · codex · note · 9171889 (rsbe01_01-support) dirty 6
- codex-parallel: brawl-codex6: Local review st_dxonett/mo_stage/st_dxonett/st_dxonett: full source REL not accepted; no promotion. Evidence evidence\nonmatching\st_dxonett\brawl-codex6\st_dxonett_20261001T230203.282716Z.

### 2026-10-01T20:04-03:00 · claude · checkpoint · 8ad4139 (rsbe01_01-support) clean
- verified: ninja OK 127/127 at 8ad4139; diff 9/10; probe REL same length, .text -4
- Committed 8ad4139: Marth special_hi WIP 9/10 (initStatus now matches via cached speedX + reused zero local). ft_marth on cflags_fighter (-O2,s). Remaining: execStatus 'li r28,11' held after controller dynamic_cast (same idiom in Dedede 0xE370/0xF77C) - ~30 source forms tried, all fold; documented in docs/RSBE01_01.md. Fighter recipe for other status TUs: -O2,s; ref dynamic_cast; Vec2f::copy for getSumSpeed; out-of-line helpers defined in text order; rename vtable/RTTI/instance (instance is global, referenced by ft_<char>.cpp).
- next: special_lw / special_s with the same recipe; consider switching all ft_* modules to cflags_fighter after a 2nd fighter confirms

### 2026-10-01T20:05-03:00 · codex · note · 8ad4139 (rsbe01_01-support) clean
- codex-parallel: brawl-codex6: Local review st_dxonett/mo_stage/st_dxonett/st_dxonett: full source REL not accepted; no promotion. Evidence evidence\nonmatching\st_dxonett\brawl-codex6\st_dxonett_20261001T230507.618130Z.

### 2026-10-01T20:05-03:00 · claude · verify · 8ad4139 (rsbe01_01-support) clean
- verified: verify_manifest 127/127 at 8ad4139
- Verified main after the other Claude session's upstream-PR port (9171889: st_gw, st_mansion, small PRs, tools/split_gaps.py) plus my Marth WIP (8ad4139) on top: build OK, tools/verify_manifest.py OK 127/127. Dropped stash 'marth WIP before upstream port' after confirming it was an older snapshot fully superseded by 8ad4139.
- next: other session: status page regen + docs entries for the port; me: Marth special_lw/special_s

### 2026-10-01T20:08-03:00 · claude · checkpoint · (rsbe01_01-support) clean
- Finished the upstream-PR port bookkeeping: docs/RSBE01_01.md "Ported upstream PRs" section committed; status page regenerated (total 1.28%, 9 cards) from the 127/127 build at 8ad4139.
- Port content (9171889): st_gw x5, st_mansion x4, __init_cpp_exceptions, nt_send, mu_adv_game_over, em_external_value_accesser fully matching on rev1; gf_task_scheduler 18/20 and st_emblem 54/55 stay NonMatching. Skipped #42/#127/#129/#130/#131/#132/#143 (reasons in the docs section).
- Procedure for porting more upstream PRs: memory note upstream-pr-porting (config/RSBE01_02 edits must be mirrored by hand; check rev1 vs rev2 symbol differences first).
- Before starting a new stage, check `gh pr list -R doldecomp/brawl` for an open PR on it (2gifts is working through stages).
- next: Marth special_lw/special_s (other session). Nothing in flight from me.

### 2026-10-01T20:07-03:00 · codex · note · 6675c8b (rsbe01_01-support) clean
- codex-parallel: brawl-codex6: Local review st_dxonett/mo_stage/st_dxonett/st_dxonett: full source REL not accepted; no promotion. Evidence evidence\nonmatching\st_dxonett\brawl-codex6\st_dxonett_20261001T230705.107326Z.

### 2026-10-01T20:07-03:00 · codex · note · 6675c8b (rsbe01_01-support) clean
- codex-parallel: Onett parked NonMatching70/71 after bounded source variants. Full REL70568 bytes,12 differing bytes entirely chooseCar stack operands; data/relocation areas identical. Clean fallback build and check127/127 PASS. Private review st_dxonett/brawl-codex6/st_dxonett_20261001T230705.107326Z; DX_STATUS updated. Beginning Big Blue ownership; main/lease untouched.

### 2026-10-01T20:09-03:00 · codex · note · 6675c8b (rsbe01_01-support) clean
- codex-parallel: Onett local commit147b9ca parked70/71, normal127/127. Chosen Big Blue stDxBigBlue module81 sizeC3C: text70..4178, rodata0..90, data0..7A8, bss8..18, ctors0..4; class-info registration4068/methods40CC..4178/RTTI7A0..7A8 prove end. Existing gr_dxbigblue starts4178, stays separately source-linked. Proof evidence/nonmatching/dx6/bigblue_ownership.json; beginning isolated split/build/draft, no main edits.

### 2026-10-01T20:13-03:00 · tool · verify · 6675c8b (rsbe01_01-support) dirty 6
- verified: OK: 127/127 with mo_fighter/ft_marth/ft_marth_status_uniq_process_special_lw promoted
- Promoted mo_fighter/ft_marth/ft_marth_status_uniq_process_special_lw (ft_marth): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-01T20:13-03:00 · claude · verify · 33d3f02 (rsbe01_01-support) clean
- verified: promote gates 1-4 PASS at 33d3f02
- MATCHED first fighter TU: mo_fighter/ft_marth/ft_marth_status_uniq_process_special_lw (33d3f02). Promoted via brawltool promote: full-REL probe byte-identical, 127/127, independent check OK; docs entry added. Recipe confirmed on a 2nd TU (first draft was 7/9; 3 small fixes). New tool: research/claude_tools/rename_syms.py (--status form names a status TU's dtor/vt/RTTI/sinit/ctor/instance/methods in both configs).
- next: Marth special_s, special_final, if_marth_final; then other fighters' status TUs (need splits)

### 2026-10-01T20:44-03:00 · codex · note · 33d3f02 (rsbe01_01-support) clean
- codex-parallel: Big Blue complete typed source compiles; first instruction diagnostics81/101 with raw data1960/ctors4 matching, rodata148vs144 still unresolved. All stage/interface functions plus vtable/RTTI named in isolated codex/dx config. Named fallback build running, log evidence/nonmatching/dx6/bigblue_named_build.log. No promotion, main untouched; remaining gates full-REL review and127/127. No permuter/flag sweep.

### 2026-10-01T20:46-03:00 · codex · note · 33d3f02 (rsbe01_01-support) clean
- codex-parallel: brawl-codex6: Local review st_dxbigblue/mo_stage/st_dxbigblue/st_dxbigblue: full source REL not accepted; no promotion. Evidence evidence\nonmatching\st_dxbigblue\brawl-codex6\st_dxbigblue_20261001T234533.453340Z.

### 2026-10-01T21:12-03:00 · codex · note · 33d3f02 (rsbe01_01-support) clean
- codex-parallel: Big Blue source diagnostics93/101 after bounded constructor, factory, FP-local and loop-layout variants. Stage remains NonMatching; data1960/ctors4 raw bytes same, RO140vs144 requires linked padding review. Starting clean fallback build in brawl-codex6 before full-REL review, log evidence/nonmatching/dx6/bigblue_final_clean_build.log. Proven NW4R LinkListImpl import names need a fresh main.elf in this isolated checkout. No main edits, lease claim, sweep or permuter.

### 2026-10-01T21:13-03:00 · codex · note · 33d3f02 (rsbe01_01-support) clean
- codex-parallel: brawl-codex6: Local review st_dxbigblue/mo_stage/st_dxbigblue/st_dxbigblue: full source REL not accepted; no promotion. Evidence evidence\nonmatching\st_dxbigblue\brawl-codex6\st_dxbigblue_20261002T001323.008314Z.

### 2026-10-01T21:15-03:00 · codex · note · 33d3f02 (rsbe01_01-support) clean
- codex-parallel: brawl-codex6: Local review st_dxbigblue/mo_stage/st_dxbigblue/st_dxbigblue: full source REL not accepted; no promotion. Evidence evidence\nonmatching\st_dxbigblue\brawl-codex6\st_dxbigblue_20261002T001545.198279Z.

### 2026-10-01T21:17-03:00 · codex · note · 33d3f02 (rsbe01_01-support) clean
- codex-parallel: brawl-codex6: Local review st_dxonett/mo_stage/st_dxonett/st_dxonett: full source REL not accepted; no promotion. Evidence evidence\nonmatching\st_dxonett\brawl-codex6\st_dxonett_20261002T001746.794814Z.
