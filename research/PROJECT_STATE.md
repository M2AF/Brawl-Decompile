# PROJECT_STATE — read this first (updated 2026-10-03)

Single pickup document for a fresh Claude or Codex session. Details live in the docs indexed at the bottom.

Latest checkpoint: main `rsbe01_01-support` is clean at **e7def40**. User authorized Codex takeover/local integration while Claude is out of credits. Link's eight worktree commits are integrated: **five source-linked TUs** (SpecialRSlash, Wait, SpecialBoomerang, SpecialBomb, combined Final/FinalDash/FinalCombo), and SpecialRSlashEnd parked NonMatching4/5. Clean-source main build127/127, independent verifier/tests/original comparison PASS; all five accepted whole-REL substitutions and Rest Area regression PASS. **583/4403 object instances source-linked** (DOL67/1722, REL516/2681). Link generator's overlapping finals were manually grouped under one initializer; both revisions have matching split/symbol scaffolding, but only rev1 source linkage is asserted. Previous fighters2 and MK work is already integrated; MK FinalHitWait remains parked11/12. No pushes/original edits. Retained clean worktree brawl-codex10/codex-link at4f193b8 is fully integrated; do not replay its commits. Exact commit map, evidence and pickup: codex_parallel/LINK_STATUS.md. BrawlTool missing-function score/exact source-byte restoration fix committed locally in the separate root workbench at709766f,41 tests PASS. Always read live HANDOFF before taking a lease.

## Goal
1. **Now:** a verified matching rebuild of the user's Super Smash Bros. Brawl **USA rev 1 (RSBE01_01)**, decompiling small translation units (TUs) one at a time on top of the upstream doldecomp/brawl project.
2. **Later (roadmap only, see `research/FUTURE_PORT_ROADMAP.md`, `research/codex_parallel/FIGHTER_LIMITS.md`):** desktop/browser ports, bigger online lobbies, more fighters and character packages. The matching Wii build stays the byte-exact reference; any port cleanup gets its own behavioural verification.

Never call fallback-object rebuilds a "completed decompilation". Originals stay private and unchanged; nothing is uploaded or pushed.

## Repo, branch, build
- Repo: `C:\Users\balla\Documents\Brawl Decompile\brawl` (fork of doldecomp/brawl, dtk-template).
- Branch: `rsbe01_01-support`, HEAD `e7def40`, clean. **Local commits only, never push.**
- `research/` is NOT in the repo (private notes, tools, evidence; contains target asm).
- Originals: `brawl/orig/RSBE01_01` (git-ignored). Frozen hashes: `config/RSBE01_01/binary-manifest.json`, `build.sha1`.
- Build and verify (Windows; ninja is in the venv):
  ```
  cd brawl
  ..\.venv\Scripts\activate
  python configure.py --version RSBE01_01      # must pass --version; default is RSBE01_02 and fails
  ninja                                         # default target runs tools/verify_manifest.py
  ```
  Must print `OK: 127/127 binaries verified` (main.dol + 126 RELs). To force a re-check: delete `build/RSBE01_01/ok` and run `ninja` again. Verifier tests: `python tools/test_verify_manifest.py`.
- Gate: rev1 links an object from source only if it is `MatchingFor("RSBE01_01")` in `configure.py` AND listed in `config/RSBE01_01/verified_objects.txt`.
- Toolchain: dtk v1.7.5, CodeWarrior GC/3.0a5.2 (mwcceppc/mwldeppc), objdiff.

## The user's working rules
- One TU at a time, including its data (.rodata/.data/vtables/RTTI), not just code.
- Pick small TUs with clear boundaries, few dependencies, simple control flow. Skip functions already matching upstream.
- Promote a TU only after every function, data byte and relocation matches and the full build shows 127/127.
- Permuter is a bounded finishing tool for understood near-misses: one at a time, time budget and stopping condition recorded, full repro saved (tool commit, local patch, compiler command, inputs, target, winning output). Its output is accepted only via the full-TU + 127/127 gate.
- No broad compiler-flag sweeps or repeated speculative rewrites.
- Document unusual matching tricks in `docs/RSBE01_01.md` and review them for UB, lifetime and aliasing. Byte identity does not prove the original spelling.
- Preserve best attempts, compile commands and diffs for difficult functions in `research/evidence/nonmatching/`.
- Report source-linked TUs separately from function-only matches.

## Source-linked TUs on rev1 (historical inventory at 9ec5405)
193 source-linked TUs: 175 upstream `Matching` plus 18 rev1 additions:

| TU | Commit | Notes |
|---|---|---|
| `sora/cm/cm_controller_menu_fixed.cpp` | bc88679 | |
| `mo_menu/sora_menu_sel_char_access/sel_char_access.cpp` | 8498a12 | new split |
| `mo_stage/st_battles/st_battles.cpp`, `gr_battles.cpp` | 57c0839 | all of st_battles.rel from source |
| `sora/gf/gf_slow_manager.cpp` | b7c3a53 | permuter-found `u8& result = res;` alias in requestSlow (matching technique) |
| `mo_adv_menu/sora_adv_menu_telop/mu_adv_telop_task.cpp` (Codex) | 0075b7d | see `research/evidence/nonmatching/telop_NOTES.md` |
| `mo_stage/st_oldin/gr_oldin.cpp` | 0db5452 | new split, module 53 |
| `mo_stage/st_tbreak/gr_tbreak.cpp` | abde2dc | new split, module 89; `__restrict` + Vec2f pun in onDamage |
| `mo_stage/st_dxcorneria/gr_dxcorneria.cpp` | dbed709 | candidate #3 complete; all 21 functions and data/relocations match |
| `mo_stage/st_newpork/gr_newpork.cpp` | b284006 | candidate #4 complete; 29 functions and all owned data/relocations match |
| `mo_stage/st_dxyorster/st_dxyorster.cpp` | 5d2d07c | stage body plus registration, 54 functions/all data/relocations |
| `mo_stage/st_dxgarden/st_dxgarden.cpp` | eeca868 | 53 functions plus registration/data/relocations; epilogue boundary corrected |
| `mo_stage/st_heal/st_heal.cpp` (Claude) | 6cb6eb8 | candidate #7; whole module text/data from source, 41 functions; techniques in docs (explicit_zero_data, goto layout labels, OR accumulator) |
| `mo_stage/st_greenhill/st_greenhill.cpp` (Codex, parallel worktree) | f60af98 | candidate #8; 57 functions plus registration/data; cherry-picked from codex/st_greenhill 3fc4040 and re-verified on main |
| `mo_stage/st_tengan/gr_tengan.cpp` (Codex, parallel worktree) | 0ee87a1 | grTengan base ground only (21 functions, .text 0x6348..0x65BC, .data 0x838..0xAB8); Bg/Floor/Ashiba stay extracted; cherry-picked from codex/next 2e72a19 |
| `mo_stage/st_tengan/gr_tengan_floor.cpp` (Codex) | 9ec5405~1 | Tengan Floor; cherry-picked from codex/finish 90d4a16 |
| `mo_stage/st_tengan/gr_tengan_bg.cpp`, `gr_tengan_ashiba.cpp` (Codex) | a29d1b2, 625b4c8 | Tengan Bg and Ashiba grounds; cherry-picked from codex/tengan2 |

Other commits: f513af3 (rev1 support + strict verifier), 36ec973 (Codex: Battlefield sine symbol).

## Function-only matches and near-misses (not promoted)
- **`st_dxgreens.cpp`** (Claude, 76d7147): 65/69 functions + all data; initBlocks/settleBlocks/spawnBlock/updateCollision register-allocation only (evidence/nonmatching/dxgreens/).
- **`st_tbreak.cpp`** (Codex, a3c9ef6 -> main): 56/58 functions; createObj/update differ; REL 23816 vs 23744 (codex_parallel/STAGES_STATUS.md, evidence/nonmatching/tbreak/).
- **`st_oldin.cpp`** (Codex, 91b5438 -> main): 41/53 functions; data layout uncertain; REL 34160 vs 32744 (evidence/nonmatching/oldin/).
- **`st_kart.cpp`** (c472821): 61/63 functions match; `updateRanks` and `getZoneLightSetIndex` near-miss (see evidence/nonmatching/kart/NOTES.md).
- **Battlefield `st_battle.rel`** (commits 1dfef79, 399ab84): split into `st_battle.cpp`, `gr_battle_ground.cpp`, `gr_battle.cpp`. All data and every function match except three:
  - `stBattleField::update` and `grBattleField::update`: FP register assignment inside the fsel clamp (gr also one GPR for the display-list pointer).
  - `getFighterStartPos`: one extra trailing `blr` after the tail call.
  - `gr_battle_ground.cpp` is a **layout reconstruction**, not recovered source (holds Ground inline virtuals + Ground RTTI).
  - Permuter: best 355 vs base 520, no match (`evidence/nonmatching/permuter_stBattleField_update/`).
- **`cm_controller_menu_pad.cpp`**: ctor/storeDefault/init match; `update()` differs in int→float conversion stack slots.
- **Parked, register allocation only:** `ut_relocate` resolveReference (permuter best 1105/1190), `mt_trig` mtSinCosf, `mt_vector_old` vlRotateFix, `gf_task_scheduler`.

## Hard-won lessons (new splits)
- Rename every dtk `fn_`/`lbl_` symbol the TU defines to its mangled name in the module's `symbols.txt`. FORCEACTIVE is built from these names; otherwise the source objects get stripped and the REL shrinks.
- Weak inlines/RTTI the TU emits must also be renamed where they live in the still-extracted region (e.g. `setStageData__6GroundFPv`, `__RTTI__6gfTask`, `__RTTI__6Ground`), or the REL grows.
- Add `create__<stage>Fv` to the module's `force_active` in `config.yml` for stage modules.
- Override headers go in `brawl/include/` (they shadow BrawlHeaders). After adding one, delete `build/RSBE01_01/src` and rebuild (depfiles miss new files).
- MWCC codegen: local declaration order drives register allocation; inline ctors pool strings separately (define out of line); arguments evaluate right-to-left (affects literal pool order); `x - 0.0f` with a literal bound folds (use an inline with parameters); `u8` bitfield vs enum bitfield changes lbz/lwz; `__restrict` lets loads move above stores.
- Verify diffs fully: a truncated output and a silent compile failure each once looked like a false "match".

## Tooling
- **BrawlTool** (`research/BrawlTool.bat` window, `research/brawltool-cli.bat` CLI; docs `research/brawltool/README.md`): build/verify, independent check, status page, rank, split, m2c draft, diff, probe, promote (all gates + rollback), integrate (Codex branches), cleanup (worktrees). Prefer it over ad-hoc commands.
- Status page: `research/status/brawl_status.html` (self-contained, logo embedded). Refresh after any build: from brawl/, `python ../research/claude_tools/mk_status_page.py` (reads build/RSBE01_01/report.json, verified_objects.txt, this file's near-miss list, git log).
- Diff helpers: `research/claude_tools/` (`fdiff.py` by name, `odiff.py` by position + section bytes, `vtry.py` source variants, `rename_syms.py`, `rank_mods.py`, `mk_compile.py`, permuter input builders `mk_perm_*.py`).
- decomp-permuter: `Brawl Decompile/decomp-permuter` @ `059609d4` with a local `src/preprocess.py` pass-through patch (this PC has **no C preprocessor `cpp`**); patch saved in `evidence/nonmatching/permuter_requestSlow/permuter-local.patch`. Venv needs `toml`. objdump path must have no spaces (copy it to a space-free dir). Wrap the whole preprocessed TU in `PERM_IGNORE`, C stand-ins in `PERM_PRETEND`, `#define fn Class::fn`, target = extracted original `.o`. The randomizer crashes on `for (int i = 0; ...)` declarations (hoist them). It does not print a seed on success.
- Evidence: `research/evidence/nonmatching/` (per-unit diffs, permuter records).

## Current state and next step
- Current main e7def40 clean; Link task accepted/parked and integrated as above. Lease released after final checkpoint; confirm live HANDOFF before resuming.
- Five Link TUs source-linked; SlashEnd remains NonMatching4/5 (multiply operand order) after18 bounded variants. No permuter/flag sweeps. MK FinalHitWait optional entry-load near-miss remains parked.
- No background build/permuter remains. Do not replay integrated worktree commits. Read codex_parallel/LINK_STATUS.md for exact main/worktree commit map and private evidence paths.
- Next handed-over fallback candidates were Fox/Wolf, whose reflector vtables need manually reviewed splits; no Fox/Wolf code was started in this task. Check live claims before choosing another fighter.
- Shared search-data header retains Ike names and adds MWCC-specific unsigned bitfield union views; new catch/capture headers are partial virtual interfaces. All affected linked source objects rebuilt cleanly and retain127/127. Full layout/UB review in docs/RSBE01_01.md.
- BrawlTool variants now reject a missing -f name rather than reporting0 differences, and restore exact original source bytes including CRLF. Tests41/41 and live missing/known-function smoke checks PASS.
- stMadeinStaticPair lives in include/st/st_madein_static_pair.h; reuse it. Stage::getZoneLightSetIndex takes Vec3f*. Earlier state inventories below/above are explicitly historical; use live config for candidate ranking.
- HANDOFF_LOG.md is append-only via agent-handoff; keep PROJECT_STATE and per-task status synchronized.

## Document index
- `research/HANDOFF_LOG.md`: **read its last entry right after this file.** Shared Claude ⇄ Codex append-only log. Add an entry after each TU, before long runs, at session end, and when credits run low.
- `research/IMPLEMENTATION_SPEC.md`: gates and acceptance spec.
- `research/CLAUDE_HANDOFF.md`: original task queue and authorizations.
- `research/BINARY_CATALOG.md`: all 127 binaries.
- `research/CLAUDE_STATUS.md`: detailed chronological Claude log.
- `research/HANDOFF_LOG.md`: shared append-only progress log; read the newest entry at the bottom.
- `research/CODEX_RESUME.md`: Codex's own pickup notes.
- `research/FUTURE_PORT_ROADMAP.md`: ports and lobbies roadmap.
- `research/codex_parallel/`: `CANDIDATE_QUEUE.md` (ranked next TUs), `CALLEE_NAMING.md` + `proposed_symbols.patch` + `callee_inventory.csv` (symbol proposals), `FIGHTER_LIMITS.md`.
- `brawl/docs/RSBE01_01.md`: provenance and evidence table for every rev1 TU, including the matching techniques used.

Historical linked totals (older checkpoint): 192 unique TUs; 524/4,407 instances (DOL 65/1,722; RELs 459/2,685). Stage registration merges reduce total units; corrected dxgarden epilogue reduces analysis function count by one.

Dxyorster and dxgarden are fully source-linked, not function-only wins. Dxyorster ctor literal pool and dxgarden camera/water/SDK Color constructs documented in brawl/docs/RSBE01_01.md. Dxyorster has no near-misses; dxgarden preserves the target uninitialized state-byte behaviour (external initialization contract unresolved).
