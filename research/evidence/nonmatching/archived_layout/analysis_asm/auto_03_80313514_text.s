.include "macros.inc"
.file "auto_03_80313514_text"

# 0x80313514..0x80313520 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x80313514 | size: 0x8
.fn fn_80313514, global
/* 80313514 00309294  38 63 00 40 */	addi r3, r3, 0x40
/* 80313518 00309298  4E 80 00 20 */	blr
.endfn fn_80313514

# .text:0x8 | 0x8031351C | size: 0x4
.fn fn_8031351C, global
/* 8031351C 0030929C  4E 80 00 20 */	blr
.endfn fn_8031351C
