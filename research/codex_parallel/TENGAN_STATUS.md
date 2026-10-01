# codex-parallel: Tengan grounds status

Current results are in Session 2 below. The preceding session record is historical;
its base/shared-header commits are already integrated in main at 88d8d3f.

- Worktree: C:/Users/balla/Documents/Brawl Decompile/brawl-codex2.
- Branch: codex/next; base f60af98; clean.
- Local commits, in order: 7f3d18c (shared static pair header), 2e72a19 (matched Tengan base ground).
- No main-checkout source edits, lease claim, merge, rebase, push or upload. Shared coordination used only codex-parallel note entries. Live main state last observed c472821 with a free lease; its later integration remains separate.

## Accepted source-linked TU

mo_stage/st_tengan/gr_tengan.cpp: grTengan : grYakumono, .text 0x6348..0x65BC (628 bytes/21 functions), .data 0x838..0xAB8 (640 bytes). No owned .rodata/.bss/.ctors. All 21 functions are 100% in objdiff. Full source REL identity: 57504 bytes, SHA1 839c8054988ecf7f32862da78fc429daea8833b1.

Promoted only after the full-REL probe; MatchingFor("RSBE01_01") and verified_objects.txt agree. Stamp-removed configure+ninja and independent verifier both print OK: 127/127 binaries verified. Branch-only totals: 190 verified unique source TUs; 522/4407 source-linked instances (65/1722 DOL, 457/2685 REL). Do not replace main totals with these.

Shared stMadeinStaticPair moved unchanged into include/st/st_madein_static_pair.h; st_heal.h includes it. Full-REL heal probe remains identical after promotion: 14312 bytes, SHA1 c5e0b6cf84f676e01b240c59d4b6f31e14cc16eb. Source cache was archived and rebuilt after new headers. All 128 copied originals compare identical to the main originals; none were committed.

## Ownership correction and unaccepted work

The queue's provisional #10 envelope (5228 bytes/37 functions) spans four original class objects. A combined single-TU draft reached 34/37 normalized instruction comparisons but FAILED the full-REL gate: 57168 versus 57504 bytes, due to weak/vtable/pool ordering plus three remaining function differences. It is private evidence, not accepted progress.

Ownership was logged before narrowing to the actual base TU. Bg's smaller text envelope (560 bytes) has redundant stripped metadata whose boundaries need further work; it was not considered clean. grTenganBg, grTenganFloor and grTenganAshiba remain entirely extracted. Their source drafts and recovered layout notes are archived privately. No extra source-linked TU and no separate accepted single-function matches are claimed.

The accepted base does not need fabricated RTTI payloads: matching the still-extracted setStageData and gfTask RTTI symbol names lets the linker discard its extra weak emissions normally. The first reduced probe failed because dtk had reformatted split whitespace; an asserted split edit fixed the scope, followed by 21/21 object and full-REL checks. Do not use the earlier failure logs as current results.

## Matching and UB review

The base factory uses an inline ignored-bool constructor overload; its one-argument base constructor, destructor and update are kept out of line with a narrow dont_inline pragma. The overload controls code-generation boundaries; it is not established original source. Constructors have ordinary C++ object lifetimes and zero the same buffer. No alias pun was introduced.

The target unconditionally calls setupMelee after allocation, so successful StageInstance allocation is a precondition. setTgtNode preserves strcpy(empty) and strncpy(127), requiring valid, non-overlapping source input. getTgtNode is defined out of line to preserve placement. These details are documented in docs/RSBE01_01.md. No flag sweep or permuter run.

## Reproduction and evidence

From brawl-codex2, using ../.venv/Scripts/python.exe and ninja.exe:

1. python configure.py --version RSBE01_01
2. Remove only build/RSBE01_01/ok; ninja must pass 127/127.
3. python ../research/claude_tools/probe_source_rel.py st_tengan mo_stage/st_tengan/gr_tengan
4. python ../research/claude_tools/probe_source_rel.py st_heal mo_stage/st_heal/st_heal
5. python tools/verify_manifest.py config/RSBE01_01/binary-manifest.json --sha1-file config/RSBE01_01/build.sha1 --orig --dtk build/tools/dtk.exe

Accepted logs: research/evidence/nonmatching/tengan/base_corrected_probe.log, base_final.diff.txt, accepted_objdiff_unit.json, promoted_build.log, independent_verify.log, final_heal_probe.log.

Target asm and all combined drafts/diffs stay only in research/evidence/nonmatching/tengan/. Never upload that directory. Helpers compare the current worktree, not hard-coded main paths.

## Integration action for lease owner

Inspect current main lease/head, then cherry-pick 7f3d18c followed by 2e72a19. Codex has performed neither operation. Resolve any docs/configure/allowlist conflicts while preserving both agents' work. Clear main source cache for the new shared header, configure, remove its verification stamp, rebuild and require 127/127; rerun both source REL probes. Only the integrating lease owner updates main PROJECT_STATE and totals. Main's newer c472821 Stage::getZoneLightSetIndex header/symbol correction must be preserved.

No jobs remain running and no continuation to another candidate was started.


## Session 2: remaining grounds completed/attempted (2026-10-01)

- Isolated worktree: `C:/Users/balla/Documents/Brawl Decompile/brawl-codex3`.
- Branch `codex/tengan2`, base `88d8d3f`, final HEAD `6351813`, clean.
- Main checkout was read only. Claude's lease was never claimed or released.
  Only `note` journal entries tagged `codex-parallel` were written.
- No merge, rebase, push or upload. No jobs from this session remain running.
  Claude's independent kart permuter is outside this session's ownership.

### Accepted source-linked TUs (two, separate commits)

| TU | Local commit | Owned ranges (end exclusive) | Functions |
| --- | --- | --- | --- |
| gr_tengan_bg.cpp | 45388f8 | text 65BC..67EC; data AB8..DD0 | 3/3 |
| gr_tengan_ashiba.cpp | eb439b1 | text 7174..77B4; rodata 108..114; data FF0..1208 | 6/6 |

Both include their owned data and weak-emission renames. Bg's redundant
stripped-metadata residue is handled naturally by the separate TU/linker;
no synthetic RTTI blob or padding. Ashiba uses literal floats for its pool,
a harmless constructor member-address check and a captured typed callback
node pointer. Matching constructs and UB/lifetime/aliasing review are in
`brawl-codex3/docs/RSBE01_01.md`.

Each was kept NonMatching until its full source REL probe passed, then promoted
with MatchingFor("RSBE01_01") and verified_objects.txt, followed by a
stamp-removed 127/127 build and a post-promotion full-REL re-probe. Final probes
also pass after adding the Floor split: 57,504 bytes, SHA-1
`839c8054988ecf7f32862da78fc429daea8833b1`. Ashiba's standalone object data
diff includes discarded weak RTTI; full linked REL identity proves acceptance.

### Unaccepted function-only progress: Floor

Local WIP commit `6351813` adds `gr_tengan_floor.cpp`, its header, split,
symbols, NonMatching configuration and documentation. Owned ranges:
text 67EC..7174 (2,440 bytes/seven functions), rodata F8..108 (16),
data DD0..FF0 (544), no BSS/ctors. Class is directly grYakumono, size 17C.
Five functions match the instruction diagnostic (factory, destructor, update,
updateFloor, empty fn_60_6D28). These are not a source-linked TU or separately
accepted full-byte/relocation function matches. Floor is absent from the
allowlist and normal builds use extracted fallback code.

Near misses: updateVisibility has one trailing blr after its indirect tail
branch. changeAnimation has five extra shift-count masks and different
resource/instanceSize stack slots. Final object fuzzy instruction match is
98.97049%; five of seven functions match. Full source REL probe FAILS:
57,504 bytes, SHA-1 `f909ded2670caa7a47a9a1a531f4a09aa9940983`, first differing
byte 0x37. Same size alone is not acceptance; data/relocations remain unaccepted.

Eight bounded focused variants were attempted, without flag sweeps/permuter:
four visibility layouts, a defined u64 shift (out-of-line __shl2i), an unavailable
__slw intrinsic (compile failed), masked u32 shift, instanceSize scope change.
The current helper is defined only under the documented index<2 caller domain.
Do NOT remove its mask: cntlzw(equal) is 32 and a C++ shift by 32 is undefined.
Original PPC slw behavior cannot justify that C++ rewrite. Source is explicitly
commented NonMatching. Future hypothesis (not attempted): recover the original
gfModelAnimation inline helper boundaries to reproduce stack temporaries and
boolean materialization, rather than hand-expanding all five blocks.

### Final validation / reproducible evidence

Fresh isolated clean-source baseline passed 127/127. Source cache was archived
and rebuilt for each new header. Final normal build with verification stamp
removed and independent manifest verifier both pass 127/127. All 128 local
original copies compare identical to main originals, and only original
.gitkeep placeholders are tracked. Branch-only totals: 192 allowlisted unique
TUs, 524/4,407 linked object instances (DOL 65/1,722; REL 459/2,685).
Do not replace main totals with these without integration verification.

From `brawl-codex3`, use `../.venv/Scripts/python.exe` and ninja.exe:

1. `python configure.py --version RSBE01_01`.
2. For new headers, archive/clear only this worktree's `build/RSBE01_01/src`;
   remove `build/RSBE01_01/ok`; `ninja` must print OK: 127/127.
3. `python ../research/claude_tools/probe_source_rel.py st_tengan mo_stage/st_tengan/gr_tengan_bg` (must pass).
4. Same command with `gr_tengan_ashiba` (must pass).
5. Same command with `gr_tengan_floor` (expected fail while NonMatching).
6. `python tools/verify_manifest.py config/RSBE01_01/binary-manifest.json --sha1-file config/RSBE01_01/build.sha1 --orig --dtk build/tools/dtk.exe`.

Private evidence: `research/evidence/nonmatching/tengan/session2/`:
- baseline.log; bg/ashiba promoted build/probe logs.
- floor_best.cpp / floor_best.h / floor_best.diff.txt, floor_compile_commands.txt.
- floor_visibility_results.json, floor_* variant snapshots/logs/diffs.
- floor_final_build.log; floor_final_probe.log; final_bg_probe.log;
  final_ashiba_probe.log; final_manifest.log.
- gr_tengan_*_final_objdiff.json; final_original_copy_check.json.

These diagnostics and target asm remain private. Helpers use the current
isolated cwd, not hard-coded main paths; compile failures must not accept stale objects.

### Integration for the lease owner only

Inspect live main lease/head. Cherry-pick `45388f8`, then `eb439b1`.
`6351813` is an optional separate NonMatching WIP/evidence-bearing source commit;
do not promote it. Resolve shared docs/configure/splits/allowlist conflicts
while preserving Claude's kart work and the Stage Vec3f* header change.
Clear integrating source cache for new headers, configure, remove stamp,
build 127/127 and re-probe st_tengan. Only the lease owner updates main
PROJECT_STATE and source-linked totals. Codex performed no integration.
All three requested grounds are done or attempted; no next candidate started.
