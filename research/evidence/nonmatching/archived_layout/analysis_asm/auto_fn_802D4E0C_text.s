.include "macros.inc"
.file "auto_fn_802D4E0C_text"

# 0x80008574..0x8000857C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008574 | size: 0x8
.obj "@etb_80008574", local
.hidden "@etb_80008574"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80008574"

# 0x8000B380..0x8000B38C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B380 | size: 0xC
.obj "@eti_8000B380", local
.hidden "@eti_8000B380"
	.4byte fn_802D4E0C
	.4byte 0x000000B4
	.4byte "@etb_80008574"
.endobj "@eti_8000B380"

# 0x802D4E0C..0x802D4EC0 | size: 0xB4
.text
.balign 4

# .text:0x0 | 0x802D4E0C | size: 0xB4
.fn fn_802D4E0C, global
/* 802D4E0C 002CAB8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802D4E10 002CAB90  7C 08 02 A6 */	mflr r0
/* 802D4E14 002CAB94  38 A0 00 00 */	li r5, 0x0
/* 802D4E18 002CAB98  38 C0 00 04 */	li r6, 0x4
/* 802D4E1C 002CAB9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802D4E20 002CABA0  38 E0 00 00 */	li r7, 0x0
/* 802D4E24 002CABA4  39 00 00 01 */	li r8, 0x1
/* 802D4E28 002CABA8  39 20 00 00 */	li r9, 0x0
/* 802D4E2C 002CABAC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802D4E30 002CABB0  3F E0 80 41 */	lis r31, lbl_80410A18@ha
/* 802D4E34 002CABB4  38 9F 0A 18 */	addi r4, r31, lbl_80410A18@l
/* 802D4E38 002CABB8  39 40 00 00 */	li r10, 0x0
/* 802D4E3C 002CABBC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802D4E40 002CABC0  3F C0 80 53 */	lis r30, lbl_80532868@ha
/* 802D4E44 002CABC4  38 7E 28 68 */	addi r3, r30, lbl_80532868@l
/* 802D4E48 002CABC8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802D4E4C 002CABCC  3B A0 00 00 */	li r29, 0x0
/* 802D4E50 002CABD0  93 A1 00 08 */	stw r29, 0x8(r1)
/* 802D4E54 002CABD4  93 A1 00 0C */	stw r29, 0xc(r1)
/* 802D4E58 002CABD8  93 A1 00 10 */	stw r29, 0x10(r1)
/* 802D4E5C 002CABDC  4B FA 79 AD */	bl fn_8027C808
/* 802D4E60 002CABE0  3C A0 80 41 */	lis r5, lbl_80410A04@ha
/* 802D4E64 002CABE4  38 9F 0A 18 */	addi r4, r31, lbl_80410A18@l
/* 802D4E68 002CABE8  38 A5 0A 04 */	addi r5, r5, lbl_80410A04@l
/* 802D4E6C 002CABEC  3C 60 80 53 */	lis r3, lbl_8053288C@ha
/* 802D4E70 002CABF0  90 A1 00 08 */	stw r5, 0x8(r1)
/* 802D4E74 002CABF4  38 00 00 01 */	li r0, 0x1
/* 802D4E78 002CABF8  38 63 28 8C */	addi r3, r3, lbl_8053288C@l
/* 802D4E7C 002CABFC  38 84 00 11 */	addi r4, r4, 0x11
/* 802D4E80 002CAC00  90 01 00 0C */	stw r0, 0xc(r1)
/* 802D4E84 002CAC04  38 BE 28 68 */	addi r5, r30, lbl_80532868@l
/* 802D4E88 002CAC08  38 C0 00 08 */	li r6, 0x8
/* 802D4E8C 002CAC0C  38 E0 00 00 */	li r7, 0x0
/* 802D4E90 002CAC10  93 A1 00 10 */	stw r29, 0x10(r1)
/* 802D4E94 002CAC14  39 00 00 00 */	li r8, 0x0
/* 802D4E98 002CAC18  39 20 00 00 */	li r9, 0x0
/* 802D4E9C 002CAC1C  39 40 00 00 */	li r10, 0x0
/* 802D4EA0 002CAC20  4B FA 79 69 */	bl fn_8027C808
/* 802D4EA4 002CAC24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802D4EA8 002CAC28  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802D4EAC 002CAC2C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802D4EB0 002CAC30  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802D4EB4 002CAC34  7C 08 03 A6 */	mtlr r0
/* 802D4EB8 002CAC38  38 21 00 30 */	addi r1, r1, 0x30
/* 802D4EBC 002CAC3C  4E 80 00 20 */	blr
.endfn fn_802D4E0C

# 0x8040668C..0x80406690 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802D4E0C
