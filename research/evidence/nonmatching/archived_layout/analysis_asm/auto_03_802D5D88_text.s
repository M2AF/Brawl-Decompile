.include "macros.inc"
.file "auto_03_802D5D88_text"

# 0x802D5D88..0x802D5DBC | size: 0x34
.text
.balign 4

# .text:0x0 | 0x802D5D88 | size: 0x20
.fn fn_802D5D88, global
/* 802D5D88 002CBB08  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D5D8C 002CBB0C  4D 82 00 20 */	beqlr
/* 802D5D90 002CBB10  3C 80 80 48 */	lis r4, lbl_804877E8@ha
/* 802D5D94 002CBB14  38 00 00 01 */	li r0, 0x1
/* 802D5D98 002CBB18  38 84 77 E8 */	addi r4, r4, lbl_804877E8@l
/* 802D5D9C 002CBB1C  B0 03 00 06 */	sth r0, 0x6(r3)
/* 802D5DA0 002CBB20  90 83 00 00 */	stw r4, 0x0(r3)
/* 802D5DA4 002CBB24  4E 80 00 20 */	blr
.endfn fn_802D5D88

# .text:0x20 | 0x802D5DA8 | size: 0x14
.fn fn_802D5DA8, global
/* 802D5DA8 002CBB28  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D5DAC 002CBB2C  38 80 FF FF */	li r4, -0x1
/* 802D5DB0 002CBB30  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802D5DB4 002CBB34  7D 89 03 A6 */	mtctr r12
/* 802D5DB8 002CBB38  4E 80 04 20 */	bctr
.endfn fn_802D5DA8
