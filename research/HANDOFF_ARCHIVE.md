# Handoff archive (rotated journal entries, oldest first)

### 2026-10-01T02:07-03:00 · codex · claim · b284006 (rsbe01_01-support) dirty 3
- task: candidate #5 st_dxyorster stage body
- lease until 2026-10-01T05:07-03:00
- Adopted agent-handoff skill; preserved entire existing HANDOFF_LOG.md in place. Board added without renaming journal.

### 2026-10-01T02:07-03:00 · codex · checkpoint · b284006 (rsbe01_01-support) dirty 4
- Draft data/rodata/bss/ctors raw bytes match. Stage code compares identically except local symbol normalization and extra out-of-line ctor, now marked inline.
- Starting normal fallback build; private log evidence/nonmatching/dxyorster/fallback_build.log. Source remains NonMatching.
- next: Finish full REL source probe, then promote only if exact byte identity and 127/127 pass.

### 2026-10-01T02:10-03:00 · codex · checkpoint · b284006 (rsbe01_01-support) dirty 4
- Isolated full source REL probe passed: 62768 bytes, SHA-1 8cfb4ca5c1c7a0eb83237eb0edb893cbd3b83532. Covers 54 functions, owned data, import/relocation tables.
- Promoting candidate #5; removing build/RSBE01_01/ok and running normal ninja. Log evidence/nonmatching/dxyorster/promotion_build.log.
- next: Confirm normal 127/127, document matching constructs, commit locally, synchronize pickup documents.

### 2026-10-01T02:14-03:00 · codex · verify · 5d2d07c (rsbe01_01-support) clean
- verified: OK: 127/127 binaries verified; source-linked st_dxyorster including all data and relocations
- Local commit 5d2d07c; tree clean. Isolated pre-promotion full REL byte match, normal stamp-removed promoted/final builds 127/127, independent manifest check 127/127, 10 verifier tests pass.
- 54 functions / 2704 text bytes; data 0..0x430, rodata 0..8, bss 8..0x18, ctors 0..4. No near-misses, no permuter, no push.
- 186 unique source-linked TUs; 518/4411 instances (65/1722 DOL, 453/2689 REL). Registration merge reduces total units by one.
- next: Candidate #6 st_dxgarden stage body: receiver checks, refresh ranking, recover RTTI/data ownership before a NonMatching draft. No code started for #6.

### 2026-10-01T02:15-03:00 · codex · handoff · 5d2d07c (rsbe01_01-support) clean
- Candidate #5 complete at 5d2d07c; clean tree; normal/independent 127/127 and full source REL match. No active jobs or unfinished code.
- All pickup documents synced. Evidence private in evidence/nonmatching/dxyorster. Nothing pushed; originals unchanged. 186 unique source-linked TUs; no new function-only matches.
- next: When continuing: candidate #6 st_dxgarden stage body. Read HANDOFF.md, claim ownership, check git/127/127, refresh candidate ranking, recover class and complete data ownership before drafting.

### 2026-10-01T02:17-03:00 · codex · claim · 5d2d07c (rsbe01_01-support) clean
- task: candidate #6 st_dxgarden stage body
- lease until 2026-10-01T05:17-03:00

### 2026-10-01T02:17-03:00 · codex · checkpoint · 5d2d07c (rsbe01_01-support) clean
- Receiver clean at 5d2d07c; starting fresh configure/stamp-removal/ninja. Log evidence/nonmatching/dxgarden/receiver_build.log.

### 2026-10-01T02:21-03:00 · codex · checkpoint · 5d2d07c (rsbe01_01-support) dirty 2
- Receiver 127/127 passed; ranking #6 remains smallest. Draft stDxGarden (size 0x1fc), text 0x70..0xe10 including registration; data 0..0x528, rodata 0..0x28, bss8..0x18, ctors0..4. NonMatching only.
- Starting draft configure/source compile, log evidence/nonmatching/dxgarden/draft_build.log.
- next: Compile, rename emitted symbols, inspect code/data diffs, then full source REL probe if matched.

### 2026-10-01T02:28-03:00 · codex · checkpoint · 5d2d07c (rsbe01_01-support) dirty 3
- All owned raw data bytes match. Water setup uses cached area pointer; camera stores use inline scalar helper. Inferred water-update function includes unreachable epilogue at B90 (now local label, not an invented method).
- Fallback full build/config regeneration running, evidence/nonmatching/dxgarden/fallback_build.log. No source promotion; constants and final-color weak emission still being checked.

### 2026-10-01T02:33-03:00 · codex · checkpoint · 5d2d07c (rsbe01_01-support) dirty 4
- Isolated full source REL matches: 56704 bytes, SHA-1 9a219966c8e0e2ffd7faaf9b15386349ca8f7070. Includes code/data/padding/relocations; no near-misses.
- Preparing promotion and fresh normal stamp-removed build. Target B90 is an unreachable epilogue label inside B08, so 53 real functions including registration (54 initial analysis entries).
- Source rodata ends at 0x24; linker supplies 4-byte padding to next ground region at 0x28. Full REL validates those bytes.

### 2026-10-01T02:35-03:00 · codex · verify · eeca868 (rsbe01_01-support) clean
- verified: OK: 127/127 binaries verified; st_dxgarden fully source-linked including all data and relocations
- Candidate #6 accepted; complete source REL 56704 bytes, SHA-1 9a219966c8e0e2ffd7faaf9b15386349ca8f7070. Normal stamp-removed promotion and independent manifest check 127/127.
- 53 functions / 3488 text bytes after correcting an unreachable epilogue label at B90; registration included. No near-misses, no permuter/flag sweep. Source/UB/lifetime notes in docs/RSBE01_01.md.
- 187 unique TUs; 519/4410 instances (65/1722 DOL, 454/2688 REL). No push; clean local commit.
- next: Candidate #7 st_heal stage body: receiver checks and refresh ranking, then recover class/data ownership. No code started.

### 2026-10-01T02:37-03:00 · codex · handoff · eeca868 (rsbe01_01-support) clean
- Candidate #6 done, eeca868 clean, full REL and 127/127 passed. All pickup docs synced. No running jobs or unfinished source; nothing pushed.
- next: Candidate #7 st_heal stage body. Read board, claim lease, receiver git/build checks, refresh ranking, then recover class and all data ownership. No code started.

### 2026-10-01T13:23-03:00 · claude · claim · eeca868 (rsbe01_01-support) clean
- task: candidate #7 st_heal stage body
- lease until 2026-10-01T16:23-03:00

### 2026-10-01T13:23-03:00 · claude · verify · eeca868 (rsbe01_01-support) clean
- verified: OK: 127/127 binaries verified at eeca868 (receiver)
- 519/4410 linked (65/1722 DOL, 454/2688 REL); matches board.

### 2026-10-01T13:29-03:00 · claude · checkpoint · eeca868 (rsbe01_01-support) clean
- st_heal = single stHeal stage TU: text 0x70..0xF9C (create/dtor/loading/createObj/update/isEventEnd, qsort cmp, header inlines, class-info reg), rodata 0..0x14, data 0..0x450, bss 8..0x28, ctors 0..4. Class size 0x2B4.
- Reads g_GameGlobal->m_corps (All-Star rest area). Callees fn_27_27BDB8/27BF44/24810C/28E7B4/2A5B84 and fn_803F8ACC (qsort) stay extern C.
- 0x2AC field = 4-byte struct: nonzero values copy from per-use .data templates (local aggregate init); zero comes from one named static {0} (scratch-tested).
- next: Write NonMatching draft: include/st_heal/st_heal.h, src/mo_stage/st_heal/st_heal.cpp, override gm_global_corps.h (name 0x1C/0x1E/0x1F/0x20), split + configure.

### 2026-10-01T13:32-03:00 · claude · checkpoint · eeca868 (rsbe01_01-support) dirty 3
- Draft written (NonMatching): src/mo_stage/st_heal/st_heal.cpp, include/st_heal/st_heal.h, override include/gm/gm_global_corps.h; split/config.yml force_active/configure.py edited.
- Running fallback full build; log evidence/nonmatching/heal/fallback_build.log

### 2026-10-01T13:43-03:00 · claude · checkpoint · eeca868 (rsbe01_01-support) dirty 3
- st_heal draft compiles. Matching by name: loading, compare, isEventEnd, preload; create/dtor differ only in symbol names. Data layout now matches (s_seqInit .data:0 via explicit_zero_data; 6 file-scope seq statics at 0xC8; fill colour via nw4r::ut::Color).
- update: control-flow layout matches (goto labels for not-ready blocks); remaining diffs are register numbering (heart loop i/bit, Vec3f float regs). Evidence: evidence/nonmatching/heal/st_heal_v2.cpp
- Codex given a parallel prompt: candidate #8 st_greenhill in worktree ../brawl-greenhill on branch codex/st_greenhill; must not touch this checkout.
- next: Fix update register numbering, then createObj, sinit, classinfo create inlining; then full-REL probe.

### 2026-10-01T13:43-03:00 · codex · note · eeca868 (rsbe01_01-support) dirty 3
- codex-parallel: Created brawl-greenhill worktree on codex/st_greenhill at eeca868 for candidate #8. Claude retains the main checkout lease. Copying ignored originals and tool caches locally; baseline configure/build next. No main checkout files edited.

### 2026-10-01T13:48-03:00 · codex · note · eeca868 (rsbe01_01-support) dirty 3
- codex-parallel: Green Hill isolated baseline build exited successfully and printed OK: 127/127 binaries verified. stGreenhill RTTI/class size 0x2C4 recovered; complete stage registration extends text through 0x1128. Its static initializer has only class info, so no stMadeinStaticPair pair is present. Preparing NonMatching draft in brawl-greenhill only.

### 2026-10-01T13:51-03:00 · codex · note · eeca868 (rsbe01_01-support) dirty 3
- codex-parallel: NonMatching stGreenhill draft written only in brawl-greenhill: stage and ground-interface headers, stage source, complete text70..1128/data0..538/rodata0..38/bss8..18/ctors0..4 split and configure/force-active. Starting fallback build and object comparisons; no promotion or main-tree edits.

### 2026-10-01T13:54-03:00 · claude · checkpoint · eeca868 (rsbe01_01-support) dirty 3
- st_heal isolated full-REL probe: byte match 14312 bytes, SHA-1 c5e0b6cf84f676e01b240c59d4b6f31e14cc16eb (evidence/nonmatching/heal/probe_result.txt, source snapshot st_heal_probe_match.cpp).
- Matching techniques used (to document): explicit_zero_data for s_seqInit; file-scope seq statics before update; goto labels for not-ready blocks; z,y,x float locals; GXColor fields b,g,r,a; OR into variable holding zone flag; corps m_characterKind as u8; cmAIController bit 0x94 override header.
- next: Rename module symbols to mangled names, promote MatchingFor + verified_objects, rm ok, ninja 127/127, docs, commit.

### 2026-10-01T13:55-03:00 · claude · checkpoint · eeca868 (rsbe01_01-support) dirty 4
- Renamed 50 st_heal symbols (map: evidence/nonmatching/heal/rename_map.txt); compareFigureOrder scope:local.
- Starting full source-cache rebuild (rm build/RSBE01_01/src) + fallback ninja; log evidence/nonmatching/heal/rebuild_all.log

### 2026-10-01T13:58-03:00 · codex · note · 6cb6eb8 (rsbe01_01-support) clean
- codex-parallel: Green Hill normalized object comparison now matches 56/57 functions and .data/.rodata/.bss/.ctors bytes/sizes. One mismatch remains in fn_72_B9C guest-index clamp (byte truncation/register flow). Function-only results, TU remains NonMatching. Bounded source investigation next, no flag sweep or permuter started. Private evidence is evidence/nonmatching/greenhill/third_diff.txt.

### 2026-10-01T13:59-03:00 · claude · verify · 6cb6eb8 (rsbe01_01-support) clean
- verified: OK: 127/127 binaries verified at 6cb6eb8; st_heal fully source-linked incl. all data and relocations
- Candidate #7 accepted: full REL 14312 bytes SHA-1 c5e0b6cf84f676e01b240c59d4b6f31e14cc16eb; normal stamp-removed + independent --orig --dtk 127/127; verifier tests OK. Commit 6cb6eb8, nothing pushed.
- 188 unique TUs; 520/4405 instances. Docs and all pickup notes synced.
- next: Integrate codex/st_greenhill when Codex reports; main line #9 st_kart.

### 2026-10-01T13:59-03:00 · claude · handoff · 6cb6eb8 (rsbe01_01-support) clean
- Candidate #7 st_heal complete at 6cb6eb8, clean, 127/127 (normal + independent). Docs/pickup notes synced. No running jobs.
- next: Integrate codex/st_greenhill (#8) when Codex reports done; main-line next #9 st_kart stage body.

### 2026-10-01T14:02-03:00 · codex · note · 6cb6eb8 (rsbe01_01-support) clean
- codex-parallel: Green Hill full source REL probe passed: 100672 bytes, SHA-1 1b1bd2e86ff46d41bad1263cde6bb056fe0bd448, identical relocation tables. All 57 functions and owned sections match. Promoted only in codex/st_greenhill with MatchingFor(RSBE01_01) and allowlist; stamp-removed normal 127-binary build running. Docs include clamp integer/byte semantics, Matrix no-init lifetimes and pointer declaration review. No flag sweeps/permuter. No main checkout edits/integration.

### 2026-10-01T14:04-03:00 · codex · note · 6cb6eb8 (rsbe01_01-support) clean
- codex-parallel: Completed candidate #8 in isolated clean brawl-greenhill, branch codex/st_greenhill, local commit 3fc4040 (base eeca868). stGreenhill fully source-linked: 57 functions /4280 text bytes plus complete owned data/relocations; full REL 100672 bytes SHA1 1b1bd2e86ff46d41bad1263cde6bb056fe0bd448. Baseline, promoted stamp-removed build, independent manifest and post-promotion source probe pass 127/127/byte identity. No near-misses or function-only acceptance remains. Branch-only totals 188 TUs,520/4409 (65/1722 DOL,455/2687 REL). GREENHILL_STATUS.md written under codex_parallel; private evidence/nonmatching/greenhill holds repro. No static pair present; no duplicate stMadeinStaticPair. No original changes, main edits, push, merge or rebase. Claude keeps lease; integrating agent must wait for release, rebase/resolve shared-file conflicts and re-verify127.

### 2026-10-01T14:04-03:00 · codex · note · 6cb6eb8 (rsbe01_01-support) clean
- codex-parallel: Final live status correction to preceding note: owner is now none. Claude completed st_heal at main commit 6cb6eb8 and released its lease before this check; Codex did not release it. GREENHILL_STATUS.md updated with this observation. User-requested isolation remains: codex/st_greenhill stays clean at 3fc4040, with no rebase/merge/integration.

### 2026-10-01T14:06-03:00 · claude · claim · 6cb6eb8 (rsbe01_01-support) clean
- task: integrate codex/st_greenhill (#8) onto rsbe01_01-support
- lease until 2026-10-01T16:06-03:00

### 2026-10-01T14:06-03:00 · claude · checkpoint · 6cb6eb8 (rsbe01_01-support) dirty 9
- Cherry-picked codex 3fc4040 onto 6cb6eb8 (uncommitted); resolved verified_objects.txt + docs conflicts keeping both; added greenhill table row.
- Running integrated configure + stamp-removed ninja; log evidence/nonmatching/greenhill_integration.log

### 2026-10-01T14:08-03:00 · claude · verify · f60af98 (rsbe01_01-support) clean
- verified: OK: 127/127 binaries verified at f60af98 (Green Hill integrated); st_heal + st_greenhill full-REL byte match
- Cherry-picked codex 3fc4040 as f60af98; conflicts verified_objects.txt/docs kept both. Independent --orig --dtk 127/127, verifier tests OK. 189 TUs.

### 2026-10-01T14:08-03:00 · claude · handoff · f60af98 (rsbe01_01-support) clean
- Green Hill integrated at f60af98, clean, 127/127. Docs synced.
- next: Candidate #9 st_kart stage body; worktree ../brawl-greenhill removable with user OK.

### 2026-10-01T14:11-03:00 · claude · claim · f60af98 (rsbe01_01-support) clean
- task: candidate #9 st_kart stage body
- lease until 2026-10-01T17:11-03:00

### 2026-10-01T14:11-03:00 · claude · note · f60af98 (rsbe01_01-support) clean
- Gave Codex a parallel prompt: worktree ../brawl-codex2, branch codex/next from f60af98; pick smallest grMadein-style stage body (tbreak/oldin/madein/homerun/ice/norfair) or #10 tengan; move stMadeinStaticPair to shared header there; must not touch ../brawl.

### 2026-10-01T14:12-03:00 · codex · note · f60af98 (rsbe01_01-support) clean
- codex-parallel: Created brawl-codex2 on codex/next at f60af98. Copied ignored originals/tool caches and independent local header metadata. Claude retains st_kart/main lease. Baseline configure+ninja log evidence/nonmatching/codex2_setup/baseline.log; ranking starts after 127/127. No leased checkout edits.

### 2026-10-01T14:13-03:00 · claude · checkpoint · f60af98 (rsbe01_01-support) clean
- st_kart analysis: stage TU = .text 0x70..0x12D0 (stKart 0x39C, out-of-line ctor fn_49_A4, 13 stKart virtuals from vtable 0x21C, ground setter inlines, header inlines, sinit 0x11C0, classinfo 0x1224-0x12CC); ground code from 0x12D0 stays extracted.
- Hard spots: (1) fn_49_BF4 has an unused variable-length stack alloc (VLA/alloca); (2) fn_49_E5C overrides Stage::getZoneLightSetIndex but reads a Vec3f* arg, so stage.h signature + sora_melee symbol name must change (all source objects rebuilt); (3) E5C has two fsel clamps (Battlefield-type risk); (4) fn_49_A8C passes an uninitialised float when CameraController is absent; (5) fn_8016232C unnamed DOL (likely CosFIdx next to SinFIdx).
- next: Read sinit/classinfo/rodata, then draft NonMatching TU.

### 2026-10-01T14:15-03:00 · codex · note · f60af98 (rsbe01_01-support) clean
- codex-parallel: Baseline printed OK:127/127. Fresh config ranking written codex_parallel/CODEX2_CANDIDATE_RANKING.md. Choosing ONE candidate before code: #10 st_tengan ground tail, text6348..7714,5228 bytes,37 functions. Smallest requested candidate; five unnamed imported animation getters have researched NW4R signatures. Next tbreak stage body6900 bytes/two unnamed imports; other bodies larger. Required shared-pair header move plus st_heal probe will accompany this TU. No main edits/lease claim.

### 2026-10-01T14:16-03:00 · codex · note · f60af98 (rsbe01_01-support) clean
- codex-parallel: Ranking boundary correction: tengan final function770C is0xA8 bytes, so selected text6348..77B4=5228 bytes/37 functions. Ranking includes already-named inline functions now. Shared stMadeinStaticPair moved unchanged to include/st/st_madein_static_pair.h; st_heal.h includes it. Clearing isolated source cache by archiving it before complete rebuild and heal full-REL probe.

### 2026-10-01T14:17-03:00 · claude · checkpoint · f60af98 (rsbe01_01-support) dirty 3
- st_kart prep (uncommitted): include/st/stage.h override (getZoneLightSetIndex(Vec3f*)); renamed getZoneLightSetIndex__5StageFv -> __5StageFP5Vec3f in RSBE01_01 AND RSBE01_02 sora_melee symbols (identical REL; header change affects both); DOL fn_8016232C -> CosFIdx__Q24nw4r4mathFf (rev1 only, same table as SinFIdx, cos columns).
- __alloca reproduces the unused VLA in fn_49_BF4 (scratch-tested).

### 2026-10-01T14:26-03:00 · codex · note · f60af98 (rsbe01_01-support) dirty 6
- codex-parallel: codex/next shared stMadeinStaticPair header move complete; isolated source cache rebuilt and 127/127 passes. st_heal full-REL probe remains byte-identical (14312 bytes, SHA1 c5e0b6cf84f676e01b240c59d4b6f31e14cc16eb). Selected st_tengan ground tail remains the only candidate in progress.

### 2026-10-01T14:33-03:00 · claude · checkpoint · c472821 (rsbe01_01-support) clean
- verified: OK: 127/127 at c472821 (st_kart NonMatching, extracted linked)
- Committed st_kart WIP c472821: 61/63 functions + all data match; probe 72 differing bytes confined to updateRanks, getZoneLightSetIndex and their 55/1.0 constants. Stopped per bounded-effort rule. Notes: evidence/nonmatching/kart/NOTES.md.

### 2026-10-01T14:33-03:00 · claude · handoff · c472821 (rsbe01_01-support) clean
- st_kart WIP committed (c472821), clean, 127/127. Pickup docs synced.
- next: Capped permuter on getZoneLightSetIndex/updateRanks (st_kart) or move to #10; integrate codex/next when reported.

### 2026-10-01T14:43-03:00 · codex · note · c472821 (rsbe01_01-support) clean
- codex-parallel: codex/next st_tengan ground-tail draft compiles; named instruction comparison currently 32/37 (diagnostic only, not relocation/data acceptance). Initial NonMatching build passed 127/127. No source promotion. Starting final normal rebuild and full-REL source probe; combined vtable/weak RTTI ordering remains a material blocker. No permuter or flag sweeps.

### 2026-10-01T14:46-03:00 · codex · note · c472821 (rsbe01_01-support) clean
- codex-parallel: combined provisional #10 ground-tail probe failed (57504 original vs 57168 source). Ownership analysis identifies four original objects. Refining the SAME candidate to ONE actual grTengan base TU, .text 6348..65BC (628 bytes/21 functions), .data 838..AB8; other class drafts archived privately and remain extracted. This corrects provisional ownership, not a move to another candidate.

### 2026-10-01T14:51-03:00 · codex · note · c472821 (rsbe01_01-support) clean
- codex-parallel: refined grTengan base TU source probe passes FULL REL byte identity, 57504 bytes SHA1 839c8054988ecf7f32862da78fc429daea8833b1. 21/21 functions and owned data/relocations accepted. Promoting only base TU on codex/next; removed isolated ok stamp for final 127/127 gate. Shared pair support commit 7f3d18c. Other ground classes stay extracted.

### 2026-10-01T14:56-03:00 · codex · note · c472821 (rsbe01_01-support) clean
- codex-parallel: completed isolated codex/next, clean at 2e72a19; support header commit 7f3d18c. ONE newly source-linked TU grTengan base (21 functions/628 text/640 data), full st_tengan REL identity and promoted/independent 127/127; heal probe unchanged. No separate accepted function-only wins. Other three provisional-tail classes stay extracted; drafts private. Final pickup file research/codex_parallel/TENGAN_STATUS.md includes logs, UB review, counts and owner-only cherry-pick instructions. No merge/rebase/push, no running jobs.

### 2026-10-01T14:57-03:00 · claude · claim · c472821 (rsbe01_01-support) clean
- task: integrate codex/next (tengan 7f3d18c, 2e72a19)
- lease until 2026-10-01T16:57-03:00

### 2026-10-01T14:57-03:00 · claude · checkpoint · 0ee87a1 (rsbe01_01-support) clean
- Cherry-picked codex 7f3d18c + 2e72a19 onto c472821 (docs conflict kept both). Running clean source rebuild + probes; log evidence/nonmatching/tengan_integration.log

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

### 2026-10-01T23:00-03:00 · codex · note · 33d3f02 (rsbe01_01-support) clean
- codex-parallel: brawl-codex6: Local review st_dxbigblue/mo_stage/st_dxbigblue/st_dxbigblue: full source REL not accepted; no promotion. Evidence evidence\nonmatching\st_dxbigblue\brawl-codex6\st_dxbigblue_20261002T020055.967614Z.

### 2026-10-01T23:01-03:00 · codex · note · 33d3f02 (rsbe01_01-support) clean
- codex-parallel: Done requested Onett/Big Blue attempts on isolated codex/dx, clean at32a1668. Separate local parked commits147b9ca and32a1668; no merge/rebase/push/main edits. Onett70/71 diagnostics, exact source REL70568 with12 byte differences in chooseCar stack slots. Big Blue93/101 diagnostics; linked source REL64672vs64688, full RO288/data14464 byte-identical but code/relocations differ. Both NonMatching, no allowlist additions, new source-linked TUs0. Final clean/fallback build and independent check127/127 PASS, originals unchanged. Handoff research/codex_parallel/DX_STATUS.md and worktree docs include UB/lifetime reviews, exact evidence/commands and SDK import integration traps. No Codex jobs running.

### 2026-10-01T23:28-03:00 · claude · verify · 97ff63d (rsbe01_01-support) clean
- verified: clean build + verify_manifest 127/127 at 97ff63d
- Integrated codex/dx onto main: c5d8627 (Onett, 70/71) + 97ff63d (Big Blue, 93/101), both NonMatching; resolved docs append conflict keeping both sections; non-doc content identical to codex/dx except a LinkListImpl rename main already had from the port. Clean rebuild (src cleared) OK 127/127 + independent verifier 127/127; main.dol 2a78a0b3 unchanged. Removed worktrees brawl-codex6 and the port scratch worktree (prtest) after checks (clean, integrated, no junctions); branches kept. Board Now refreshed (was stale at 9ec5405).
- next: Codex: fighter status TUs for a separate fighter (see prompt); Claude: Marth remainder

### 2026-10-01T23:41-03:00 · codex · note · 97ff63d (rsbe01_01-support) clean
- codex-parallel: Created brawl-codex7/codex/ike from97ff63d. GitHub API audit inspected file lists of all16 open doldecomp/brawl PRs: no ft_ike paths; title/body apparent Ike hit in split_gaps PR128 is a generic substring. Audit evidence/nonmatching/ike/upstream_open_prs.json. Starting clean isolated baseline build + independent127 check. Main and ft_marth read-only, no lease claim. Logs evidence/nonmatching/ike/baseline_build.log and baseline_check.log.

### 2026-10-01T23:45-03:00 · codex · note · 97ff63d (rsbe01_01-support) dirty 6
- codex-parallel: brawl-codex7 baseline clean build/check127/127 PASS. RTTI/ref audit via split_gaps helpers identifies4 Ike status classes. First TU special_lw, textD330..DDB4 (2692 bytes,9 functions), rodata48..50, data5E28..5EA0, bss248..258, ctors8..C. Special_hi region additionally emits weak SpecialS execStop and Sword exitStatus; keep those extracted when recovering other classes. Ownership audit evidence/nonmatching/ike/ownership_initial.json. No source edits before this range note.

### 2026-10-01T23:56-03:00 · codex · note · 97ff63d (rsbe01_01-support) dirty 6
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_special_lw: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_special_lw_20261002T025604.419093Z.

### 2026-10-01T23:58-03:00 · claude · verify · e7cea52 (rsbe01_01-support) clean
- verified: promote gates 1-4 PASS at e7cea52
- MATCHED ft_marth special_s (e7cea52): full-REL byte-identical, 127/127, independent OK. Marth: special_lw + special_s matched, special_hi 9/10. HEADER CHANGE (affects codex/ike): include/ft/ft_kinetic_energy.h split into per-class headers (ft_kinetic_energy_{stop,gravity,controller,motion,util}.h + so/kinetic/so_kinetic_energy_normal.h); ftKineticEnergyGravity now derives from soKineticEnergy (fields m_accel/m_limit, were m_accelX/m_accelY). ft_marth labels ECC/1128/18C4 renamed __RTTI__13soSuspendable/8soEnable/10soNullable. New layout rules in docs (special_s section): weak RTTI = reverse class-declaration order; RTTI only for classes used by compiled code (an uncalled global function gets stripped but keeps its RTTI); inline functions emit in reverse vtable order, out-of-line definitions in source order.
- next: Marth special_final + if_marth_final; codex/ike must rebase onto e7cea52 for the header split

### 2026-10-01T23:58-03:00 · codex · note · e7cea52 (rsbe01_01-support) clean
- codex-parallel: Parked Ike SpecialLw as NonMatching in ac1d942 on codex/ike. Eight/nine normalized functions; initStatus lacks one redundant float move. Full REL probe fails, linked rodata/data agree; no promotion, no flag sweep/permuter. Best source, five bounded variant specs and review saved evidence/nonmatching/ike/special_lw. Continuing one TU at a time; main and Marth untouched.

### 2026-10-01T23:59-03:00 · codex · note · e7cea52 (rsbe01_01-support) clean
- codex-parallel: Next Ike TU SpecialHi: text C8DC..D330, rodata38..48, data5D98..5E28, bss238..248, ctors4..8. Includes inherited weak methods plus two adjacent no-op emissions for SpecialS/Sword; preserve original callable names and signatures, do not invent unrelated code. Known controller reset constant issue will be parked without a search.

### 2026-10-02T00:06-03:00 · codex · note · e7cea52 (rsbe01_01-support) clean
- codex-parallel: Ike Hi source draft written in codex/ike; correct RTTI5E04. Shared controller vector offsets and worktree-only ftParam overlay added from field-access evidence; archived isolated src cache before full header rebuild. FIGHTERS_STATUS.md updated with resume steps. Awaiting normal build then diff/probe; no promotion or long permuter job. Main and Marth untouched.

### 2026-10-02T00:09-03:00 · codex · note · e7cea52 (rsbe01_01-support) clean
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_special_hi: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_special_hi_20261002T030900.208513Z.

### 2026-10-02T00:11-03:00 · codex · note · e7cea52 (rsbe01_01-support) dirty 3
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_special_hi: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_special_hi_20261002T031140.811119Z.

### 2026-10-02T00:13-03:00 · codex · note · e7cea52 (rsbe01_01-support) dirty 5
- codex-parallel: Parked Ike SpecialHi as NonMatching in 1c51b77,16/18 normalized functions; known reset-zero scheduling, exit branches and shared weak text order outstanding. Full source REL fails; linked rodata/data/ctors/dtors bytes and sizes agree. Private best+review+section audit evidence/nonmatching/ike/special_hi. Next smallest independent remaining TU Final: textEE24..FBC4 (3488 bytes), rodata68..90, data5F18..5F88, bss268..278, ctors10..14. Source work only after this boundary note.

### 2026-10-02T00:13-03:00 · tool · verify · e7cea52 (rsbe01_01-support) dirty 6
- verified: OK: 127/127 with mo_fighter/ft_mario/ft_mario_status_uniq_process_special_n promoted
- Promoted mo_fighter/ft_mario/ft_mario_status_uniq_process_special_n (ft_mario): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T00:19-03:00 · codex · note · e7cea52 (rsbe01_01-support) dirty 6
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_final: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_final_20261002T031932.001571Z.

### 2026-10-02T00:19-03:00 · tool · verify · e7cea52 (rsbe01_01-support) dirty 6
- verified: OK: 127/127 with mo_fighter/ft_mario/ft_mario_status_uniq_process_special_lw_shoot promoted
- Promoted mo_fighter/ft_mario/ft_mario_status_uniq_process_special_lw_shoot (ft_mario): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T00:22-03:00 · codex · note · e7cea52 (rsbe01_01-support) dirty 10
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_final: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_final_20261002T032225.585543Z.

### 2026-10-02T00:24-03:00 · codex · note · e7cea52 (rsbe01_01-support) dirty 11
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_final: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_final_20261002T032450.987212Z.

### 2026-10-02T00:25-03:00 · tool · verify · e7cea52 (rsbe01_01-support) dirty 11
- verified: OK: 127/127 with mo_fighter/ft_mario/ft_mario_status_uniq_process_special_s promoted
- Promoted mo_fighter/ft_mario/ft_mario_status_uniq_process_special_s (ft_mario): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T00:25-03:00 · claude · verify · 0a48697 (rsbe01_01-support) clean
- verified: promote gates PASS for all 3 at 0a48697
- MATCHED 3 ft_mario status units (0a48697): special_n, special_lw_shoot, special_s; each full-REL byte-identical + promote gates. Fighter units matched total: 5 (Marth s/lw, Mario n/lw_shoot/s). New tool research/claude_tools/mk_status_splits.py <module> --prefix ftX: proposes status-unit splits from extracted asm (validated vs Marth upstream splits; padding rule for data ends). HEADER CHANGES again (codex/ike): soKineticEnergyNormal now has Vec2f m_brake at 0x20 (Stop no longer declares it); Gravity has m_speed (0x08) and m_1C; Motion padding now _28; new so/article/so_generate_article_manage_module.h, wn/mario/wn_mario_pump.h; ftVec2fCopy in ft_kinetic_energy_util.h.
- next: more fighters via mk_status_splits.py (Luigi/Pit/Wolf/Fox small sets); Marth special_final later (rodata boundary 0x48 suspect)

### 2026-10-02T00:28-03:00 · codex · note · 0a48697 (rsbe01_01-support) clean
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_final: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_final_20261002T032811.109664Z.

### 2026-10-02T00:28-03:00 · codex · note · 0a48697 (rsbe01_01-support) clean
- codex-parallel: Parked Ike Final on codex/ike, 8/10 normalized functions including init; full REL probe fails after local length rename, normal build127/127. Best/review in evidence/nonmatching/ike/final. Next SpecialS: textDDB4..EE24 (4208 bytes,8 functions), rodata50..68, data5EA0..5F18, bss258..268, ctorsC..10. Its execStop remains atD2D0 in the Hi TU; do not emit a second body. Unknown collision-search helper ECC0 stays named anonymously until semantic name is proven.

### 2026-10-02T00:38-03:00 · codex · note · 0a48697 (rsbe01_01-support) clean
- codex-parallel: Final parked at84b63f8; SpecialS source written, fresh header-cache build running. FIGHTERS_STATUS updated before long job, including integration warning: main now has per-class kinetic headers/corrected Gravity inheritance and article interface superset. Do not overwrite that refactor with our old umbrella; move isolated field additions into current headers during integration and re-probe all affected TUs. Main stays untouched, no lease claim.

### 2026-10-02T00:47-03:00 · codex · note · 0a48697 (rsbe01_01-support) clean
- codex-parallel: SpecialS compile error resolved by prerequisite observer includes. Normal build127/127; bounded variants leave4/8 normalized matches, exec437 instructions both with scheduling/stack offsets, init register/lifetime/layout, fixpos indirect-load register, exit2 branches. Sound slot58 corrected with existing interface extension. Fresh header-cache rebuild and full review next; all4 Ike status TUs remain NonMatching, no promotion or permuter, main untouched.

### 2026-10-02T00:48-03:00 · codex · note · 0a48697 (rsbe01_01-support) clean
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_special_s: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_special_s_20261002T034820.722192Z.

### 2026-10-02T00:49-03:00 · codex · note · 0a48697 (rsbe01_01-support) clean
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_special_s: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_special_s_20261002T034944.666883Z.

### 2026-10-02T00:51-03:00 · codex · note · 0a48697 (rsbe01_01-support) clean
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_special_lw: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_special_lw_20261002T035112.040160Z.

### 2026-10-02T00:51-03:00 · codex · note · 0a48697 (rsbe01_01-support) clean
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_special_hi: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_special_hi_20261002T035116.167835Z.

### 2026-10-02T00:51-03:00 · codex · note · 0a48697 (rsbe01_01-support) clean
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_final: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_final_20261002T035120.592929Z.

### 2026-10-02T00:51-03:00 · codex · note · 0a48697 (rsbe01_01-support) clean
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_special_s: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_special_s_20261002T035124.937810Z.

### 2026-10-02T00:53-03:00 · codex · note · 0a48697 (rsbe01_01-support) clean
- codex-parallel: Ike task finished in brawl-codex7/codex/ike, clean HEAD7a3f8c7. Local parked commits Lw ac1d942 (8/9), Hi1c51b77 (16/18), Final84b63f8 (8/10), S7a3f8c7 (4/8 normalized diagnostics). All4 fresh full-REL reviews at finalHEAD fail; source-linked additions0; every TU remains NonMatching. Fresh build127/127 and independent check127/127, verifier tests pass, originals unchanged. FIGHTERS_STATUS.md written with exact ranges, blockers, commit IDs, current review paths, and per-class-header reconciliation warning. Target evidence stays private under evidence/nonmatching/ike. Main/ft_marth untouched, no lease claim, push, merge, rebase or running jobs.

### 2026-10-02T00:55-03:00 · codex · note · 0a48697 (rsbe01_01-support) clean
- codex-parallel: User authorizes rebase of isolated codex/ike onto e7cea52 and continuation with split fighter headers. Worktree clean at 7a3f8c7. Claude retains main lease; only codex/ike will change. Recorded live board still reports main0a48697, so using the explicit validated e7cea52 commit. Rebuild source cache before trusting diagnostics.

### 2026-10-02T00:57-03:00 · codex · note · 0a48697 (rsbe01_01-support) dirty 3
- codex-parallel: Rebase onto validated e7cea52 complete in codex/ike at 6e0814d; rewritten per-TU commits 102c027/a401972/6e88fdc/6e0814d. Old kinetic umbrella preserved as split includes; field additions moved to per-class headers and Ike Gravity writes renamed m_accel/m_limit. Clean source-cache rebuild next; no old probe/diff trusted. Main remains untouched.

### 2026-10-02T01:01-03:00 · codex · note · 0a48697 (rsbe01_01-support) dirty 6
- codex-parallel: Clean rebased worktree build passes127/127. Target RTTI base-list audit saved in evidence/nonmatching/ike/rebased_rtti_bases.json; Gravity directly uses soKineticEnergy, Stop/Controller/Motion use soKineticEnergyNormal. Named shared base RTTI at138C/1604/1EE8 via helper redirected to isolated worktree in both configs. Fresh post-rename build running, log evidence/nonmatching/ike/rebase_rtti_build.log; all status objects remain NonMatching.

### 2026-10-02T01:01-03:00 · codex · note · 0a48697 (rsbe01_01-support) dirty 6
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_special_lw: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_special_lw_20261002T040118.746891Z.

### 2026-10-02T01:01-03:00 · codex · note · 0a48697 (rsbe01_01-support) dirty 6
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_special_hi: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_special_hi_20261002T040123.155509Z.

### 2026-10-02T01:01-03:00 · codex · note · 0a48697 (rsbe01_01-support) dirty 7
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_final: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_final_20261002T040128.176228Z.

### 2026-10-02T01:01-03:00 · codex · note · 0a48697 (rsbe01_01-support) dirty 7
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_special_s: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_special_s_20261002T040133.160027Z.

### 2026-10-02T01:04-03:00 · tool · verify · 0a48697 (rsbe01_01-support) dirty 8
- verified: OK: 127/127 with mo_fighter/ft_luigi/ft_luigi_status_uniq_process_special_lw promoted
- Promoted mo_fighter/ft_luigi/ft_luigi_status_uniq_process_special_lw (ft_luigi): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T01:04-03:00 · claude · verify · 8d3b44a (rsbe01_01-support) clean
- verified: promote gates PASS at 8d3b44a; clean rebuild 127/127
- MATCHED ft_luigi special_lw (8d3b44a) + Luigi status splits (3 units, both configs). Fighter units matched: 6. HEADER OVERRIDE: include/so/controller/so_controller_module_impl.h + so_controller_module_link_ref.h (copies of BrawlHeaders) make soControllerModule::getTrigger() return u32 (struct returns always spill in MWCC; original ANDs r3 directly); link_ref.cpp updated; clean rebuild 127/127. New: claude_tools/apply_status_splits.py (inserts generator output into both configs + configure.py). mk_status_splits.py fixed for last-unit data end (whole trailing RTTI groups only). NOTE for Copilot: brawltool status-splits is a stale copy without the padding rule / last-unit fix; resync from claude_tools/mk_status_splits.py.
- next: Luigi special_s_ram, special_s_wall; then more fighters

### 2026-10-02T01:05-03:00 · codex · note · 8d3b44a (rsbe01_01-support) clean
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_special_lw: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_special_lw_20261002T040504.343990Z.

### 2026-10-02T01:09-03:00 · codex · note · 8d3b44a (rsbe01_01-support) clean
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_special_lw: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_special_lw_20261002T040923.522014Z.

### 2026-10-02T01:09-03:00 · codex · note · 8d3b44a (rsbe01_01-support) clean
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_special_hi: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_special_hi_20261002T040929.232107Z.

### 2026-10-02T01:09-03:00 · codex · note · 8d3b44a (rsbe01_01-support) clean
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_final: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_final_20261002T040935.371060Z.

### 2026-10-02T01:09-03:00 · codex · note · 8d3b44a (rsbe01_01-support) clean
- codex-parallel: brawl-codex7: Local review ft_ike/mo_fighter/ft_ike/ft_ike_status_uniq_process_special_s: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ike\brawl-codex7\ft_ike_status_uniq_process_special_s_20261002T040941.550235Z.

### 2026-10-02T01:10-03:00 · codex · note · 8d3b44a (rsbe01_01-support) dirty 2
- codex-parallel: Header reconciliation and closer Lw draft committed at 54fe30d on codex/ike (rebased onto e7cea52). Fresh reviews at this HEAD: Lw full REL exactly1 differing byte (frsp vs fmr), other TU diagnostics Hi16/18 Final8/10 S4/8; all remain NonMatching. Linked data contents agree for all4. No flags/permuter/patching. Final build and independent check next, logs evidence/nonmatching/ike/rebased_final_build.log and rebased_final_check.log. Main/ft_marth not edited, lease unchanged.

### 2026-10-02T01:12-03:00 · codex · note · 8d3b44a (rsbe01_01-support) dirty 2
- codex-parallel: Rebase/header continuation complete. codex/ike clean at54fe30d on basee7cea52; rewritten TU commits102c027/a401972/6e88fdc/6e0814d, plus54fe30d reconciliation and closer Lw attempt. Final build127/127 and independent check127/127, verifier tests pass, originals unchanged. Lw current full REL differs by exactly1 byte frsp/fmr; all4 remain NonMatching and source-linked additions0. Latest probes/source/hashes/section audits saved privately in evidence/nonmatching/ike/rebased/. FIGHTERS_STATUS.md rewritten with current commit map, base-list proof, exact blockers and reproduction. Main advanced independently to8d3b44a; only requested e7cea52 was used as base. Main/ft_marth untouched, no lease claimed, no pushes or running jobs.

### 2026-10-02T01:15-03:00 · tool · verify · 8d3b44a (rsbe01_01-support) dirty 4
- verified: OK: 127/127 with mo_fighter/ft_luigi/ft_luigi_status_uniq_process_special_s_ram promoted
- Promoted mo_fighter/ft_luigi/ft_luigi_status_uniq_process_special_s_ram (ft_luigi): full-REL probe byte-identical, 127/127, independent check OK.

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

### 2026-10-02T22:40-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: Parking Ness SpecialHiAttack NonMatching after bounded source variants (no flags/permuter).9/10 functions match; remaining execFixPosCounter571instructions:36 diff lines, stack temps/constant moves/two schedules. FullRELsame277192size but byteidentityFAIL. Bestsource/diffs/variantrepros private fighters2/ness_hi_attack*. Source comment recordsnear miss. Next private review+fresh127/127+independentcheck, separate parked commit, then Lucas generator. No promotion/allowlist for this TU; no main modifications.

### 2026-10-02T22:40-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Local review ft_ness/mo_fighter/ft_ness/ft_ness_status_uniq_process_special_hi_attack: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ness\brawl-codex8\ft_ness_status_uniq_process_special_hi_attack_20261003T014012.663108Z.

### 2026-10-02T22:41-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: Ness checkpoint commit7876977 parked SpecialHiAttack9/10/36difflines; fullRELFAIL sizeunchanged; no promotion. Fresh normal127/127+independent checkPASS fallbackoriginal. Other eight Ness statuses source-linked (59a8231,754b7cf,b1b5c44,68140f3,1394e31,8f40196,c619687,9dedfb8), Pit3e62bb6. No jobs. Starting Lucas fresh status-splits review; warnings/RTTI prefix8418..84EC belong AttackEnd; main lease untouched.

### 2026-10-02T22:43-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: Lucas nine status proposals reviewed at brawl-codex8. WARN Gravity8358..839C belongs SpecialHiAttack; model RTTI8418..84EC belongs SpecialHiAttackEnd (no speculative Stop/Controller ownership). FirstftLucasadjustorends10894/classinfoRTTIends80E8. Applying splits both revisions+cflags_fighter, then SpecialS first text10CD8..10DE4 rodata30..38 data8268..82E0 bss1F0..200 ctorsC..10; body proven equivalent NessS except fighterkind1A. No main edits/leaseclaim.

### 2026-10-02T22:49-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Local review ft_lucas/mo_fighter/ft_lucas/ft_lucas_status_uniq_process_special_s: full source REL matches; no promotion. Evidence evidence\nonmatching\ft_lucas\brawl-codex8\ft_lucas_status_uniq_process_special_s_20261003T014934.804240Z.

### 2026-10-02T22:49-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Promoted mo_fighter/ft_lucas/ft_lucas_status_uniq_process_special_s (ft_lucas): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T22:50-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: Lucas SpecialS accepted in codex/fighters2: four functions plus owned data, fullREL identity, fresh127/127+independent check+postprobe PASS. Nine status splits both configs reviewed. Next SpecialHiReflect text126F4..12800 rodataA8..B0 data8570..85F0 bss230..240 ctors1C..20; proven equivalent NessReflect except Lucas kind26. Main untouched.

### 2026-10-02T22:51-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Local review ft_lucas/mo_fighter/ft_lucas/ft_lucas_status_uniq_process_special_hi_reflect: full source REL matches; no promotion. Evidence evidence\nonmatching\ft_lucas\brawl-codex8\ft_lucas_status_uniq_process_special_hi_reflect_20261003T015147.878541Z.

### 2026-10-02T22:52-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Promoted mo_fighter/ft_lucas/ft_lucas_status_uniq_process_special_hi_reflect (ft_lucas): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T22:52-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: Lucas Reflect accepted with fullREL identity+127/127+independent check+postprobe. Next SpecialLw owns text12800..12A0C data85F0..8668 bss240..250 ctors20..24 no rodata. StageObject helperAE9C returns parameter table at fighter data+7C; target table0C points to speed factor0C. Stop RTTI8040 -> Normal8084 -> Energy31DC hierarchy proven; shared Suspend31F4 Enable346C Nullable3D60 names from target strings. Main untouched.

### 2026-10-02T22:54-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Local review ft_lucas/mo_fighter/ft_lucas/ft_lucas_status_uniq_process_special_lw: full source REL matches; no promotion. Evidence evidence\nonmatching\ft_lucas\brawl-codex8\ft_lucas_status_uniq_process_special_lw_20261003T015416.265962Z.

### 2026-10-02T22:54-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Promoted mo_fighter/ft_lucas/ft_lucas_status_uniq_process_special_lw (ft_lucas): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T22:55-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: Lucas SpecialLw source-linked commit31a4455 in codex/fighters2. FullREL review byte-identical, fresh127/127+independent check+post-probe PASS; originals/main unchanged. Evidence private.

### 2026-10-02T22:55-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: Next Lucas SpecialLwHold text12A0C..12D54 rodataB0..C0 data8668..86E8 bss250..260 ctors24..28. Target hold effect1B000F sound1450 pos(0,6.5,10) scale0.9; exit keeps handles only next11F/120. Same Vec3 ctor lifetime pattern as Ness. Naming shared emitted ctor from target index before code. Main untouched.

### 2026-10-02T22:56-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Local review ft_lucas/mo_fighter/ft_lucas/ft_lucas_status_uniq_process_special_lw_hold: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_lucas\brawl-codex8\ft_lucas_status_uniq_process_special_lw_hold_20261003T015640.816281Z.

### 2026-10-02T22:57-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Local review ft_lucas/mo_fighter/ft_lucas/ft_lucas_status_uniq_process_special_lw_hold: full source REL matches; no promotion. Evidence evidence\nonmatching\ft_lucas\brawl-codex8\ft_lucas_status_uniq_process_special_lw_hold_20261003T015702.616015Z.

### 2026-10-02T22:57-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Promoted mo_fighter/ft_lucas/ft_lucas_status_uniq_process_special_lw_hold (ft_lucas): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T22:57-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: Lucas SpecialLwHold source-linked commit786d62c in codex/fighters2. FullREL review byte-identical, fresh127/127+independent check+post-probe PASS; originals/main unchanged. Evidence private.

### 2026-10-02T22:57-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: Next Lucas SpecialHi text10DE4..113A4 rodata38..60 data82E0..8358 bss200..210 ctors10..14. Private normalized target comparison with matched NessHi shows same instructions except kind26/helperfn114_C4CC and registration symbols. Data boundary ends before Gravity prefix. Main untouched.

### 2026-10-02T22:59-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Local review ft_lucas/mo_fighter/ft_lucas/ft_lucas_status_uniq_process_special_hi: full source REL matches; no promotion. Evidence evidence\nonmatching\ft_lucas\brawl-codex8\ft_lucas_status_uniq_process_special_hi_20261003T015913.852016Z.

### 2026-10-02T22:59-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Promoted mo_fighter/ft_lucas/ft_lucas_status_uniq_process_special_hi (ft_lucas): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T23:00-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: Lucas SpecialHi source-linked commit9c24adb in codex/fighters2. FullREL review byte-identical, fresh127/127+independent check+post-probe PASS; originals/main unchanged. Evidence private.

### 2026-10-02T23:00-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: Next Lucas AttackS4 text10894..10A64 data80E8..81B8 bss1D0..1E0 ctors4..8 no rodata. Firstboundary ftLucasadjustor1088C..10894/classinfoRTTI80DC..80E8. SmashAttack immediatebase confirmed. Shared soStatus execStatus empty appears before reverse-vtable base inlines; will verify weak emission order/fullREL. Main untouched.

### 2026-10-02T23:01-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Local review ft_lucas/mo_fighter/ft_lucas/ft_lucas_status_uniq_process_attack_s4: full source REL matches; no promotion. Evidence evidence\nonmatching\ft_lucas\brawl-codex8\ft_lucas_status_uniq_process_attack_s4_20261003T020136.996998Z.

### 2026-10-02T23:02-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Promoted mo_fighter/ft_lucas/ft_lucas_status_uniq_process_attack_s4 (ft_lucas): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T23:02-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: Lucas AttackS4 source-linked commit74ea818 in codex/fighters2. FullREL review byte-identical, fresh127/127+independent check+post-probe PASS; originals/main unchanged. Evidence private.

### 2026-10-02T23:02-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: Next Lucas AirLasso text10A64..10CD8 rodata28..30 data81B8..8268 bss1E0..1F0 ctors8..C. RTTI proves ftStatusUniqProcessAirLasso base; owned sharedRTTI8260. Vtable overrideinit10A64, execFixPos10BB8; inherited exitSora18A11C. Add shared interface, name Sora init18A0BC/exit18A11C both revisions, clean-cache header rebuild. Main untouched.

### 2026-10-02T23:04-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Local review ft_lucas/mo_fighter/ft_lucas/ft_lucas_status_uniq_process_air_lasso: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_lucas\brawl-codex8\ft_lucas_status_uniq_process_air_lasso_20261003T020448.772292Z.

### 2026-10-02T23:06-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Local review ft_lucas/mo_fighter/ft_lucas/ft_lucas_status_uniq_process_air_lasso: full source REL matches; no promotion. Evidence evidence\nonmatching\ft_lucas\brawl-codex8\ft_lucas_status_uniq_process_air_lasso_20261003T020603.825878Z.

### 2026-10-02T23:06-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Promoted mo_fighter/ft_lucas/ft_lucas_status_uniq_process_air_lasso (ft_lucas): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T23:07-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: Lucas AirLasso source-linked commit1f0bede in codex/fighters2. FullREL review byte-identical, fresh127/127+independent check+post-probe PASS; originals/main unchanged. Evidence private.

### 2026-10-02T23:07-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: Next Lucas SpecialHiAttackEnd text12378..126F4 rodata98..A8 data8418..8570 bss220..230 ctors18..1C. Own model RTTI prefix8418..84EC proven by reference casts to ModelImpl (baseadjust8); class directsoStatus. init12378 exec1246C exit125B8, modelslot70 rotateZ node3, initStageObject updateNodeSRT. Model RTTI emitted before status via header order; naming shared Observer records from strings. Main untouched.

### 2026-10-02T23:10-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Local review ft_lucas/mo_fighter/ft_lucas/ft_lucas_status_uniq_process_special_hi_attack_end: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_lucas\brawl-codex8\ft_lucas_status_uniq_process_special_hi_attack_end_20261003T021013.028601Z.

### 2026-10-02T23:10-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Local review ft_lucas/mo_fighter/ft_lucas/ft_lucas_status_uniq_process_special_hi_attack_end: full source REL matches; no promotion. Evidence evidence\nonmatching\ft_lucas\brawl-codex8\ft_lucas_status_uniq_process_special_hi_attack_end_20261003T021054.087432Z.

### 2026-10-02T23:11-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Promoted mo_fighter/ft_lucas/ft_lucas_status_uniq_process_special_hi_attack_end (ft_lucas): full-REL probe byte-identical, 127/127, independent check OK.

### 2026-10-02T23:12-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: Lucas SpecialHiAttackEnd source-linked commitf5a3e7b in codex/fighters2. FullREL review byte-identical, fresh127/127+independent check+post-probe PASS; originals/main unchanged. Evidence private.

### 2026-10-02T23:12-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: Correction to preceding End ownership note: target ModelImpl slot70 is rotateX (proved named Sora vtable); fixed before acceptance. Last Lucas SpecialHiAttack text113A4..12378 rodata60..98 data8358..8418 bss210..220 ctors14..18. Gravity8394 directEnergy proven; sharedStop/Energy already named. Init/exec/fix instructions same Ness exceptkind26/node3/helperB6DC; fix is2284 bytes, carries known Ness schedulingnear-miss. Exit640bytes distinct, stores angle/decay on next11E/11B; bounded effort thenpark if necessary. Main untouched.

### 2026-10-02T23:14-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Local review ft_lucas/mo_fighter/ft_lucas/ft_lucas_status_uniq_process_special_hi_attack: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_lucas\brawl-codex8\ft_lucas_status_uniq_process_special_hi_attack_20261003T021401.729977Z.

### 2026-10-02T23:16-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Local review ft_lucas/mo_fighter/ft_lucas/ft_lucas_status_uniq_process_special_hi_attack: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_lucas\brawl-codex8\ft_lucas_status_uniq_process_special_hi_attack_20261003T021634.933552Z.

### 2026-10-02T23:19-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: brawl-codex8: Local review ft_ness/mo_fighter/ft_ness/ft_ness_status_uniq_process_special_hi_attack: full source REL not accepted; no promotion. Evidence evidence\nonmatching\ft_ness\brawl-codex8\ft_ness_status_uniq_process_special_hi_attack_20261003T021909.669390Z.

### 2026-10-02T23:20-03:00 · codex · note · fa9a359 (rsbe01_01-support) clean
- codex-parallel: fighters2 queue complete/checkpoint clean c23257b (codex/fighters2, base8a3ffb1), 19 local commits: 17 source-linked TUs (Pit1/Ness8/Lucas8), two parkedNonMatching9/10 each (Ness7876977/Lucasc23257b). Every accepted fullREL+promotion gatesPASS; final build/check127/127+testsOK+originalsunchanged; allowlist/split audit17/2PASS. Lucas byte-scope41 differingbytes all in positionhandler, all outsidebytesidentical. Nessre-review afterheadersstill9/10. No jobs, push/merge/rebase/mainbuild/edit/leaseclaim. FIGHTERS_STATUS updated with IDs, exact recipes, evidence and integration instructions; lease owner integrates and re-verifies.

### 2026-10-02T23:22-03:00 · codex · claim · fa9a359 (rsbe01_01-support) clean
- task: Integrate fighters2, then Meta Knight finals in codex/mk-finals
- lease until 2026-10-03T02:22-03:00
- FORCED over held by claude for 120 more min
- User explicitly authorized takeover and integration; Claude out for two days. Main clean fa9a359; no active Brawl compiler/build processes.

### 2026-10-02T23:22-03:00 · codex · checkpoint · fa9a359 (rsbe01_01-support) clean
- Starting fresh main baseline build/check before authorized fighters2 integration. Logs evidence/nonmatching/mk_finals/integration_baseline_*.log. Main fa9a359 clean, fighters2 c23257b clean.

### 2026-10-02T23:23-03:00 · codex · verify · fa9a359 (rsbe01_01-support) clean
- verified: fa9a359 fresh main build127/127, independent verifier/tests/originals check PASS
- Starting BrawlTool integrate codex/fighters2; nineteen commits, log evidence/nonmatching/mk_finals/integration.log. User authorizes integration; no push.

### 2026-10-02T23:24-03:00 · codex · checkpoint · c873557 (rsbe01_01-support) clean
- Integrated Pit088592f; resolved Ness59a8231 common-data header by retaining typed80/84 and Claude pointer88. Zelda kind13 references use explicit reinterpret_cast from typed84 to actual fighter-specific record; no union alias/offset change. Will probe affected Zelda TUs as well as17 new accepted ones. Resuming remaining tool integration.

### 2026-10-02T23:26-03:00 · tool · verify · 39bb5bf (rsbe01_01-support) clean
- verified: OK: 127/127 after integration
- Integrated 17 commit(s) from codex/fighters2: clean rebuild 127/127, independent OK, probes OK for mo_fighter/ft_lucas/ft_lucas_status_uniq_process_air_lasso, mo_fighter/ft_lucas/ft_lucas_status_uniq_process_attack_s4, mo_fighter/ft_lucas/ft_lucas_status_uniq_process_special_hi, mo_fighter/ft_lucas/ft_lucas_status_uniq_process_special_hi_attack_end, mo_fighter/ft_lucas/ft_lucas_status_uniq_process_special_hi_reflect, mo_fighter/ft_lucas/ft_lucas_status_uniq_process_special_lw, mo_fighter/ft_lucas/ft_lucas_status_uniq_process_special_lw_hold, mo_fighter/ft_lucas/ft_lucas_status_uniq_process_special_s, mo_fighter/ft_ness/ft_ness_status_uniq_process_attack_hi4, mo_fighter/ft_ness/ft_ness_status_uniq_process_attack_hi4_start, mo_fighter/ft_ness/ft_ness_status_uniq_process_attack_s4, mo_fighter/ft_ness/ft_ness_status_uniq_process_special_hi, mo_fighter/ft_ness/ft_ness_status_uniq_process_special_hi_reflect, mo_fighter/ft_ness/ft_ness_status_uniq_process_special_lw, mo_fighter/ft_ness/ft_ness_status_uniq_process_special_lw_hold.

### 2026-10-02T23:27-03:00 · codex · checkpoint · 39bb5bf (rsbe01_01-support) clean
- Tool integration at39bb5bf clean: remaining17 commits built clean127/127, independent check PASS, new-unit/heal probes PASS. Two early manual/tool picks and Zelda cast adjustments require extra PitSRevolve/NessS/Zelda hi-hi2-hi3 probes now; log integration_extra_probes.log. Then docs/header-resolution commit before mk-finals worktree.

### 2026-10-02T23:27-03:00 · codex · verify · 415f2e6 (rsbe01_01-support) clean
- verified: Main integration clean127/127, independent verifier/tests PASS,17 new source probes + affected Zelda hi/hi2/hi3 + heal PASS; originals unchanged
- All19 fighters2 commits integrated; doc followup added. Ready to start MK finals isolated worktree from this main. No push.
