.include "macros.inc"
.file "auto_03_80325BB0_text"

# 0x80325BB0..0x80325BE4 | size: 0x34
.text
.balign 4

# .text:0x0 | 0x80325BB0 | size: 0x20
.fn fn_80325BB0, global
/* 80325BB0 0031B930  2C 03 00 00 */	cmpwi r3, 0x0
/* 80325BB4 0031B934  4D 82 00 20 */	beqlr
/* 80325BB8 0031B938  3C 80 80 49 */	lis r4, lbl_80488CB8@ha
/* 80325BBC 0031B93C  38 00 00 01 */	li r0, 0x1
/* 80325BC0 0031B940  38 84 8C B8 */	addi r4, r4, lbl_80488CB8@l
/* 80325BC4 0031B944  B0 03 00 06 */	sth r0, 0x6(r3)
/* 80325BC8 0031B948  90 83 00 00 */	stw r4, 0x0(r3)
/* 80325BCC 0031B94C  4E 80 00 20 */	blr
.endfn fn_80325BB0

# .text:0x20 | 0x80325BD0 | size: 0x14
.fn fn_80325BD0, global
/* 80325BD0 0031B950  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80325BD4 0031B954  38 80 FF FF */	li r4, -0x1
/* 80325BD8 0031B958  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 80325BDC 0031B95C  7D 89 03 A6 */	mtctr r12
/* 80325BE0 0031B960  4E 80 04 20 */	bctr
.endfn fn_80325BD0
