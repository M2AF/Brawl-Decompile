.include "macros.inc"
.file "auto_03_802B0D0C_text"

# 0x802B0D0C..0x802B0D20 | size: 0x14
.text
.balign 4

# .text:0x0 | 0x802B0D0C | size: 0x8
.fn fn_802B0D0C, global
/* 802B0D0C 002A6A8C  38 60 FF FF */	li r3, -0x1
/* 802B0D10 002A6A90  4E 80 00 20 */	blr
.endfn fn_802B0D0C

# .text:0x8 | 0x802B0D14 | size: 0x8
.fn fn_802B0D14, global
/* 802B0D14 002A6A94  38 60 00 00 */	li r3, 0x0
/* 802B0D18 002A6A98  4E 80 00 20 */	blr
.endfn fn_802B0D14

# .text:0x10 | 0x802B0D1C | size: 0x4
.fn fn_802B0D1C, global
/* 802B0D1C 002A6A9C  4E 80 00 20 */	blr
.endfn fn_802B0D1C
