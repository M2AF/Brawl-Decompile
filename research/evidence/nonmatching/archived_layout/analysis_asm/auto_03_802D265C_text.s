.include "macros.inc"
.file "auto_03_802D265C_text"

# 0x802D265C..0x802D2670 | size: 0x14
.text
.balign 4

# .text:0x0 | 0x802D265C | size: 0x14
.fn fn_802D265C, global
/* 802D265C 002C83DC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D2660 002C83E0  38 80 FF FF */	li r4, -0x1
/* 802D2664 002C83E4  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802D2668 002C83E8  7D 89 03 A6 */	mtctr r12
/* 802D266C 002C83EC  4E 80 04 20 */	bctr
.endfn fn_802D265C
