.include "macros.inc"
.file "auto_03_802D47E0_text"

# 0x802D47E0..0x802D47F4 | size: 0x14
.text
.balign 4

# .text:0x0 | 0x802D47E0 | size: 0x14
.fn fn_802D47E0, global
/* 802D47E0 002CA560  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D47E4 002CA564  38 80 FF FF */	li r4, -0x1
/* 802D47E8 002CA568  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802D47EC 002CA56C  7D 89 03 A6 */	mtctr r12
/* 802D47F0 002CA570  4E 80 04 20 */	bctr
.endfn fn_802D47E0
