.include "macros.inc"
.file "auto_03_802CE808_text"

# 0x802CE808..0x802CE824 | size: 0x1C
.text
.balign 4

# .text:0x0 | 0x802CE808 | size: 0x14
.fn fn_802CE808, global
/* 802CE808 002C4588  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802CE80C 002C458C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CE810 002C4590  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802CE814 002C4594  7D 89 03 A6 */	mtctr r12
/* 802CE818 002C4598  4E 80 04 20 */	bctr
.endfn fn_802CE808

# .text:0x14 | 0x802CE81C | size: 0x8
.fn fn_802CE81C, global
/* 802CE81C 002C459C  38 60 00 16 */	li r3, 0x16
/* 802CE820 002C45A0  4E 80 00 20 */	blr
.endfn fn_802CE81C
