.include "macros.inc"
.file "auto_03_802CD9B0_text"

# 0x802CD9B0..0x802CD9DC | size: 0x2C
.text
.balign 4

# .text:0x0 | 0x802CD9B0 | size: 0x8
.fn fn_802CD9B0, global
/* 802CD9B0 002C3730  38 60 00 07 */	li r3, 0x7
/* 802CD9B4 002C3734  4E 80 00 20 */	blr
.endfn fn_802CD9B0

# .text:0x8 | 0x802CD9B8 | size: 0x24
.fn fn_802CD9B8, global
/* 802CD9B8 002C3738  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 802CD9BC 002C373C  D0 04 00 00 */	stfs f0, 0x0(r4)
/* 802CD9C0 002C3740  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 802CD9C4 002C3744  D0 04 00 04 */	stfs f0, 0x4(r4)
/* 802CD9C8 002C3748  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 802CD9CC 002C374C  D0 04 00 08 */	stfs f0, 0x8(r4)
/* 802CD9D0 002C3750  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 802CD9D4 002C3754  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 802CD9D8 002C3758  4E 80 00 20 */	blr
.endfn fn_802CD9B8
