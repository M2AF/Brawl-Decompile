# Optional next stages: fresh extracted-chunk ranking

Checkout brawl-codex4, codex/stages at 91b5438; configure + normal127 verified.
These are remaining chunks starting at 0x70, NOT proven stage-body TU boundaries.
Each may include ground classes/weak emissions. Size-first, unknown DOL callees as tie-break.
No optional TU chosen or code written: both required bodies attempted; tooling work completed first.

| Module | Chunk bytes | Functions | Unnamed DOL callees | Provisional .text |
|---|---:|---:|---:|---|
| st_ice | 10,752 | 88 | 3 | 0x70..0x2a70 |
| st_norfair | 10,908 | 78 | 3 | 0x70..0x2b0c |
| st_homerun | 16,828 | 108 | 15 | 0x70..0x422c |
| st_madein | 27,008 | 57 | 6 | 0x70..0x69f0 |

Before choosing: recover stage RTTI/vtable and split away ground constructors; assign all
data/rodata/BSS/ctors and check weak emissions. Log exact confirmed ranges before source.
Original inputs and target asm remain private. No disassembly copied into this report.
