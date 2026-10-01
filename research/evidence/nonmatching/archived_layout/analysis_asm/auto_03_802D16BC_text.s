.include "macros.inc"
.file "auto_03_802D16BC_text"

# 0x802D16BC..0x802D1708 | size: 0x4C
.text
.balign 4

# .text:0x0 | 0x802D16BC | size: 0x8
.fn fn_802D16BC, global
/* 802D16BC 002C743C  38 60 00 09 */	li r3, 0x9
/* 802D16C0 002C7440  4E 80 00 20 */	blr
.endfn fn_802D16BC

# .text:0x8 | 0x802D16C4 | size: 0x30
.fn fn_802D16C4, global
/* 802D16C4 002C7444  80 A3 00 30 */	lwz r5, 0x30(r3)
/* 802D16C8 002C7448  C0 02 AD 98 */	lfs f0, lbl_805A40B8@sda21(r0)
/* 802D16CC 002C744C  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 802D16D0 002C7450  D0 24 00 00 */	stfs f1, 0x0(r4)
/* 802D16D4 002C7454  80 A3 00 30 */	lwz r5, 0x30(r3)
/* 802D16D8 002C7458  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 802D16DC 002C745C  D0 24 00 04 */	stfs f1, 0x4(r4)
/* 802D16E0 002C7460  80 63 00 30 */	lwz r3, 0x30(r3)
/* 802D16E4 002C7464  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 802D16E8 002C7468  D0 24 00 08 */	stfs f1, 0x8(r4)
/* 802D16EC 002C746C  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 802D16F0 002C7470  4E 80 00 20 */	blr
.endfn fn_802D16C4

# .text:0x38 | 0x802D16F4 | size: 0x14
.fn fn_802D16F4, global
/* 802D16F4 002C7474  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 802D16F8 002C7478  38 00 00 01 */	li r0, 0x1
/* 802D16FC 002C747C  90 64 00 00 */	stw r3, 0x0(r4)
/* 802D1700 002C7480  98 04 00 04 */	stb r0, 0x4(r4)
/* 802D1704 002C7484  4E 80 00 20 */	blr
.endfn fn_802D16F4
