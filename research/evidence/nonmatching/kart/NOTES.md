# st_kart (Mario Circuit, module 49) stage body: NonMatching, near-miss

Source: brawl/src/mo_stage/st_kart/st_kart.cpp (best: st_kart_best.cpp here). No target asm in this file.
TU: .text [0x70,0x12D0), .ctors [0,4), .rodata [0,0x50), .data [0,0x450), .bss [8,0x18). stKart size 0x39C.

Status (probe_result.txt): full REL 88,312 bytes, 72 differing bytes, all inside:
- updateRanks (text 0xBF4): MWCC schedules `li r0,1` (allOnFinalLap) and the m_bgState=10 store before the
  __alloca sequence; target puts them after it. Best ordering found: `m_bgState = 10; bool flag = true; __alloca(...)`,
  16 diff lines (one reordering). With __alloca first, the flag gets a different register (74 lines).
- getZoneLightSetIndex (text 0xE5C): both FSelect clamps differ in FP register/schedule, and the constant pool
  orders 1.0f before 55.0f (target: 55 then 1). Same class of problem as Battlefield's fsel clamp.
- .rodata 0x3C/0x40 (55.0/1.0 swapped) and the two relocation entries pointing at them.
All other 61 functions, all data, vtables, RTTI, setters and header inlines match.

Tried (bounded, no flag sweeps, no permuter): ut::Clamp (branches, wrong), explicit FSelect statements
(folds t-0.0f, 2 insns short), clamp on a temp, ordering of alloca/bg/flag statements (kv5/kv7), per-loop bounds.
Kept: per-loop `for (u8 i = 0, n = data->m_kartNum; i != n; i++)`, record pointer locals.

Shared changes made for this TU (verified neutral, 127/127 with source cache cleared):
- include/st/stage.h override: Stage::getZoneLightSetIndex(Vec3f* pos) (stKart's override reads x,y from r4).
- sora_melee symbol getZoneLightSetIndex__5StageFv -> __5StageFP5Vec3f in RSBE01_01 and RSBE01_02 (same REL).
- DOL fn_8016232C -> CosFIdx__Q24nw4r4mathFf (rev1 only): same table as SinFIdx, reads cos columns (+4/+0xC), fabs first.

Techniques in the draft (document if promoted): #pragma dont_inline around the out-of-line ctor (MWCC would inline it
into create); camera bounds as POD nw4r::math::_VEC3 with a setBound helper; __alloca for the unused VLA; update()
passes an uninitialised float when CameraController's stage param pointer is null (as the original does).

Next options: a capped decomp-permuter run on getZoneLightSetIndex (pure float code, easy C rewrite) and on
updateRanks; or park and move to the next candidate.

## Permuter runs (2026-10-01, Claude)
Tool: decomp-permuter @059609d + local src/preprocess.py pass-through patch (see permuter_requestSlow/permuter-local.patch).
Command: `timeout 1800 ../.venv/Scripts/python.exe permuter.py <dir> -j 12` from decomp-permuter/. Cap 30 min each.
Scoring caveat: the scorer objdumps the WHOLE object, so each score includes the other near-miss as a constant floor
(both bases 6000). Best outputs were therefore re-checked inside the real TU (scratch try_ranks.py / kdiff).
1. getZoneLightSetIndex (permuter_zone/, builder claude_tools/mk_perm_kart_zone.py; clamp moved into the
   permutable region): 15:04-15:34, exit 124 (cap), 22,833 iterations, best 5880. Best variants only hoist the
   second clamp argument into a temp. No match; nothing applied.
2. updateRanks (permuter_ranks/, builder mk_perm_kart_ranks.py; for-init declarations hoisted with
   claude_tools/hoist_for.py, verified identical codegen; comments stripped; NULL->0 in ignored tail):
   15:36-16:06, exit 124 (cap), 22,545 iterations, best score 5630. In-TU check of the 15 best: best is
   13 diff lines (output-5730-1, splits one `u8 i = 0` into decl + assignment) vs 16 baseline. No match; nothing applied.
Conclusion: st_kart stays NonMatching (c472821). Both remaining issues are MWCC scheduling/register choices.
