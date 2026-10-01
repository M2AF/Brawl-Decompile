# Non-matching function evidence (RSBE01_01)

Private: these files contain target disassembly. Each `<unit>.txt` records the
best source attempt (the upstream source, unchanged, since no variant scored
better), the exact compile command, the compiler hash, and a per-function
instruction/relocation diff (target vs candidate) from `powerpc-eabi-objdump -dr`.

Tried on 2026-09-30 (none produced a match):

- `ut_relocate` `resolveReference`: loop and declaration forms, casts,
  `getImportName` inlined by hand, and `getPublicAddress` body shapes (standalone
  match kept). Best is upstream, with 28 diff lines. Only the register assignment
  of the inlined `getPublicAddress` temporaries differs. `direct` indexing in
  `getPublicAddress` cut the diff to 8 lines but broke that function's own match.
- `mt_trig` `mtSinCosf`: call interleaving and step/variable orderings. Best is
  upstream (80 lines).
- `gf_slow_manager` `requestSlow`: declaration order and condition forms. Best is
  upstream (14 lines, `res`/state register swap).
- Compiler/flag sweep: all GC 1.x–3.0a5.2 and Wii 0x4201_127–1.7 builds, plus
  `-O*`, `-inline`, `-ipa` and individual `-opt no*` flags. This does not
  conclusively rule out toolchain settings.

Next hypotheses: register allocation order driven by source structure and header
context (inline helper definitions in BrawlHeaders), then a bounded
decomp-permuter run on one of these.
