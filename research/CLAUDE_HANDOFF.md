# Claude handoff: Brawl RSBE01_01

**Latest direction:** new small TUs first, then reassess one bounded permuter experiment after three further complete TU matches. The user has reported completion of the controller TU and baseline verification; do not restart completed tasks solely because this initial queue precedes those results. See [FUTURE_PORT_ROADMAP.md](FUTURE_PORT_ROADMAP.md) for the desktop/browser, expanded-lobby and custom-character goals. Those are future architecture requirements, not an instruction to interrupt matching work for a new backend.

This is the initial handoff. The user subsequently authorized Codex to implement directly. Read `CODEX_RESUME.md` for current source progress and verification; `IMPLEMENTATION_SPEC.md` remains the architectural baseline. Authorization covers local implementation, not publication or uploading originals.

## Starting facts

- Local disc images: USA revision 1 (`RSBE01_01`).
- Main DOL SHA-1: `2a78a0b3f375bfc85c7e42e20bc8551d1492d5d8`.
- 126 REL modules, each identical to the pinned upstream Rev2 checksum.
- Existing baseline project: doldecomp/brawl commit `f168bd99c35f4204d615d68a834cd6ca376495b9`.
- Initial automatic Rev1 analysis already exists in `research/analysis`; it is not final source-file attribution.
- No CodeWarrior compile/link or gameplay test has occurred. No candidate objects or actual target-versus-candidate diff results exist yet.

Local originals are in `research/local/iso/sys/main.dol` and `research/local/iso/module/*.rel`. Equivalent copies from RVZ are under `research/local/rvz`. Do not modify originals or write to the source images.

## Task queue

### 0. Establish source checkout and provenance

Create a separate implementation checkout based on the pinned upstream commit; retain supported Rev2 metadata. Initialize its recursive BrawlHeaders dependency at the upstream-pinned SHA. Record tool pins and local input hashes. Reuse existing generator utilities instead of copying a research snapshot as the full repository.

Deliverables: source checkout, dependency provenance, private original input tree, complete 127-target manifest, documented local setup command. Keep original images where they are unless the user specifically directs a move. No public artifact uploads.

Acceptance: target IDs and hashes agree with `reports/binary-manifest.json`; every manifest entry maps to exactly one input and output path.

### 1. Add real RSBE01_01 support

Create `config/RSBE01_01/config.yml`, main symbols/splits and output checksum metadata. Reuse the unchanged REL configuration ranges and hashes from upstream; inventory all 126 modules. Generate main-DOL boundaries from local evidence. Imported Rev2 DOL names need validation.

The version name is already listed upstream but only Rev2 has documented working configuration. Do not confuse selecting `--version RSBE01_01` with support. Preserve per-version matching markers: any Rev2 match is only a candidate for Rev1 until locally verified.

Deliverables: configuration tree, provenance notes for imported ranges, version-aware configure.py updates, expected `build.sha1`. Reconcile `.bss2` versus `.sbss2` names and section alignments.

Acceptance: no Rev2 hash accepted for main.dol; no REL omitted; imports resolve to main or inventoried modules; no unsupported target proceeds silently.

### 2. Reproduce baseline using extracted objects

Use dtk split plus the upstream generator to produce link control files and ordered target objects. In the new Rev1 version, default source TUs to nonmatching until validated. Preserve original target-object fallback for every unavailable or unverified source TU.

Deliverables: Ninja build, ELF/DOL and partial-link/REL generation, successful all-target checks, progress report clearly labeled “baseline reconstruction”.

Acceptance: all 127 final executable files match local originals by raw bytes, size and frozen hashes. Build must not “succeed” by copying final originals to output; rebuilding from split objects must be demonstrated. Source progress can be zero at this gate.

If link layout fails, diagnose original-object ordering, alignment, section mapping, relocation inference, force-active data, weak functions, constructor/destructor entries and exception metadata before changing compiler profiles.

### 3. Implement robust verifier and dependency checks

Write `tools/verify_manifest.py` (or equivalent) to compare expected originals and final outputs, return nonzero for missing or different files, validate the exact inventory and emit a concise mismatch summary. Expected hashes come only from verified original inputs. Integrate with the Ninja default target and trusted private CI.

Acceptance: corruption, truncation, missing files, wrong-version inputs and stale-success cases fail reliably. A good DOL with one bad REL fails. Public source-only CI never claims binary verification.

### 4. Calibrate compiler on existing source matches

Use upstream's small already-matching startup/utility TUs as calibration candidates (`sora/sr/sr_getappname.cpp`, `sora/sr/sr_common.cpp`, `sora/main.cpp`), then a known unchanged REL TU such as `mo_stage/st_final/st_final.cpp`. Their upstream source status is visible in the pinned configure.py; validate locally before marking Rev1 matched.

Deliverables: exact compiler/linker hashes, effective flag logs, local objdiff evidence and final binary checks. Do not rewrite existing matches to manufacture easy progress.

Acceptance: at least one complete DOL TU and one unchanged REL TU source-link successfully with no binary regression. Investigate a revision-returning function separately; its semantic name is not proof of equal bytes across revisions.

### 5. First new TU: cmMenuFixedController

Candidate TU: `sora/cm/cm_controller_menu_fixed.cpp`, listed nonmatching in pinned upstream. Start with its constructor at `0x800A68C0`, size `0x44`. Local target: `evidence/nonmatching/archived_layout/target-packets/cmMenuFixedController_constructor.target.s`.

Context block:

```text
Version: RSBE01_01
Provisional symbol: __ct__21cmMenuFixedControllerFv
Target .text: 0x800A68C0, 0x44 bytes
Candidate TU .text span from upstream: [0x800A68C0, 0x800A6A78)
Referenced initialized data: 0x80454ED8 (candidate vtable)
Referenced floats: 0x805A2048, 0x805A204C, 0x805A2050
Observed stores: object+0x00, +0x04, +0x08, +0x0C, +0x10, +0x14, +0x18, +0x1C
Ownership to establish: .data, .sdata, .sdata2 and every other TU function
Profile: common game settings; confirm from effective command line
```

The constructor contains a byte read/bit mask/write at object+8; preserve bitfield behavior and store ordering. Do not substitute zero-initializing the entire object. Infer base-object and vtable placement from headers and callers. Match the constructor first, then remaining functions/data before promoting the TU.

Acceptance: constructor instruction/relocation match; eventually whole-TU match; final DOL/REL manifest still passes.

### 6. Second new TU: utRelocate

Candidate TU: `sora/ut/ut_relocate.cpp`, listed nonmatching upstream. Start with the destructor at `0x80043F6C`, size `0x40`. Target: `evidence/nonmatching/archived_layout/target-packets/utRelocate_destructor.target.s`.

```text
Version: RSBE01_01
Provisional symbol: __dt__10utRelocateFv
Candidate TU .text: [0x80043E1C, 0x80044214)
Destructor target: [0x80043F6C, 0x80043FAC)
Observed r3: object pointer; retained in r31 and returned
Observed r4: tested as signed positive before call
Observed call target: fn_8000C8C8; resolve it before naming the operation
Dependencies: allocation/deallocation ABI, constructor layout, address/name lookup
```

The observed shape is consistent with a CodeWarrior deleting destructor; that is an inference pending ABI/header confirmation. Write idiomatic target-dialect C++ and let the compiler emit its destructor variants instead of bypassing the ABI with handwritten C wrapper code. Expand to constructor and public-address lookup only after layout is stable.

Acceptance: all destructor branches and call relocation match; remaining TU data/function ownership verified; final outputs unchanged.

### 7. Math recovery: vlRotateFix and mtSinf

Candidate TUs: `sora/mt/mt_vector_old.cpp` and `sora/mt/mt_trig.cpp`, both nonmatching in pinned upstream.

```text
vlRotateFix target: 0x8003E244, size 0x118
Provisional name: vlRotateFix__FP5Vec3fQ212vlRotateAxis4Enumf
Local target: evidence/nonmatching/archived_layout/target-packets/vlRotateFix.target.s

mtSinf target: 0x8003FD5C, size 0xA0
Provisional name: mtSinf__Ff
Local target: evidence/nonmatching/archived_layout/target-packets/mtSinf.target.s
Candidate mt_trig TU: [0x8003FD5C, 0x8003FFC4), plus constants
```

Verify vector structure, axis enum storage, floating constants, angle scaling and rounding behavior. Preserve single-versus-double promotions, evaluation order and contraction settings. Do not replace lookup/polynomial behavior with host `sinf` merely because the result appears close. These functions are useful future determinism tests as well as matching tasks.

Acceptance: exact code and constants locally match; relevant remaining TU functions accounted for; every final binary still matches.

### 8. Engine scheduler recovery

Candidate TU: `sora/gf/gf_task_scheduler.cpp`, nonmatching upstream. First function: `create__15gfTaskSchedulerFv`, local address `0x8002E09C`, size `0x270`. Target: `evidence/nonmatching/archived_layout/target-packets/gfTaskScheduler_create.target.s`.

```text
Candidate TU .text: [0x8002E09C, 0x8002F188)
Candidate singleton storage: .sbss at 0x805A0068, size 4
Dependencies: gfTask, thread lifecycle, allocation, list ownership, callback ABI
Needed context: full scheduler layout, singleton init/shutdown, callers and constructors
```

Analyze allocation/initialization and error paths before inventing a class. Task ordering and lifetime affect many packages; lock the shared header contract before extending scheduler methods. This is larger than an initial compiler exercise.

Acceptance: create plus remaining scheduler TU sections match; dependent matching source stays stable; full manifest passes.

### 9. Gameplay packages

Continue with small nonmatching utility/UI TUs (`gf_slow_manager`, relocation consumers), then larger action-command interpreter (`sora/ac/ac_cmd_interpreter.cpp`) and fighter/status implementations. Stage interfaces can reuse verified unchanged modules. Choose one minimally coupled function or TU at a time from current progress; do not duplicate code already matching upstream.

For fighters, lock resident/shared class layouts first, then a module's factory, ctor/dtor and simple status/accessor functions, then unique move logic. For stage work, verify ground/collision interfaces before complex moving-stage behavior. For adventure work, recover shared enemy-module interfaces before actor-specific logic.

Acceptance per task: source ownership, exact profile, local object diffs, affected final binary hashes, no matching-progress regression. Large subsystems need smaller named work packets before coding begins.

### 10. Native host prototype (later)

Do not start as an incidental change to matching flags or headers. Write a separate portability specification after the first useful recovered gameplay slice. Fix the first host and feature scope, then implement platform adapters and behavioral tests. Native output has its own acceptance gates and does not pass by matching Wii binary checksums.

## Required packet format for every subsequent coding task

```text
Task ID and owner:
Version and original binary hash:
Module ID / section / address / size:
Exact source TU and owned section ranges:
Mangled symbol and semantic-name confidence:
Compiler binary hash and ordered effective flags:
Relevant headers, class layout and unresolved assumptions:
Target .o/.s paths, referenced constants, imports and callees:
Current candidate .o and reproducible build command:
Objdiff evidence, first mismatch and active hypothesis:
Whole-binary verification result:
Completion criterion and explicit remaining work:
```

The five supplied packets contain original target assembly with addresses and instruction bytes. They are not standalone assembler inputs: external labels/macros/section context remain in the full generated assembly. There is no honest candidate diff until Claude builds a candidate. Attach that diff to the packet after the first compile instead of inventing a mismatch score now.

## Suggested first instruction to Claude

> Read research/IMPLEMENTATION_SPEC.md and research/CLAUDE_HANDOFF.md. Start with tasks 0–4: extend pinned doldecomp/brawl for our measured RSBE01_01 inputs, reuse the identical REL configuration, establish a genuine extracted-object rebuild and strict verification, and calibrate existing source matches. Keep originals private and unchanged. Report the exact commands and pass/fail results. Do not claim a completed decompilation from fallback objects. Begin new function matching only after the full baseline passes.

## Research validation status

Passed: local image identification; 127-input inventory; SHA-1/MD5/SHA-256 measurement; ISO-versus-RVZ executable equality; 126 upstream REL checksum comparisons; initial DOL split into target objects and assembly; extraction of five local function targets.

Not performed: toolchain installation, generated project build, candidate compilation, final-link matching, CI provisioning, emulator gameplay, native port. These are Claude's implementation gates.
