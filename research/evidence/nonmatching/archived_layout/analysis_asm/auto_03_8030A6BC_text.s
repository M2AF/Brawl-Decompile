.include "macros.inc"
.file "auto_03_8030A6BC_text"

# 0x8030A6BC..0x8030A6DC | size: 0x20
.text
.balign 4

# .text:0x0 | 0x8030A6BC | size: 0x20
.fn dtor_8030A6BC, global
/* 8030A6BC 0030043C  7C 64 1B 78 */	mr r4, r3
/* 8030A6C0 00300440  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 8030A6C4 00300444  A0 A4 00 04 */	lhz r5, 0x4(r4)
/* 8030A6C8 00300448  38 C0 00 1F */	li r6, 0x1f
/* 8030A6CC 0030044C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8030A6D0 00300450  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8030A6D4 00300454  7D 89 03 A6 */	mtctr r12
/* 8030A6D8 00300458  4E 80 04 20 */	bctr
.endfn dtor_8030A6BC
