.include "macros.inc"
.file "auto_03_802A1FD4_text"

# 0x802A1FD4..0x802A1FF4 | size: 0x20
.text
.balign 4

# .text:0x0 | 0x802A1FD4 | size: 0x20
.fn dtor_802A1FD4, global
/* 802A1FD4 00297D54  7C 64 1B 78 */	mr r4, r3
/* 802A1FD8 00297D58  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A1FDC 00297D5C  A0 A4 00 04 */	lhz r5, 0x4(r4)
/* 802A1FE0 00297D60  38 C0 00 1D */	li r6, 0x1d
/* 802A1FE4 00297D64  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A1FE8 00297D68  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A1FEC 00297D6C  7D 89 03 A6 */	mtctr r12
/* 802A1FF0 00297D70  4E 80 04 20 */	bctr
.endfn dtor_802A1FD4
