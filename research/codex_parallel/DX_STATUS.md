# Codex DX handoff — 2026-10-01

Worktree: C:/Users/balla/Documents/Brawl Decompile/brawl-codex6
Branch: codex/dx, base9ec5405. Main brawl was never edited; no lease claimed,
merge, rebase, push or upload. Shared journal writes only codex-parallel notes.
Onett commit147b9ca; Big Blue commit32a1668. Worktree clean at32a1668.

## Result

New source-linked TUs: **0**. Both drafts remain NonMatching, outside the
verified_objects allowlist. Instruction diagnostics: Onett70/71, Big Blue93/101;
these normalize branches/relocations and do not establish function byte matches.
No permuter/process running. All target assembly stays in private evidence.

Baseline build --clean + check127/127 passed. Final clean fallback build127/127
passed after the SDK import renames and all shadow headers. Independent check
127/127, verifier tests and original hash validation passed. Final normal
build/check after the last source comments/config formatting also PASS127/127;
logs evidence/nonmatching/dx6/final_normal_build.log and final_check.log.

## Onett — parked

Module78, stDxOnett size0x300. Owned text[70,1684), rodata[0,58),
data[0,548), bss[8,18), ctors[0,4). Class-info methods15D8/164C/1680
end the stage text; base RTTI540..548 ends data. First ground factory1684,
ground rodata58 and strings/vtable548/5A4 remain extracted.

Full source REL70568 bytes:12 differing bytes, all chooseCar stack operands,
first148F,last14EB. Raw RO/data/ctors match; BSS16. Re-probed after Big Blue's
DOL names: identical remaining12-byte mismatch. Private reviews:
- st_dxonett/brawl-codex6/st_dxonett_20261001T230705.107326Z
- st_dxonett/brawl-codex6/st_dxonett_20261002T001746.794814Z
Relative review roots are research/evidence/nonmatching/.

Commit147b9ca includes source/header/config/docs and camera field names at
existing ABI offsets. Source comments/docs document the matching camera-null
path UB and resetObject temporary lifetime. Keep extracted build. Best source
uses resetObject references; bounded onett_* variants did not fix stack slots.

## Big Blue — parked

Module81, stDxBigBlue sizeC3C, kind49. Owned text[70,4178),
rodata[0,90), data[0,7A8), bss[8,18), ctors[0,4). Stage vtable3C4,
RTTI6A8; registration4068, class-info40CC/4140/4174 ends4178,
class-info base RTTI7A0..7A8. Existing matched gr_dxbigblue base starts4178
with data7A8/RO90 and remains source-linked; other grounds remain extracted.
Ownership/vtable proof: evidence/nonmatching/dx6/bigblue_ownership.json,
bigblue_vtable.json, symbol map/helper scripts. Maps are initial naming drafts;
current config additionally corrects Vec3f pointer and Car setter signatures.

Source links in isolated full-REL review, but fails byte identity:
original64688, probe64672. Text section33572 vs33584 (+12), relocation stream
and section offsets differ. Full linked RO288/data14464 are byte-identical.
Candidate object RO140 vs sliced144 is linker alignment: no fake pad table.
Stage candidate raw data1960/ctors4 equal, BSS16. Diagnostic93/101.
Remaining fn offsets:11BC,19A8,1DE4,21EC,25C4,2DB4,31C0,344C. Differences
include copies, control flow, loop addressing and FP scheduling; not reg-only.

Linked review: evidence/nonmatching/st_dxbigblue/brawl-codex6/
st_dxbigblue_20261002T020055.967614Z (final source/config hashes before commit).
Earlier successful linked comparison: st_dxbigblue_20261002T001545.198279Z.
Per-section comparison: dx6/bigblue_linked_sections.json.
Frozen sources: dx6/bigblue_parked/. Full diagnostic: dx6/bigblue_final_diagnostic.log.
Bounded variant specs/logs dx6/bigblue_*_variants.* capture exact replacements.
Constructor direct array lvalues, ground declaration order, explicit typed FP
locals, goto layout and scalar vector loads fixed small functions. No sweeps.
Detailed UB/lifetime/aliasing review in worktree docs/RSBE01_01.md.

Probe traps:
- m2c invented fourth/fifth Car factory arguments. Callee6858 reads only3;
  current declaration s16,const char*,const char* proven by callee/caller.
- fabsf standalone declaration is unresolved in this harness. Current draft
  uses (float)fabs intrinsic; larger-function extra round/scheduling diffs are
  intentionally parked. Do not restore fabsf just for a smaller diagnostic score.
- DOL symbols8015C238/8015C2BC now typed SDK LinkListImpl destructor and
  Erase(Iterator). Evidence dx6/bigblue_sdk_names.md. Other unknown imports
  retain extern C labels. Receiver must check newer main for old-label uses.
- Rebuild normal main.elf after symbol changes BEFORE review; an old main.elf
  cannot resolve new import names. First failed reviews were tool/precondition
  failures, not linked comparisons. Final linked review resolves all imports.
- Variants restores the source, but its candidate object may be the last trial.
  Recompile real source with diff/review before trusting it. One -f per command.
- Never run concurrent Ninja/configure/probes in this same checkout.

## Receiver / exact next actions

Run live agent-handoff status from research. Main ownership remains Claude's;
any follow-up must use this isolated branch until the owner integrates commits.
Do not merge/rebase/push. Onett and Big Blue are both parked; neither passes
promotion. The integrating owner can cherry-pick the separate parked commits,
resolve configure/config/docs against newer main, clear src after header changes,
and build/check127/127. Keep both NonMatching and leave allowlist untouched.

Commands from research (explicit --repo is mandatory):
```
./brawltool-cli.bat --repo '../brawl-codex6' build --clean
./brawltool-cli.bat --repo '../brawl-codex6' check
./brawltool-cli.bat --repo '../brawl-codex6' diff st_dxonett mo_stage/st_dxonett/st_dxonett
./brawltool-cli.bat --repo '../brawl-codex6' review st_dxonett mo_stage/st_dxonett/st_dxonett
./brawltool-cli.bat --repo '../brawl-codex6' diff st_dxbigblue mo_stage/st_dxbigblue/st_dxbigblue
./brawltool-cli.bat --repo '../brawl-codex6' review st_dxbigblue mo_stage/st_dxbigblue/st_dxbigblue
```
Resume only a bounded understood near-miss; full-REL byte identity is mandatory
before MatchingFor/allowlist. No new task was selected beyond these two stages.

Final local commits:147b9ca (Onett),32a1668 (Big Blue), both parked.
Final main live check:33d3f02 clean, Claude lease still held; not modified.
No active Codex jobs and no new source-linked TUs.
