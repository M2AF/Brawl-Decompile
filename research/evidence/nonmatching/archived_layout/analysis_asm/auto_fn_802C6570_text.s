.include "macros.inc"
.file "auto_fn_802C6570_text"

# 0x80007ED0..0x80007ED8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007ED0 | size: 0x8
.obj "@etb_80007ED0", local
.hidden "@etb_80007ED0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80007ED0"

# 0x8000AC00..0x8000AC0C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AC00 | size: 0xC
.obj "@eti_8000AC00", local
.hidden "@eti_8000AC00"
	.4byte fn_802C6570
	.4byte 0x00000074
	.4byte "@etb_80007ED0"
.endobj "@eti_8000AC00"

# 0x802C6570..0x802C65E4 | size: 0x74
.text
.balign 4

# .text:0x0 | 0x802C6570 | size: 0x74
.fn fn_802C6570, global
/* 802C6570 002BC2F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C6574 002BC2F4  7C 08 02 A6 */	mflr r0
/* 802C6578 002BC2F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C657C 002BC2FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C6580 002BC300  7C 7F 1B 78 */	mr r31, r3
/* 802C6584 002BC304  A0 83 00 0C */	lhz r4, 0xc(r3)
/* 802C6588 002BC308  28 04 FF FF */	cmplwi r4, 0xffff
/* 802C658C 002BC30C  41 82 00 24 */	beq .L_802C65B0
/* 802C6590 002BC310  80 63 00 08 */	lwz r3, 0x8(r3)
/* 802C6594 002BC314  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C6598 002BC318  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802C659C 002BC31C  7D 89 03 A6 */	mtctr r12
/* 802C65A0 002BC320  4E 80 04 21 */	bctrl
/* 802C65A4 002BC324  3C 60 00 01 */	lis r3, 0x1
/* 802C65A8 002BC328  38 03 FF FF */	subi r0, r3, 0x1
/* 802C65AC 002BC32C  B0 1F 00 0C */	sth r0, 0xc(r31)
.L_802C65B0:
/* 802C65B0 002BC330  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802C65B4 002BC334  41 82 00 1C */	beq .L_802C65D0
/* 802C65B8 002BC338  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 802C65BC 002BC33C  7F E3 FB 78 */	mr r3, r31
/* 802C65C0 002BC340  38 80 00 01 */	li r4, 0x1
/* 802C65C4 002BC344  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802C65C8 002BC348  7D 89 03 A6 */	mtctr r12
/* 802C65CC 002BC34C  4E 80 04 21 */	bctrl
.L_802C65D0:
/* 802C65D0 002BC350  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C65D4 002BC354  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C65D8 002BC358  7C 08 03 A6 */	mtlr r0
/* 802C65DC 002BC35C  38 21 00 10 */	addi r1, r1, 0x10
/* 802C65E0 002BC360  4E 80 00 20 */	blr
.endfn fn_802C6570
