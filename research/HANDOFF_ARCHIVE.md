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
