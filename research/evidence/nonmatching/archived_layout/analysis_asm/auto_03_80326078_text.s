.include "macros.inc"
.file "auto_03_80326078_text"

# 0x80326078..0x80326098 | size: 0x20
.text
.balign 4

# .text:0x0 | 0x80326078 | size: 0x20
.fn dtor_80326078, global
/* 80326078 0031BDF8  7C 64 1B 78 */	mr r4, r3
/* 8032607C 0031BDFC  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 80326080 0031BE00  A0 A4 00 04 */	lhz r5, 0x4(r4)
/* 80326084 0031BE04  38 C0 00 13 */	li r6, 0x13
/* 80326088 0031BE08  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8032608C 0031BE0C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80326090 0031BE10  7D 89 03 A6 */	mtctr r12
/* 80326094 0031BE14  4E 80 04 20 */	bctr
.endfn dtor_80326078
