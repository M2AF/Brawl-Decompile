.include "macros.inc"
.file "auto_03_802D2F20_text"

# 0x802D2F20..0x802D2F60 | size: 0x40
.text
.balign 4

# .text:0x0 | 0x802D2F20 | size: 0x24
.fn fn_802D2F20, global
/* 802D2F20 002C8CA0  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 802D2F24 002C8CA4  D0 04 00 00 */	stfs f0, 0x0(r4)
/* 802D2F28 002C8CA8  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 802D2F2C 002C8CAC  D0 04 00 04 */	stfs f0, 0x4(r4)
/* 802D2F30 002C8CB0  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 802D2F34 002C8CB4  D0 04 00 08 */	stfs f0, 0x8(r4)
/* 802D2F38 002C8CB8  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 802D2F3C 002C8CBC  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 802D2F40 002C8CC0  4E 80 00 20 */	blr
.endfn fn_802D2F20

# .text:0x24 | 0x802D2F44 | size: 0x8
.fn fn_802D2F44, global
/* 802D2F44 002C8CC4  38 60 FF FF */	li r3, -0x1
/* 802D2F48 002C8CC8  4E 80 00 20 */	blr
.endfn fn_802D2F44

# .text:0x2C | 0x802D2F4C | size: 0x14
.fn fn_802D2F4C, global
/* 802D2F4C 002C8CCC  38 60 00 12 */	li r3, 0x12
/* 802D2F50 002C8CD0  38 00 00 01 */	li r0, 0x1
/* 802D2F54 002C8CD4  90 64 00 00 */	stw r3, 0x0(r4)
/* 802D2F58 002C8CD8  98 04 00 04 */	stb r0, 0x4(r4)
/* 802D2F5C 002C8CDC  4E 80 00 20 */	blr
.endfn fn_802D2F4C
