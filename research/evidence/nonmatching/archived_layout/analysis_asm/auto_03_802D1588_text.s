.include "macros.inc"
.file "auto_03_802D1588_text"

# 0x802D1588..0x802D15BC | size: 0x34
.text
.balign 4

# .text:0x0 | 0x802D1588 | size: 0x20
.fn fn_802D1588, global
/* 802D1588 002C7308  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D158C 002C730C  4D 82 00 20 */	beqlr
/* 802D1590 002C7310  3C 80 80 48 */	lis r4, lbl_80487508@ha
/* 802D1594 002C7314  38 00 00 01 */	li r0, 0x1
/* 802D1598 002C7318  38 84 75 08 */	addi r4, r4, lbl_80487508@l
/* 802D159C 002C731C  B0 03 00 06 */	sth r0, 0x6(r3)
/* 802D15A0 002C7320  90 83 00 00 */	stw r4, 0x0(r3)
/* 802D15A4 002C7324  4E 80 00 20 */	blr
.endfn fn_802D1588

# .text:0x20 | 0x802D15A8 | size: 0x14
.fn fn_802D15A8, global
/* 802D15A8 002C7328  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D15AC 002C732C  38 80 FF FF */	li r4, -0x1
/* 802D15B0 002C7330  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802D15B4 002C7334  7D 89 03 A6 */	mtctr r12
/* 802D15B8 002C7338  4E 80 04 20 */	bctr
.endfn fn_802D15A8
