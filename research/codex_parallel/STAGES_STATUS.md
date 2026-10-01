# codex-parallel: finishing pass (active, 2026-10-01)

Worktree brawl-codex5, branch codex/finish, base fe9e4d6. Main read-only;
Claude owns its lease. Journal only note/codex-parallel. Never merge/rebase/push.
Baseline BrawlTool build --clean and check both passed 127/127.

## Target-break: parked NonMatching, commit e5b5e9e

Owns text70..1B64, rodata0..A0, data0..CE8, bss8..28, ctors0..4.
Corrected metadata order, debug string and attack-template word. Raw data3304
identical; object rodata156 is an exact prefix of target160, with four trailing
linker-alignment zeros. Entire linked rodata164 is byte-identical. No artificial
padding or split change. Recovered intrinsic aggregate copy and nw4r VEC3 math.
56/58 diagnostic function matches; createObj/update still fail on stack layout,
setter/vector scheduling and registers. Full source REL FAILS:23712 vs23744,
SHA1 e5825a6a34db488ea86291e005077b380dd66d4f vs
211a30aa65a40682c4cdccff9b9a81459b14fb51. No promotion or allowlist edit.
Final clean-source build127/127 and independent check127/127 use fallback.
Eight focused source/layout groups; no flag sweeps/permuter. Docs include
UB/aliasing/lifetime review. Private evidence evidence/nonmatching/finish5/
and evidence/nonmatching/st_tbreak/brawl-codex5/ (latest review214424).
Best snapshots tbreak_best.cpp/.h; exact commands/hashes in review folder.

## Tengan Floor: accepted source-linked, commit 90d4a16

Exact ownership text67EC..7174, rodataF8..108, dataDD0..FF0; no bss/ctors.
Corrected obsolete imports, merged unreachable visibility epilogue into its
method (6 actual functions), and recovered defined u8 comparison + two nested
inline helper levels for animation temporary layout. No explicit unsafe shift.
Full source st_tengan REL byte-identical:57504 SHA1
839c8054988ecf7f32862da78fc429daea8833b1, including accepted Bg/Ashiba.
Promoted MatchingFor(RSBE01_01)+verified list only after full-REL probe.
All four BrawlTool promotion gates pass; final review215914 also passes after
whitespace cleanup. Final build127/127 + independent check127/127, originals
unchanged; floor_final_build/check.log, floor_promote.log under finish5.
Raw .data680 vs544 includes stripped weak metadata; full REL decides acceptance.
BrawlTool diagnostics misleadingly split at the new local epilogue label; this
does not affect the passing full-REL probe. No permuter/flag sweep.

## Oldin: parked NonMatching, commit fd966e0

Owns text70..418C, rodata0..E4, data0..6C0, bss8..18, ctors0..4.
Raw rodata228/data1728/bss16/ctors4 byte-identical after original helper-order,
double precision, first-use constant ordering, color construction and actual
bomb danger-zone / bridge-timer corrections. No split changes/fake padding.
41/53 diagnostic functions. Full source REL FAILS34152 vs32744,
SHA1 2a40ccbe333d93caf7befdc426efb928716fee69 vs
905f78be9ff518c881f446ef8c9d667252db0782. Code and relocations not accepted.
Still NonMatching, not allowlisted. Six focused groups, no flags/permuter.
One u16 collision-index trial worsened code and was reverted. Structural
remaining differences need real member/helper recovery, not a register sweep.
Final private review220847 includes exact compile commands + source/input hashes.
Frozen best sources/audit under evidence/nonmatching/finish5/.
Final fallback build127/127 + independent check127/127 pass; accepted Floor
whole-module review220909 still byte-identical. Existing gr_oldin unaffected.

## Receiver / integration (lease owner only)

All requested TUs finished or parked. Clean isolated branch codex/finish, HEAD
fd966e0; local only. Commits in order: e5b5e9e (Target-break NonMatching),
90d4a16 (Floor accepted), fd966e0 (Oldin NonMatching). No new task started.
One newly source-linked TU: gr_tengan_floor; no new function-only promotions.
Target-break56/58 and Oldin41/53 remain extracted fallbacks. Do not promote
those diagnostic counts or raw-section equality. No jobs running.

Integrator: read live handoff status; preserve Claude's main WIP. Only lease
owner cherry-picks. Inspect configure.py/allowlist/st_tengan symbol conflicts;
retain the Floor 0x6D28 local epilogue label and nested animation helper levels.
Clean source cache (Target-break header order changed), configure, remove ok,
build127/127 + check127/127, and source-review Floor's whole st_tengan REL.
Re-review Target-break/Oldin only if further code changes justify it.
Private evidence cannot be shared: reviews contain target disassembly.
Main/lease/board untouched; journal only note entries tagged codex-parallel.
