.include "macros.inc"
.file "auto_03_802D4CE4_text"

# 0x802D4CE4..0x802D4D10 | size: 0x2C
.text
.balign 4

# .text:0x0 | 0x802D4CE4 | size: 0x18
.fn fn_802D4CE4, global
/* 802D4CE4 002CAA64  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D4CE8 002CAA68  4D 82 00 20 */	beqlr
/* 802D4CEC 002CAA6C  3C 80 80 48 */	lis r4, lbl_804873E8@ha
/* 802D4CF0 002CAA70  38 84 73 E8 */	addi r4, r4, lbl_804873E8@l
/* 802D4CF4 002CAA74  90 83 00 00 */	stw r4, 0x0(r3)
/* 802D4CF8 002CAA78  4E 80 00 20 */	blr
.endfn fn_802D4CE4

# .text:0x18 | 0x802D4CFC | size: 0x14
.fn fn_802D4CFC, global
/* 802D4CFC 002CAA7C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D4D00 002CAA80  38 80 FF FF */	li r4, -0x1
/* 802D4D04 002CAA84  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802D4D08 002CAA88  7D 89 03 A6 */	mtctr r12
/* 802D4D0C 002CAA8C  4E 80 04 20 */	bctr
.endfn fn_802D4CFC
