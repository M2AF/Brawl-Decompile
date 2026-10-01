.include "macros.inc"
.file "auto_wcstombs_text"

# 0x80009624..0x8000962C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009624 | size: 0x8
.obj "@etb_80009624", local
.hidden "@etb_80009624"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r26-r31
 */
	.4byte 0x30080000
	.4byte 0x00000000
.endobj "@etb_80009624"

# 0x8000C67C..0x8000C688 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C67C | size: 0xC
.obj "@eti_8000C67C", local
.hidden "@eti_8000C67C"
	.4byte wcstombs
	.4byte 0x000000B8
	.4byte "@etb_80009624"
.endobj "@eti_8000C67C"

# 0x803F5F74..0x803F602C | size: 0xB8
.text
.balign 4

# .text:0x0 | 0x803F5F74 | size: 0xB8
.fn wcstombs, global
/* 803F5F74 003EBCF4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803F5F78 003EBCF8  7C 08 02 A6 */	mflr r0
/* 803F5F7C 003EBCFC  2C 03 00 00 */	cmpwi r3, 0x0
/* 803F5F80 003EBD00  90 01 00 34 */	stw r0, 0x34(r1)
/* 803F5F84 003EBD04  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 803F5F88 003EBD08  7C 7A 1B 78 */	mr r26, r3
/* 803F5F8C 003EBD0C  7C BB 2B 78 */	mr r27, r5
/* 803F5F90 003EBD10  3B A0 00 00 */	li r29, 0x0
/* 803F5F94 003EBD14  41 82 00 0C */	beq .L_803F5FA0
/* 803F5F98 003EBD18  2C 04 00 00 */	cmpwi r4, 0x0
/* 803F5F9C 003EBD1C  40 82 00 0C */	bne .L_803F5FA8
.L_803F5FA0:
/* 803F5FA0 003EBD20  38 60 00 00 */	li r3, 0x0
/* 803F5FA4 003EBD24  48 00 00 74 */	b .L_803F6018
.L_803F5FA8:
/* 803F5FA8 003EBD28  3F E0 80 49 */	lis r31, lbl_804942B8@ha
/* 803F5FAC 003EBD2C  7C 9C 23 78 */	mr r28, r4
/* 803F5FB0 003EBD30  3B FF 42 B8 */	addi r31, r31, lbl_804942B8@l
/* 803F5FB4 003EBD34  48 00 00 58 */	b .L_803F600C
.L_803F5FB8:
/* 803F5FB8 003EBD38  A0 9C 00 00 */	lhz r4, 0x0(r28)
/* 803F5FBC 003EBD3C  2C 04 00 00 */	cmpwi r4, 0x0
/* 803F5FC0 003EBD40  40 82 00 10 */	bne .L_803F5FD0
/* 803F5FC4 003EBD44  38 00 00 00 */	li r0, 0x0
/* 803F5FC8 003EBD48  7C 1A E9 AE */	stbx r0, r26, r29
/* 803F5FCC 003EBD4C  48 00 00 48 */	b .L_803F6014
.L_803F5FD0:
/* 803F5FD0 003EBD50  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 803F5FD4 003EBD54  38 61 00 08 */	addi r3, r1, 0x8
/* 803F5FD8 003EBD58  81 85 00 24 */	lwz r12, 0x24(r5)
/* 803F5FDC 003EBD5C  7D 89 03 A6 */	mtctr r12
/* 803F5FE0 003EBD60  3B 9C 00 02 */	addi r28, r28, 0x2
/* 803F5FE4 003EBD64  4E 80 04 21 */	bctrl
/* 803F5FE8 003EBD68  7C 1D 1A 14 */	add r0, r29, r3
/* 803F5FEC 003EBD6C  7C 7E 1B 78 */	mr r30, r3
/* 803F5FF0 003EBD70  7C 00 D8 40 */	cmplw r0, r27
/* 803F5FF4 003EBD74  41 81 00 20 */	bgt .L_803F6014
/* 803F5FF8 003EBD78  7F C5 F3 78 */	mr r5, r30
/* 803F5FFC 003EBD7C  7C 7A EA 14 */	add r3, r26, r29
/* 803F6000 003EBD80  38 81 00 08 */	addi r4, r1, 0x8
/* 803F6004 003EBD84  48 00 43 3D */	bl fn_803FA340
/* 803F6008 003EBD88  7F BD F2 14 */	add r29, r29, r30
.L_803F600C:
/* 803F600C 003EBD8C  7C 1D D8 40 */	cmplw r29, r27
/* 803F6010 003EBD90  40 81 FF A8 */	ble .L_803F5FB8
.L_803F6014:
/* 803F6014 003EBD94  7F A3 EB 78 */	mr r3, r29
.L_803F6018:
/* 803F6018 003EBD98  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 803F601C 003EBD9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F6020 003EBDA0  7C 08 03 A6 */	mtlr r0
/* 803F6024 003EBDA4  38 21 00 30 */	addi r1, r1, 0x30
/* 803F6028 003EBDA8  4E 80 00 20 */	blr
.endfn wcstombs
