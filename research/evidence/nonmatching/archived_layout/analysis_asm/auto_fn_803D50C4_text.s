.include "macros.inc"
.file "auto_fn_803D50C4_text"

# 0x8000945C..0x80009464 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000945C | size: 0x8
.obj "@etb_8000945C", local
.hidden "@etb_8000945C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000945C"

# 0x8000C424..0x8000C430 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C424 | size: 0xC
.obj "@eti_8000C424", local
.hidden "@eti_8000C424"
	.4byte fn_803D50C4
	.4byte 0x000000A4
	.4byte "@etb_8000945C"
.endobj "@eti_8000C424"

# 0x803D50C4..0x803D5168 | size: 0xA4
.text
.balign 4

# .text:0x0 | 0x803D50C4 | size: 0xA4
.fn fn_803D50C4, global
/* 803D50C4 003CAE44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D50C8 003CAE48  7C 08 02 A6 */	mflr r0
/* 803D50CC 003CAE4C  2C 03 00 00 */	cmpwi r3, 0x0
/* 803D50D0 003CAE50  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D50D4 003CAE54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D50D8 003CAE58  93 C1 00 08 */	stw r30, 0x8(r1)
/* 803D50DC 003CAE5C  7C 7E 1B 78 */	mr r30, r3
/* 803D50E0 003CAE60  40 82 00 0C */	bne .L_803D50EC
/* 803D50E4 003CAE64  38 60 00 0F */	li r3, 0xf
/* 803D50E8 003CAE68  48 00 00 68 */	b .L_803D5150
.L_803D50EC:
/* 803D50EC 003CAE6C  28 04 00 64 */	cmplwi r4, 0x64
/* 803D50F0 003CAE70  41 80 00 0C */	blt .L_803D50FC
/* 803D50F4 003CAE74  38 60 00 0F */	li r3, 0xf
/* 803D50F8 003CAE78  48 00 00 58 */	b .L_803D5150
.L_803D50FC:
/* 803D50FC 003CAE7C  7C 83 23 78 */	mr r3, r4
/* 803D5100 003CAE80  4B FF FB B9 */	bl fn_803D4CB8
/* 803D5104 003CAE84  2C 03 00 00 */	cmpwi r3, 0x0
/* 803D5108 003CAE88  7C 7F 1B 78 */	mr r31, r3
/* 803D510C 003CAE8C  40 82 00 0C */	bne .L_803D5118
/* 803D5110 003CAE90  38 60 00 01 */	li r3, 0x1
/* 803D5114 003CAE94  48 00 00 3C */	b .L_803D5150
.L_803D5118:
/* 803D5118 003CAE98  7F C4 F3 78 */	mr r4, r30
/* 803D511C 003CAE9C  4B FF FC F1 */	bl fn_803D4E0C
/* 803D5120 003CAEA0  38 7E 00 2E */	addi r3, r30, 0x2e
/* 803D5124 003CAEA4  38 9F 00 36 */	addi r4, r31, 0x36
/* 803D5128 003CAEA8  38 A0 00 14 */	li r5, 0x14
/* 803D512C 003CAEAC  4B C2 F2 0D */	bl memcpy
/* 803D5130 003CAEB0  3B E0 00 00 */	li r31, 0x0
/* 803D5134 003CAEB4  7F C3 F3 78 */	mr r3, r30
/* 803D5138 003CAEB8  B3 FE 00 42 */	sth r31, 0x42(r30)
/* 803D513C 003CAEBC  48 00 0A 55 */	bl fn_803D5B90
/* 803D5140 003CAEC0  2C 03 00 00 */	cmpwi r3, 0x0
/* 803D5144 003CAEC4  38 60 00 07 */	li r3, 0x7
/* 803D5148 003CAEC8  41 82 00 08 */	beq .L_803D5150
/* 803D514C 003CAECC  7F E3 FB 78 */	mr r3, r31
.L_803D5150:
/* 803D5150 003CAED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D5154 003CAED4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D5158 003CAED8  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803D515C 003CAEDC  7C 08 03 A6 */	mtlr r0
/* 803D5160 003CAEE0  38 21 00 10 */	addi r1, r1, 0x10
/* 803D5164 003CAEE4  4E 80 00 20 */	blr
.endfn fn_803D50C4
