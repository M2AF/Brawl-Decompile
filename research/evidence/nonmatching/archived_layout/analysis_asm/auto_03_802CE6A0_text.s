.include "macros.inc"
.file "auto_03_802CE6A0_text"

# 0x802CE6A0..0x802CE6B4 | size: 0x14
.text
.balign 4

# .text:0x0 | 0x802CE6A0 | size: 0x14
.fn fn_802CE6A0, global
/* 802CE6A0 002C4420  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CE6A4 002C4424  38 80 FF FF */	li r4, -0x1
/* 802CE6A8 002C4428  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802CE6AC 002C442C  7D 89 03 A6 */	mtctr r12
/* 802CE6B0 002C4430  4E 80 04 20 */	bctr
.endfn fn_802CE6A0
