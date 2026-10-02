# Brawl Decompilation Speedup Plan

Research plan for increasing the rate of **verified, source-linked translation units** in the Super Smash Bros. Brawl USA revision 1 (`RSBE01_01`) matching decompilation.

The goal is not just faster builds or higher fuzzy-match percentages. Success means recovering more source while preserving the current evidence standard: a source TU must own its code and data, compile with the correct Brawl toolchain, reproduce its full REL, and pass the fresh 127/127 build and independent checks.

## Implementation Update (2026-10-02)

The separate BrawlTool track is authorized while Claude owns the main fighter-source lease. The shared `brawl` checkout has active, uncommitted fighter edits; this tooling pass did not modify or build it.

- `status-splits` imports the canonical `research/claude_tools/mk_status_splits.py` helper and structures its output for BrawlTool. `--write-copy` writes only a new, gitignored review copy outside the Brawl checkout. **4 parser tests** cover the generic two-class case and Mario, Luigi, and Marth address fixtures; **3 additional tests** cover copy safety, operation wiring, and CLI forwarding.
- `rename-status` maps the legacy status arguments and preflights both revision symbol files before writing either. It preserves each file's CRLF/LF style and passes full mangled names unchanged. **5 focused tests** cover newline preservation, missing-symbol atomicity, mangled-name passthrough, dual-config updates, and CLI forwarding.
- `probe` now detects missing source-linked object files in the module link rule and directs the user to run a build; it never builds automatically. **2 focused tests** cover missing dependencies and excluding the candidate that the probe compiles itself.
- `build`, `diff`, `probe`, `promote`, `variants`, and `errors` record wall time/status to ignored `research/brawltool/metrics/timings.csv`; `brawltool metrics` summarizes samples. **4 focused tests** cover recording outcomes, aggregation, command output, and CLI dispatch.
- **Validation:** all 28 `brawltool.test_worktree` tests pass; Python compilation and diagnostics pass. No Ninja, configure, probe, promotion, or command writing to shared `brawl/build` or `brawl/config` was run. The existing local timing CSV is observational data, not a controlled throughput baseline.

### Follow-up (2026-10-02)

- Removed BrawlTool's duplicate status boundary parser; the command imports Claude's canonical helper, including its padding, last-unit, alignment, and ownership rules. **3 address regressions** assert Mario `special_lw_shoot` ends at `0x7828`, Luigi `special_s_wall` ends at `0x6580` (not `0x6ED8`), and Marth `special_hi` / `special_lw` are `0x5584-0x5600` / `0x5600-0x5678`.
- Added `apply-status-splits <module> --prefix ftX`. Its transform inserts blocks before `mo_fighter/mo_fighter.cpp:` in both revision split files, adds `Object(NonMatching, ...)` entries and switches that module to `cflags_fighter`. It preflights all files and refuses duplicate units before writing. **5 temp-copy tests** cover successful dual-revision insertion, fighter flags, duplicates in the second revision or configure, path selection, and CLI forwarding.
- **Follow-up validation:** all 36 offline tests pass; compileall, Python diagnostics, `git diff --check`, and local artifact-ignore checks pass. No build, configure, probe, promotion, or write under shared `brawl/build` or `brawl/config` was run. The Brawl checkout had active Luigi source edits at final inspection; this work did not modify them.

## Findings

### What Melee offers

The completed [Melee decompilation](https://github.com/doldecomp/melee) demonstrates useful process patterns:

- [Getting Started](https://github.com/doldecomp/melee/blob/master/docs/getting_started.md) gives contributors a clear way to find unclaimed, reasonably sized functions and explains matching as a compile-and-compare task.
- [`tools/decomp.py`](https://github.com/doldecomp/melee/blob/master/tools/decomp.py) maps an object/function to generated assembly, prepares context, invokes m2c, and presents the result for a quick start.
- [CI](https://github.com/doldecomp/melee/blob/master/.github/workflows/build.yml) runs multiple build modes and checks for fully matched units that have not yet been linked from source.
- Its contribution guidance makes evidence and code quality explicit, while the project itself has benefited from a large contributor community. Tools alone do not explain its progress.

### What Brawl already has

The Brawl workbench already includes many of the matching safeguards that should not be rebuilt or weakened:

- BrawlTool handles build/verify, candidate ranking, TU creation, m2c drafts, diffs, compile diagnostics, full-REL probes, promotion gates, isolated-worktree review, integration, and progress reporting. See [BrawlTool documentation](research/brawltool/README.md).
- The Brawl source checkout has `tools/decompctx.py` for generated context, `tools/split_gaps.py` for unclaimed ranges, versioned reports, a strict binary manifest verifier, and `config/RSBE01_01/verified_objects.txt` for source-linked objects.
- Promotion already requires a freshly compiled full-REL probe, a 127/127 build, an independent manifest check, and a post-promotion probe. Keep these gates.
- ObjDiff, Ninja, m2c, and a PowerPC decomp-permuter are already part of the local workflow. Do not add duplicate tools without measuring a concrete gap.

### Important differences

- A 127/127 build can use original-object fallbacks; it verifies the build, not the amount of decompilation. Report source-linked TUs separately from function-only matches and fallback-built binaries.
- Melee's compiler metadata, game layout, object mapping, symbols, and data ownership are not interchangeable with Brawl's. Melee uses a different recorded CodeWarrior compiler/linker setup from Brawl's `GC/3.0a5.2` configuration.
- Melee's public decomp.me workflow is not appropriate for Brawl target assembly under the current privacy rule. Keep original bytes, extracted target assembly, and private review evidence local.
- Public Brawl CI currently builds the upstream `RSBE01_02` version. The local `RSBE01_01` workflow needs the user's game inputs and must not publish or upload them to public CI.

## Implementation Phases

### Phase 0: Reconcile and measure

1. Before editing Brawl source or coordinating agents, run the agent-handoff status check and inspect live Git status/worktrees. The research snapshot on 2026-10-01 showed a live Claude lease while the board's `Now` section said the lease was free; it also showed an active, dirty Codex worktree. Recheck this state at execution time and do not interrupt active work.
2. Record a baseline over the next five completed TUs: candidate-to-source-link time, cold and warm build times, number and duration of full builds and probes, draft usefulness, integration time, and agent collisions.
3. Count only TUs that pass source-link gates as decompilation progress. Keep function-only wins and fallback builds as separate measures.

### Phase 1: Improve candidate selection and ownership

1. Generate a fresh `RSBE01_01` candidate inventory from the latest Brawl report, `tools/split_gaps.py --version RSBE01_01`, `verified_objects.txt`, and active worktree assignments.
2. Rank candidates using more than text size: include estimated code size, data/RTTI/vtable ownership, callers and imports, boundary confidence, dependencies, and effort. Keep the rank heuristic labeled as provisional until each boundary is checked.
3. Treat old candidate queues as dated snapshots. Keep a single current task/ownership source of truth, and make it easy to tell whether a TU is unclaimed, active, parked, function-only, or source-linked.

### Phase 2: Shorten the local matching loop

1. Pilot a Brawl-specific function-level m2c draft path inspired by Melee's helper. Resolve the selected function to its Brawl DOL/REL object and generated assembly; derive the right context from Brawl's generated configuration and `tools/decompctx.py`; pass the correct PowerPC/MWCC target.
2. Handle duplicate symbol names by module/object, preserve revision-specific flags and includes, and save generated drafts only in private local evidence. Never automatically treat m2c output as source or promote it.
3. Compare the helper with the current TU-level BrawlTool draft flow on a small set of representative functions. Keep it only if it measurably reduces time to a useful, compilable candidate.
4. For near-miss functions, use the existing `variants` command for a few evidence-based hypotheses. Reserve the permuter for understood register-allocation problems; cap each run and record its stop condition.
5. **Implemented (2026-10-01):** BrawlTool now rejects a nonzero m2c exit, reports the final diagnostics, and does not save a failed run as a draft. A focused regression test verifies the failure path.

### Phase 3: Remove measured workflow waste

1. Profile `autopilot`, `integrate`, and `promote` before changing them. Check how much time is spent in configure, clean builds, independent checks, REL probes, status generation, and bookkeeping.
2. If repeated full checks dominate, consider batching several branch integrations and then running one final clean build, independent check, required probes, and status refresh. Preserve standalone integration and promotion safety gates.
3. Remove a repeated probe only when inputs are unchanged and the same evidence is still checked after promotion. Add failure-path tests for conflicts, failed probes, rollback, and partial batches before using a batched path.
4. Do not rely on commit subjects or patch equivalence alone for historical branch integration: manually resolved conflicts can make an already-integrated change patch-different. Add source-commit provenance (such as `cherry-pick -x` or an explicit receipt) and ambiguity handling; test both same-subject commits and conflict-resolved integrations before changing this behavior.
5. Defer small parsing optimizations unless profiling shows they matter compared with compilation and linking.

### Phase 4: Use other games as evidence, not source donors

1. Build a short reference index for likely shared PPC EABI/runtime and Dolphin SDK routines found in Melee and Wii-oriented SDK headers.
2. For every candidate, verify the exact Brawl version, compiler/linker binaries and flags, ABI, data layout, section ownership, imports, relocations, and code/data bytes.
3. Prefer version-adjacent Wii references when available. Treat matching names and similar behavior as leads only; accept a Brawl implementation only through the Brawl full-TU/full-REL gates.

### Phase 5: Make progress repeatable for contributors

1. Write concise Brawl-specific contributor instructions for selecting an unclaimed TU, recording boundary/data ownership, preparing context, and submitting evidence.
2. Add ROM-independent CI for BrawlTool tests, Python checks, and documentation. Consider a source-completeness report that flags fully matched but still-unlinked objects without confusing fallback objects with source-linked code.
3. Do not add the local `RSBE01_01` original-image build to public CI unless a lawful private-input runner is established. Resolve the repository's license and provenance policy before inviting public code contributions.

## Priority and Success Criteria

Recommended order:

1. Reconcile the active lease and checkout state; capture the first baseline.
2. Create the current evidence-backed candidate and ownership queue.
3. Prototype and measure function-level m2c drafting.
4. Profile and safely remove repeated integration/autopilot work.
5. Try one time-boxed, function-scoped permuter experiment and add ROM-independent contributor/CI checks.

After five to ten TUs, compare against the baseline. Keep a change only if it increases verified source-linked TUs per unit time without false promotions, stale-object acceptance, evidence loss, or agent collisions. A hard zero-false-promotion requirement applies throughout.

## Verification Gates

- First reconcile owner, live lease, branch HEADs, dirty files, and worktrees; never overwrite another agent's work.
- Run focused BrawlTool tests after workflow changes, including conflict, failure, and rollback cases.
- For changed source candidates, configure explicitly for `RSBE01_01`, compile fresh, run the full-REL probe, run the independent manifest verifier, and complete a fresh 127/127 build.
- Keep target assembly, extracted binaries, ROM images, and private evidence out of public GitHub and online scratch services.
- Measure throughput over several completed TUs; do not accept fuzzy score or a successful fallback build as proof of source completion.

## References

- [Melee Getting Started](https://github.com/doldecomp/melee/blob/master/docs/getting_started.md)
- [Melee contributor guide](https://github.com/doldecomp/melee/blob/master/.github/CONTRIBUTING.md)
- [Melee `tools/decomp.py`](https://github.com/doldecomp/melee/blob/master/tools/decomp.py)
- [Melee build and completeness CI](https://github.com/doldecomp/melee/blob/master/.github/workflows/build.yml)
- [Brawl RSBE01_01 matching evidence](brawl/docs/RSBE01_01.md)
- [BrawlTool operations](research/brawltool/README.md)

## Handoff Prompt

Use this prompt to continue the BrawlTool track independently of the fighter-source lease:

> Continue the BrawlTool tooling track from the repository-root `DECOMP_SPEEDUP_PLAN.md`. Check live handoff and Git state first, but the tooling track may proceed while Claude owns the source lease. Keep edits under `research/brawltool`; do not run Ninja, configure.py, probes, promotion, or commands that write under the shared `brawl/build` or `brawl/config`. If a real build is necessary, create the isolated `../brawl-copilot` worktree from `rsbe01_01-support` and pass it using `--repo`. Complete remaining plan work with synthetic/offline fixtures, preserve full-REL and 127/127 promotion gates, keep original/target data private, report tests per item, and do not commit or push unless explicitly asked.