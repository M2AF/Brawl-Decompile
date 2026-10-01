.include "macros.inc"
.file "auto_03_802D5228_text"

# 0x802D5228..0x802D523C | size: 0x14
.text
.balign 4

# .text:0x0 | 0x802D5228 | size: 0x14
.fn fn_802D5228, global
/* 802D5228 002CAFA8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D522C 002CAFAC  38 80 FF FF */	li r4, -0x1
/* 802D5230 002CAFB0  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802D5234 002CAFB4  7D 89 03 A6 */	mtctr r12
/* 802D5238 002CAFB8  4E 80 04 20 */	bctr
.endfn fn_802D5228
