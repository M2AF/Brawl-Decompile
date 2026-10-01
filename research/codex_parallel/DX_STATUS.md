# codex-parallel: DX stage bodies (active, 2026-10-01)

Worktree brawl-codex6, branch codex/dx, base9ec5405. Main read-only; lease
not claimed. Journal only note/codex-parallel. Never merge/rebase/push.
Originals, compiler/tools and independently wired BrawlHeaders Git metadata
copied locally. Baseline build --clean + check both PASS127/127; see private
research/evidence/nonmatching/dx6/baseline_build.log and baseline_check.log.

Queue: Onett stage body first; ground classes remain extracted. Derive exact
text/rodata/data/RTTI/bss/ctors ownership from references before splitting.
Then Big Blue stage body by the same method. Full source REL acceptance,
MatchingFor+verified list, build/check127/127 required before promotion.

No new source-linked TU. Onett70/71 and Big Blue81/101 are function diagnostics, not accepted builds. No permuter running.
Receiver: inspect this status and live handoff status; do not touch main.

## Onett (parked NonMatching)

Module78, RTTI stDxOnett, stage size300. Proven ranges: text70..1684,
rodata0..58, data0..548, bss8..18, ctors0..4. Stage vtable1D0/RTTI450;
class-info vtable4E8 and methods15D8/164C/1680; base class-info RTTI540
finishes548. First ground factory1684 uses its own rodata58; ground string
pool548/vtable5A4 stay extracted. Label reference audit has no stage refs
beyond its proposed owned ranges (calls into grounds remain imports).
Split applied NonMatching, factory force-active added. Parked source/header
recovery: 70/71 diagnostic functions; raw rodata/data/ctors match, BSS16.
Full source REL70568 bytes has12 differing bytes (stack operands in chooseCar).
Latest private review st_dxonett/brawl-codex6/st_dxonett_20261001T230705.107326Z.
No promotion/allowlist entry; fallback clean build and independent check127/127
PASS, originals unchanged. No permuter or flag sweep. Bounded variants recorded
in evidence/nonmatching/dx6/onett_*; best uses resetObject reference temporaries.
Source comment/doc flag the remaining stack-slot mismatch. Camera headers name
existing fields only; all linked source recompiled127/127. Local commit147b9ca on codex/dx. Next Big Blue ownership derivation, then split/draft/source.

## Big Blue (active)
Module81, class stDxBigBlue sizeC3C, text70..4178, rodata0..90,
data0..7A8, bss8..18, ctors0..4. Registration4068 and class-info methods
40CC/4140/4174 end the body; class-info base RTTI7A0 ends7A8.
Existing source-linked base ground begins4178/data7A8/rodata90 and is kept
separate. Stage references audited; proof dx6/bigblue_ownership.json.
Split/draft done; full typed source and RTTI-proven ground interfaces now compile.
First diagnostic81/101; raw .data1960/.ctors4 same, .rodata148vs144.
All defined functions and global metadata named in isolated config (110 mappings).
Named fallback build currently running: evidence/nonmatching/dx6/bigblue_named_build.log.
Source remains NonMatching, no allowlist entry or acceptance. Next resolve remaining
source/order/import names, then whole-REL review. DOL functions8015C238/8015C2BC
behave as NW4R LinkListImpl destructor/Erase(Iterator); imports need proof-naming
in isolated config before the source probe. Full repro helpers/evidence dx6/.
Both instruction and control-flow mismatches remain; do not describe as reg-only.
