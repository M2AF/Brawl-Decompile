.include "macros.inc"
.file "auto_03_802CBF2C_text"

# 0x802CBF2C..0x802CBF38 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x802CBF2C | size: 0xC
.fn fn_802CBF2C, global
/* 802CBF2C 002C1CAC  88 04 00 00 */	lbz r0, 0x0(r4)
/* 802CBF30 002C1CB0  98 03 1C 14 */	stb r0, 0x1c14(r3)
/* 802CBF34 002C1CB4  4E 80 00 20 */	blr
.endfn fn_802CBF2C
