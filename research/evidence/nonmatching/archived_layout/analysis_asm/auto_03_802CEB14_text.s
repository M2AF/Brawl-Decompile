.include "macros.inc"
.file "auto_03_802CEB14_text"

# 0x802CEB14..0x802CEB48 | size: 0x34
.text
.balign 4

# .text:0x0 | 0x802CEB14 | size: 0x20
.fn fn_802CEB14, global
/* 802CEB14 002C4894  2C 03 00 00 */	cmpwi r3, 0x0
/* 802CEB18 002C4898  4D 82 00 20 */	beqlr
/* 802CEB1C 002C489C  3C 80 80 48 */	lis r4, lbl_80487408@ha
/* 802CEB20 002C48A0  38 00 00 01 */	li r0, 0x1
/* 802CEB24 002C48A4  38 84 74 08 */	addi r4, r4, lbl_80487408@l
/* 802CEB28 002C48A8  B0 03 00 06 */	sth r0, 0x6(r3)
/* 802CEB2C 002C48AC  90 83 00 00 */	stw r4, 0x0(r3)
/* 802CEB30 002C48B0  4E 80 00 20 */	blr
.endfn fn_802CEB14

# .text:0x20 | 0x802CEB34 | size: 0x14
.fn fn_802CEB34, global
/* 802CEB34 002C48B4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CEB38 002C48B8  38 80 FF FF */	li r4, -0x1
/* 802CEB3C 002C48BC  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802CEB40 002C48C0  7D 89 03 A6 */	mtctr r12
/* 802CEB44 002C48C4  4E 80 04 20 */	bctr
.endfn fn_802CEB34
