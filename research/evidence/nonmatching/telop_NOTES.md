# Telop result — Codex implementation

Accepted whole TU: `brawl/src/mo_adv_menu/sora_adv_menu_telop/mu_adv_telop_task.cpp`.
Local commit `0075b7d`, branch `rsbe01_01-support`; no push.

All six functions plus `.data` (0xB0) and `.rodata` (0x2C) are linked from
source. The normal build checksum gate and independent manifest verification
with `--orig --dtk build/tools/dtk.exe` each passed 127/127. Final logs:
`telop_build_final.log` and `telop_verify_final.log`.

Matching decisions:
- `CopiedMatAccess` needs 0x34 bytes: original constructor writes 0x08..0x30.
  Tracked project header override; dependency submodule stays unchanged.
- `create()` input is const, which produces the original load/store scheduling.
- A redundant first `m_state = 1` assignment fixes allocation in case 0 and is
  optimized away. It is a matching technique, not recovered original spelling.
- `isActive()` is signed `state < 6`, not `state == 6`.
- Preserve the hold state's check without inventing a counter increment.
- Texture min/max LOD out-parameters are floats, confirmed from their stores.
- Function names apart from the RTTI-recovered class name remain inferred;
  unidentified DOL callees retain their original `fn_` identifiers.

Experiments were finite, enumerated source variants, not a permuter run.
`telop_matching_case.cpp` is an intermediate winning case-0 candidate, not
the authoritative final TU. The committed source is authoritative.

Inherited resolveReference processes: the older process tree (root 40864,
started 20:34:17 local) was gone by 21:05 after its 30-minute cap. The later
tree (root 43916, started 20:41:26 local) was still active at 21:08:24 and had
no zero-score output. Its deadline is 21:11:26. Nothing from either trial was
accepted or applied. Inspect the later run before restarting a permuter; never
accept an isolated candidate without normal whole-TU build and 127/127.
