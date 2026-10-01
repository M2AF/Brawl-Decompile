# Claude/Codex status handoff — RSBE01_01 (updated 2026-10-01)

Everything below is committed on the local branch `rsbe01_01-support` in `Brawl Decompile/brawl` (HEAD `b284006`). Nothing has been pushed. Full provenance and evidence: `brawl/docs/RSBE01_01.md`.

## Build and gate
```
cd brawl
..\.venv\Scripts\activate          # ninja lives here (pip ninja 1.13.2)
python configure.py --version RSBE01_01
ninja                              # default target = tools/verify_manifest.py, must print OK: 127/127
python tools/test_verify_manifest.py
```
Originals: `brawl/orig/RSBE01_01` (git-ignored). Frozen hashes: `config/RSBE01_01/binary-manifest.json`.
Rev1 links an object from source only if it is listed in `config/RSBE01_01/verified_objects.txt`.

## Source-linked TUs (verified by 127/127)
- All 175 upstream `Matching` TUs (verified on rev1).
- New for rev1:
  - `sora/cm/cm_controller_menu_fixed.cpp`
  - `mo_menu/sora_menu_sel_char_access/sel_char_access.cpp` (new split)
  - `mo_stage/st_battles/st_battles.cpp` and `gr_battles.cpp` (new splits; all of `st_battles.rel` is now from source)
  - `sora/gf/gf_slow_manager.cpp` (upstream NonMatching). `requestSlow` uses the permuter-found `u8& result = res;` alias. This is a matching technique, not evidence of the original spelling, and it has been reviewed for UB, lifetime and aliasing problems.

  - `mo_adv_menu/sora_adv_menu_telop/mu_adv_telop_task.cpp` (0075b7d).
  - `mo_stage/st_oldin/gr_oldin.cpp` (0db5452).
  - `mo_stage/st_tbreak/gr_tbreak.cpp` (abde2dc).
  - `mo_stage/st_dxcorneria/gr_dxcorneria.cpp` (dbed709), candidate #3 complete.

  - `mo_stage/st_newpork/gr_newpork.cpp` (b284006), candidate #4 complete; all 29 functions and data/relocations.

Total: 185 TUs (175 upstream + 10 rev1 additions). Live next action and in-flight state: `HANDOFF_LOG.md`. Later chronological updates supersede historical next-step suggestions below.

## Function-only matches (TU not promoted)
- `sora/cm/cm_controller_menu_pad.cpp` (new split `.text 0x800A6598–0x800A68C0`): ctor, storeDefault and init match. `update()` does not: the target gives its two int→float conversion temps separate stack slots (0x50/0x58) with the 0x4330 hi-words stored at entry.

## Parked near-misses (upstream NonMatching; the diff is only register allocation)
`ut_relocate` resolveReference, `mt_trig` mtSinCosf, `mt_vector_old` vlRotateFix, `gf_task_scheduler` (process/render/…), and the menu_pad update above.
Best attempts, compile commands and diffs are in `research/evidence/nonmatching/*.txt` (private: contains target asm).

## Permuter (bounded finishing tool)
- Tool: `Brawl Decompile/decomp-permuter` @ `059609d4`. It carries one local patch (`src/preprocess.py` pass-through, because there is no `cpp` on this PC); the patch is saved in `research/evidence/nonmatching/permuter_requestSlow/permuter-local.patch`. The venv needs `toml`.
- Full reproducible record of the successful run: `research/evidence/nonmatching/permuter_requestSlow/NOTES.md`.
- Recipe:
  - Put the entire TU (preprocessed headers from `mwcceppc -E` plus the other functions) in `PERM_IGNORE(...)`, with `#define <fn> Class::<fn>`.
  - Put C stand-in types in `PERM_PRETEND(...)`.
  - The function under test goes last.
  - Use the extracted original object `build/RSBE01_01/obj/<unit>.o` as `target.o`.
  - Run `python permuter.py <dir> -j 12 --stop-on-zero` under a `timeout`.
- Lesson: context matters. Using only the one function, or marking helpers `inline`, changed register allocation. Use the full TU.
- In flight when this was written: resolveReference, 30-min cap. Input is in `research/claude_tools/perm_rr_input/`, log goes to the session scratchpad. If it hits 0, re-apply the change in `src/sora/ut/ut_relocate.cpp`, promote with `MatchingFor("RSBE01_01")` plus `verified_objects.txt`, rebuild, and confirm 127/127.

## Acceptance rule for any new result
Compile the full TU through ninja, check code, data and relocations, and get 127/127. Only then list it in `verified_objects.txt`. An isolated function match is intermediate only.

## Lessons for new splits
- After adding a split, rename that module's dtk `fn_`/`lbl_` symbols to the source's mangled names (`research/claude_tools/rename_syms.py`). Otherwise the generated FORCEACTIVE strips the source objects and the REL shrinks.
- Add `create__<stage>Fv` to the module's `force_active` (as `st_final` does).
- For a class constructor with a string literal, define the ctor out of line in the .cpp. An inline ctor pools its strings separately.
- Declaration order of locals drives MW register allocation (declared first → higher nonvolatile register).
- Helper scripts are in `research/claude_tools/`: `odiff.py` diffs functions by position plus section bytes, `fdiff.py` diffs by name, and `vtry.py` loops over source variants.

## Exact next step
1. Check the resolveReference permuter result. Accept it only through the full-TU and 127/127 gate.
2. Continue new TUs, using stage modules whose callees are all named (use `claude_tools/rank_mods.py`). `st_battle.rel` (Battlefield) and `st_heal.rel` share the `st_final`/`st_battles` template, but their createObj/update are larger and st_heal calls one unnamed DOL function (`fn_803F8ACC`).

## Update 23:45 UTC (usage limit reached)
- resolveReference permuter run 1 was stopped after about 21k iterations with no improvement. The randomizer asserts on `for (s32 i = 0; …)` declarations (DeclList in a for-init), so most passes failed. Run 2 uses `s32 i;` hoisted and a 30-min cap. Its output goes to the session scratchpad and is not verified. Inputs and the run-1 log are in `evidence/nonmatching/permuter_resolveReference/`. If run 2 reports `output-*`, apply it to the full TU and check 127/127 before accepting it.
- The next TU was in progress: `st_battle.rel` (Battlefield, `stBattleField`/`grBattleField`). Findings so far:
  - `fn_801622C4` is `nw4r::math::SinFIdx(f32)`: table lookup plus a sign flip, as declared in `nw4r/math/math_triangular.h`. Rename it in `config/RSBE01_01/symbols.txt` to `SinFIdx__Q24nw4r4mathFf`.
  - `update` (fn_43_688) reads a float from `g_gfSceneRoot->0x54` (vfunc 0x20) and clamps `frame/6000` to [0,1]. It calls `SinIdx(F32ToU16(32768*t))` and discards the result. It then sets `[this->0x98]+0x18 = 40`, `+0x1c = 240 - 120*t`, `+0x20 = 0`, and `this->0xe8 = 1`. When outside [0,6000] it sets 90/0/0 instead.
  - fn_43_7D0 overrides `getFighterStartPos` using the Vec3f tables at 0x1d8 (5), 0x214 (4) and 0x244 (2).
  - The 0xD4 ctor at fn_43_A4 is not inlined.
  - Other unnamed callees to identify: fn_8018F340, fn_8018F394, fn_80190A3C, fn_80191314.
- resolveReference permuter run 2 finished: it hit the 30-min cap (exit 124) at about 24.8k iterations. The best score was 1105 vs a base of 1190, with no zero, so no match. The best output is saved in `evidence/nonmatching/permuter_resolveReference/output-1105-1`; it is unverified and was not applied. Next idea: a longer run, or permuting `getPublicAddress`'s inline shape, since the remaining diff sits inside that inlined helper.

## Update 2026-10-01 (Claude, Battlefield)
- Battlefield (`st_battle.rel`) is split into `st_battle.cpp`, `gr_battle_ground.cpp` and `gr_battle.cpp` (commit 1dfef79 and later). It is not promoted yet.
- Already matching: all data, rodata, bss and ctors, and every function except three. Remaining: `stBattleField::update` and `grBattleField::update` differ only in FP register assignment inside the fsel clamp (plus one GPR in gr), and `getFighterStartPos` has one extra trailing `blr` after its tail call. Control-flow rewrites so far either keep the extra `blr` or reorder the blocks.
- `gr_battle_ground.cpp` is a layout reconstruction, not recovered source. The original carries Ground's inline virtuals and Ground's RTTI as if from a stripped Ground-derived class.
- Header correction: `include/gm/gm_global_mode_melee.h` makes `m_gameMode` a `u8 : 6` bitfield. All source objects were rebuilt cleanly with it and still pass 127/127.
- Permuter input generator for `stBattleField::update`: `claude_tools/mk_perm_stb_update.py`. It uses the whole-TU context and the extracted original object as target, so the score floor includes the `getFighterStartPos` blr.
- `stBattleField::update` permuter run hit its 30-min cap (about 20.2k iterations). The best score was 355 vs a base of 520 (the floor includes the unrelated `getFighterStartPos` blr), not a match. The best output only duplicates the yaw assignment, so it was not applied. Inputs, log and best output are in `evidence/nonmatching/permuter_stBattleField_update/`.

## Update 2026-10-01 (Claude, target break)
- New source-linked TU: `mo_stage/st_tbreak/gr_tbreak.cpp` (grTargetBreak, module 89), brawl commit abde2dc, 127/127 verified.
- onDamage needed `soDamage* __restrict` plus a single `Vec2f` copy of soDamage +0x8C/+0x90 (documented in docs/RSBE01_01.md).
- Header override `include/gr/gr_madein.h` names HitPointInfo fields (`m_lastHitPos`, `m_lastHit30` as Vec2f); layout unchanged.
- Next: candidate queue #3 `st_dxcorneria` ground tail.
- Corneria (#3) handed to Codex 2026-10-01. Claude did not start it; brawl tree is clean on rsbe01_01-support at abde2dc.
- Checklist that worked for gr_oldin/gr_tbreak (apply to gr_dxcorneria):
  1. Add a split in config/RSBE01_01/rels/st_dxcorneria/splits.txt for the ground tail's .text plus its .rodata/.data/vtable ranges; add Object(NonMatching, ...) in configure.py.
  2. Rename every dtk symbol the TU defines to its mangled name in symbols.txt (functions, __vt__, RTTI). FORCEACTIVE is built from these names; dtk names make the REL shrink.
  3. Weak inlines/RTTI that the TU emits (Ground/grGimmick/grYakumono inlines, __RTTI__6Ground, __RTTI__6gfTask, etc.) must also be renamed where they live in the still-extracted stage region, or the REL size changes (+text/+data).
  4. If grMadein::startup is involved, sora_melee already uses the LayerType signature.
  5. Shadowing headers go in brawl/include/; after adding one, delete build/RSBE01_01/src before rebuilding.
  6. Promote only after every function, data and relocation matches: MatchingFor("RSBE01_01") + verified_objects.txt, then rm build/RSBE01_01/ok and rebuild to see "OK: 127/127 binaries verified". Document in docs/RSBE01_01.md.

## Update 2026-10-01 (Codex, resumed)
- Corneria #3 completed in dbed709; all 21 functions/data/relocations source-linked; normal and independent verification 127/127.
- Corrected stale pickup notes and documentation; candidates #1-#3 are done.
- Next implementation: candidate #4 st_newpork ground tail. Do not duplicate work; read HANDOFF_LOG.md for live state.
- Maintain a shared handoff log at every milestone, before context/usage exhaustion and before ending a session. Record commit/dirty paths, precise verification scope, private evidence locations, commands, failed attempts and exact next steps. No near-miss is promoted by a log entry.

## Update 2026-10-01 (Codex, New Pork complete)
- HEAD b284006, clean rsbe01_01-support. Nothing pushed/uploaded. Docs-only repair: 11d214f.
- New source-linked TU gr_newpork.cpp: all 29 functions, 8 rodata bytes and 1968 data bytes, including four sound-event banks/vtable/RTTI. Stage body remains extracted.
- All 127 binaries pass both normal promoted build and independent original-byte comparison; 10 verifier tests pass. Unique source TUs: 185.
- Matching constructs: default Vec2f argument gives the target stack slots; separate event arrays give the correct common data anchor; individual sound member writes preserve pointer reloads. Ordinary C++ lifetimes, no alias pun/UB/permuter/flag sweeps.
- Shadow so_collision_attack_part.h changes m_isShieldable to unsigned 1-bit storage to reproduce word accesses, with unchanged layout. All existing source objects recompiled and verified. Submodule unchanged.
- Private probe/diff logs: evidence/nonmatching/newpork/. Repro tool: claude_tools/probe_source_rel.py.
- Next #5 st_dxyorster stage body. No active build/permuter or dirty code. Read HANDOFF_LOG.md before starting.

## Update 2026-10-01 (Codex, dxyorster stage body)
- Local commit 5d2d07c, tree clean; candidate #5 accepted as a whole source-linked TU. 54 functions including four registration methods, 2704 text bytes, all owned data/RTTI/vtables/bss/ctors and relocations.
- Full source REL: 62768 bytes, SHA-1 8cfb4ca5c1c7a0eb83237eb0edb893cbd3b83532. Promoted normal build and independent check OK 127/127; 10 verifier tests pass.
- Inline constructor receives its name from the factory to preserve the literal pool. Empty stage update must be out of line to preserve function order. Explicit switch default assignments and motion-loop switch recover branching. All reviewed/documented; no UB trick/permuter/flag sweep.
- Four ground factories remain extern C/extracted; ground interfaces use RTTI class names and address-based member identifiers.
- Private evidence: evidence/nonmatching/dxyorster. probe_source_rel.py now checks source compilation before linking and supports already-promoted inputs; an earlier stale-object probe after a failed compile was invalid and never used for acceptance.
- 186 unique source-linked TUs; 518/4411 instances (65/1722 DOL, 453/2689 REL). Registration unit merge explains denominator change.
- Adopted agent-handoff skill: HANDOFF.md live board/lease plus existing unchanged-in-place append-only HANDOFF_LOG.md. Use handoff.py for claims/logs/releases. No active builds/permuter; next #6 st_dxgarden, no code started.

## Update 2026-10-01 (Codex, dxgarden stage body)
- Local commit eeca868, clean branch rsbe01_01-support, nothing pushed. Candidate #6 fully source-linked, 53 functions / 3488 text bytes including registration and complete owned sections.
- Normal stamp-removed promotion and independent manifest check OK 127/127. Isolated full REL source probe matches 56704 bytes, SHA-1 9a219966c8e0e2ffd7faaf9b15386349ca8f7070.
- Corrected B90 phantom function to local unreachable epilogue label inside B08. Source rodata ends at 0x24; linker adds 4-byte alignment padding before next ground at0x28. Full REL identity covers it.
- Scalar inline camera helper avoids Vec3f temporaries; water initializer keeps target pointer-load groups; switches keep target branching. Native SDK Color helper and uninitialized state byte reviewed/documented. Do not add speculative initialization to matching build; investigate external allocator/init contract for a portable build.
- No near-misses/function-only acceptance, no permuter or compiler flags sweep. Evidence private under evidence/nonmatching/dxgarden.
- 187 unique source TUs, 519/4410 linked instances (65/1722 DOL, 454/2688 REL). Registration merge explains object denominator decrease.
- Next #7 st_heal, provisional 37 functions /3508 bytes. No code started. Read HANDOFF.md, claim lease and run receiver/ranking before starting.

## Update 2026-10-01 (Claude, rest area st_heal)
- Local commit 6cb6eb8 on rsbe01_01-support, clean, nothing pushed. Candidate #7 fully source-linked: stHeal (0x2B4), 41 functions, all of st_heal.rel except lifecycle code and the home-button icon.
- Isolated full-REL probe byte match 14,312 bytes (SHA-1 c5e0b6cf84f676e01b240c59d4b6f31e14cc16eb); promoted normal build and independent --orig --dtk check 127/127; verifier tests pass. Source cache was cleared and all linked sources recompiled against the two new override headers (gm_global_corps.h, cm_controller_ai.h).
- Techniques (all in docs/RSBE01_01.md with UB review): explicit_zero_data for the zero sequence word; file-scope seq statics placed before update; goto labels for blocks that precede their tests; z,y,x float locals; GXColor b,g,r,a; OR result written into the zone-flag local. No permuter, no flag sweep.
- Shared {0xFF,0}/{0xFF,1} static pair in every grMadein stage body is modelled as stMadeinStaticPair in include/st_heal/st_heal.h; reuse it (move to a common header) for tbreak/madein/homerun/ice/norfair stage bodies.
- 188 unique source TUs, 520/4405 instances (65/1722 DOL, 455/2683 REL). Evidence: evidence/nonmatching/heal/.
- Codex is doing #8 st_greenhill in parallel (worktree ../brawl-greenhill, branch codex/st_greenhill). Main-line next: #9 st_kart.

## Update 2026-10-01 (Claude, Green Hill integration)
- Cherry-picked Codex 3fc4040 (codex/st_greenhill) onto rsbe01_01-support as f60af98. Conflicts only in verified_objects.txt and docs; both sides kept; Green Hill table row and integration note added.
- Integrated tree: stamp-removed normal build and independent --orig --dtk 127/127; verifier tests OK; full-REL probes byte-identical for st_greenhill and st_heal.
- 189 unique source TUs, 521/4404 instances (65/1722 DOL, 456/2682 REL). Next: #9 st_kart.

## Update 2026-10-01 (Claude, st_kart WIP)
- Commit c472821: st_kart stage TU split and source-built but NonMatching (normal build 127/127 links extracted object). 61/63 functions, all data/vtable/RTTI/setters/header inlines match; probe differs in 72 bytes only (updateRanks, getZoneLightSetIndex, 55/1.0 rodata order + their relocs).
- Shared changes (rebuilt all sources, 127/127): include/st/stage.h getZoneLightSetIndex(Vec3f*); sora_melee symbol renamed in RSBE01_01+02; DOL CosFIdx named.
- Stopped per bounded-effort rule. Next: capped permuter on the two functions, or move to #10. Details: evidence/nonmatching/kart/NOTES.md.

## Update 2026-10-01 (Claude, Tengan integration)
- Cherry-picked Codex 7f3d18c -> b4ae09f (shared static pair header) and 2e72a19 -> 0ee87a1 (grTengan base TU) onto c472821; docs conflict kept both; docs progress commit 88d8d3f.
- Clean source rebuild: normal + independent --orig --dtk 127/127, verifier tests OK; probes byte-identical for st_tengan, st_heal, st_greenhill. 190 TUs, 522/4406 instances.

## Update 2026-10-01 (Claude, Tengan Bg/Ashiba integration + housekeeping)
- Cherry-picked codex/tengan2 45388f8 -> a29d1b2 (Bg), eb439b1 -> 625b4c8 (Ashiba), 6351813 -> 6bf569c (Floor, NonMatching), no conflicts; docs commit fb2ad57.
- Clean source rebuild: normal + independent 127/127, verifier tests OK; probes byte-identical for st_tengan, st_heal, st_greenhill. 192 TUs, 524/4407.
- With user approval, removed integrated worktrees ../brawl-greenhill and ../brawl-codex2 (git worktree remove --force; checked clean, no junctions, orig copies real; main originals unchanged, main.dol SHA-1 2a78a0b3...). Branches kept. ../brawl-codex3 (codex/tengan2) is now integrated too.
