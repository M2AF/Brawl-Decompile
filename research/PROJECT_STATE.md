# PROJECT_STATE — read this first (updated 2026-10-02)

Single pickup document for a fresh Claude or Codex session. Details live in the docs indexed at the bottom.

Latest checkpoint: main `rsbe01_01-support` is clean at **9f4d31e**. At the user's explicit request, Codex integrated Pit SpecialLwHold (`055115f` -> `9f4d31e`) after Claude ran out of credits. Clean-source rebuild and independent built/original manifest checks both pass **127/127**; verifier tests **10/10**; full Pit source REL byte-identical. No pushes or original-file changes. See the live `HANDOFF.md` and newest journal entry before doing any work; the older inventory below is historical. Meta Knight special_s_end remains NonMatching and is the queued next task, followed by its final status units. Isolated `brawl-codex7` is retained at055115f; its changes are already integrated.

## Goal
1. **Now:** a verified matching rebuild of the user's Super Smash Bros. Brawl **USA rev 1 (RSBE01_01)**, decompiling small translation units (TUs) one at a time on top of the upstream doldecomp/brawl project.
2. **Later (roadmap only, see `research/FUTURE_PORT_ROADMAP.md`, `research/codex_parallel/FIGHTER_LIMITS.md`):** desktop/browser ports, bigger online lobbies, more fighters and character packages. The matching Wii build stays the byte-exact reference; any port cleanup gets its own behavioural verification.

Never call fallback-object rebuilds a "completed decompilation". Originals stay private and unchanged; nothing is uploaded or pushed.

## Repo, branch, build
- Repo: `C:\Users\balla\Documents\Brawl Decompile\brawl` (fork of doldecomp/brawl, dtk-template).
- Branch: `rsbe01_01-support`, HEAD `9f4d31e`, clean. **Local commits only, never push.**
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
- Tree is clean at `fe9e4d6` (codex/stages tbreak+oldin NonMatching integrated), 127/127 verified (normal + independent, clean source rebuild); probes byte-identical for st_tengan, st_heal, st_greenhill. st_kart and gr_tengan_floor are NonMatching WIP. st_heal and st_greenhill full-REL probes byte-identical at f60af98.
- Candidates #1 oldin, #2 tbreak, #3 dxcorneria, #4 newpork, #5 dxyorster, #6 dxgarden, #7 st_heal and #8 st_greenhill are complete.
- #8 was done by Codex in worktree `../brawl-greenhill` (branch `codex/st_greenhill`, 3fc4040) and integrated by cherry-pick as f60af98. The worktree/branch are now redundant; remove only with the user's OK.
- `stMadeinStaticPair` now lives in `include/st/st_madein_static_pair.h` (Codex b4ae09f); reuse it for grMadein-style stage bodies.
- #10 tengan: base, Bg and Ashiba source-linked; Floor is a NonMatching draft (6bf569c, 5/7 functions) (Codex notes: codex_parallel/TENGAN_STATUS.md, evidence/nonmatching/tengan/).
- Candidate #9 `st_kart` is split and committed as NonMatching (c472821): 61/63 functions + all data match; near-misses `updateRanks` (one scheduling reorder around __alloca) and `getZoneLightSetIndex` (fsel clamp registers + 1.0/55 constant order). Notes: `evidence/nonmatching/kart/NOTES.md`. Options: capped permuter on those two functions, or move on to #10.
- Shared changes in c472821: `include/st/stage.h` override (getZoneLightSetIndex(Vec3f*)), sora_melee symbol renamed in RSBE01_01+02, DOL `CosFIdx` named. Any parallel branch based on f60af98 must be rebuilt after cherry-pick (vtables now reference getZoneLightSetIndex__5StageFP5Vec3f). Shared madein static pair is modelled as `stMadeinStaticPair` in `include/st_heal/st_heal.h`; move it to a common header when a second stage body needs it.
- Read `HANDOFF.md` first for ownership/live state, then the last entry in `HANDOFF_LOG.md` for current checkpoints, dirty files, commands and exact next action. The log is append-only: write after promotions, before long runs, at session end and immediately on low credits/handoff; never edit old entries. Keep this state document synchronized.
- Optional: finish Battlefield's three near-misses; when promoting it, consider the Codex callee names in `codex_parallel/CALLEE_NAMING.md` (apply only names a TU needs, after checking evidence, and re-verify 127/127).

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

Current linked totals: 192 unique TUs; 524/4,407 instances (DOL 65/1,722; RELs 459/2,685). Stage registration merges reduce total units; corrected dxgarden epilogue reduces analysis function count by one.

Dxyorster and dxgarden are fully source-linked, not function-only wins. Dxyorster ctor literal pool and dxgarden camera/water/SDK Color constructs documented in brawl/docs/RSBE01_01.md. Dxyorster has no near-misses; dxgarden preserves the target uninitialized state-byte behaviour (external initialization contract unresolved).
