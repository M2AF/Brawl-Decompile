# st_tengan provisional tail ownership

RTTI/vtables identify four ground classes, not one original class. The current single combined-TU draft remains NonMatching.

| Class | Text | Bytes | Functions | Data | Read-only data |
|---|---|---:|---:|---|---|
| grTengan | 0x6348..0x65BC | 628 | 21 | 0x838..0xAB8 | none |
| grTenganBg | 0x65BC..0x67EC | 560 | 3 | 0xAB8..0xDD0 | none |
| grTenganFloor | 0x67EC..0x7174 | 2440 | 7 | 0xDD0..0xFF0 | 0xF8..0x108 |
| grTenganAshiba | 0x7174..0x77B4 | 1600 | 6 | 0xFF0..0x1208 | 0x108..0x114 |

Evidence: class-size immediates in factories (1D0,1D8,17C,1F4), vtable addresses (840,B00,DD0,FF0), matching RTTI names and bases, distinct per-class constant/string pools, and weak helper placement after base methods. No ground constructors need .ctors/.bss; registration before 0x6348 is stage-owned.

The Bg region includes 0xD10..0xDD0 (192 bytes) of redundant base-type RTTI payload with discarded weak records. This should be rechecked against separate original-object boundaries; a combined TU naturally emits one set and reverses the strong vtable order. Do not fabricate bytes to make the combined-TU gate pass.

Stage-owned weak setters at 1D7C/1D84/212C/22E4/22EC/22F4, Ground setStageData at 1A80, and gfTask RTTI at .data:7D0 were renamed in the isolated config to match emitted names. This does not promote those functions or stage data.


## Accepted refinement

Only the base row is verified as a source TU. Full module source probe passes
57504 bytes/SHA1 839c8054988ecf7f32862da78fc429daea8833b1. Other rows are
provisional original-object hypotheses. The source base object emits extra
weak setStageData and gfTask RTTI material; matching names let the linker
discard them correctly. No manual payload reconstruction was needed.

The first reduced-scope probe failed due to an unapplied split edit: dtk
had reformatted whitespace and the simple string replacement did nothing.
This was caught by the missing fn_60_65BC relocation and target function
count. The split was then replaced with an asserted regex and the actual
21-function target plus complete full-REL byte identity were verified.
The earlier failed logs do not describe the final split or its acceptance.
