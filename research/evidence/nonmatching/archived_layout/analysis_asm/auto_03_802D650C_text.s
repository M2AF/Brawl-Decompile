.include "macros.inc"
.file "auto_03_802D650C_text"

# 0x802D650C..0x802D6540 | size: 0x34
.text
.balign 4

# .text:0x0 | 0x802D650C | size: 0x20
.fn fn_802D650C, global
/* 802D650C 002CC28C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D6510 002CC290  4D 82 00 20 */	beqlr
/* 802D6514 002CC294  3C 80 80 48 */	lis r4, lbl_80487828@ha
/* 802D6518 002CC298  38 00 00 01 */	li r0, 0x1
/* 802D651C 002CC29C  38 84 78 28 */	addi r4, r4, lbl_80487828@l
/* 802D6520 002CC2A0  B0 03 00 06 */	sth r0, 0x6(r3)
/* 802D6524 002CC2A4  90 83 00 00 */	stw r4, 0x0(r3)
/* 802D6528 002CC2A8  4E 80 00 20 */	blr
.endfn fn_802D650C

# .text:0x20 | 0x802D652C | size: 0x14
.fn fn_802D652C, global
/* 802D652C 002CC2AC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D6530 002CC2B0  38 80 FF FF */	li r4, -0x1
/* 802D6534 002CC2B4  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802D6538 002CC2B8  7D 89 03 A6 */	mtctr r12
/* 802D653C 002CC2BC  4E 80 04 20 */	bctr
.endfn fn_802D652C
