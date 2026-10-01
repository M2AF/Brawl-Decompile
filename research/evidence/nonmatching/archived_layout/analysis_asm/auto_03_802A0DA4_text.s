.include "macros.inc"
.file "auto_03_802A0DA4_text"

# 0x802A0DA4..0x802A0DC4 | size: 0x20
.text
.balign 4

# .text:0x0 | 0x802A0DA4 | size: 0x20
.fn dtor_802A0DA4, global
/* 802A0DA4 00296B24  7C 64 1B 78 */	mr r4, r3
/* 802A0DA8 00296B28  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A0DAC 00296B2C  A0 A4 00 04 */	lhz r5, 0x4(r4)
/* 802A0DB0 00296B30  38 C0 00 1D */	li r6, 0x1d
/* 802A0DB4 00296B34  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A0DB8 00296B38  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A0DBC 00296B3C  7D 89 03 A6 */	mtctr r12
/* 802A0DC0 00296B40  4E 80 04 20 */	bctr
.endfn dtor_802A0DA4
