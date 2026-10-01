.include "macros.inc"
.file "auto_03_802B1A6C_text"

# 0x802B1A6C..0x802B1AAC | size: 0x40
.text
.balign 4

# .text:0x0 | 0x802B1A6C | size: 0x20
.fn fn_802B1A6C, global
/* 802B1A6C 002A77EC  C0 22 AC 18 */	lfs f1, lbl_805A3F38@sda21(r0)
/* 802B1A70 002A77F0  C0 02 AC 1C */	lfs f0, lbl_805A3F3C@sda21(r0)
/* 802B1A74 002A77F4  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 802B1A78 002A77F8  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 802B1A7C 002A77FC  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 802B1A80 002A7800  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 802B1A84 002A7804  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 802B1A88 002A7808  4E 80 00 20 */	blr
.endfn fn_802B1A6C

# .text:0x20 | 0x802B1A8C | size: 0x20
.fn fn_802B1A8C, global
/* 802B1A8C 002A780C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B1A90 002A7810  4D 82 00 20 */	beqlr
/* 802B1A94 002A7814  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B1A98 002A7818  38 80 00 01 */	li r4, 0x1
/* 802B1A9C 002A781C  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802B1AA0 002A7820  7D 89 03 A6 */	mtctr r12
/* 802B1AA4 002A7824  4E 80 04 20 */	bctr
/* 802B1AA8 002A7828  4E 80 00 20 */	blr
.endfn fn_802B1A8C
