.include "macros.inc"
.file "auto_fn_803D51A4_text"

# 0x8000946C..0x80009474 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000946C | size: 0x8
.obj "@etb_8000946C", local
.hidden "@etb_8000946C"
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
.endobj "@etb_8000946C"

# 0x8000C43C..0x8000C448 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C43C | size: 0xC
.obj "@eti_8000C43C", local
.hidden "@eti_8000C43C"
	.4byte fn_803D51A4
	.4byte 0x00000078
	.4byte "@etb_8000946C"
.endobj "@eti_8000C43C"

# 0x803D51A4..0x803D521C | size: 0x78
.text
.balign 4

# .text:0x0 | 0x803D51A4 | size: 0x78
.fn fn_803D51A4, global
/* 803D51A4 003CAF24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D51A8 003CAF28  7C 08 02 A6 */	mflr r0
/* 803D51AC 003CAF2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D51B0 003CAF30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D51B4 003CAF34  3B E0 00 00 */	li r31, 0x0
/* 803D51B8 003CAF38  93 C1 00 08 */	stw r30, 0x8(r1)
/* 803D51BC 003CAF3C  3B C0 00 00 */	li r30, 0x0
.L_803D51C0:
/* 803D51C0 003CAF40  57 C3 04 3E */	clrlwi r3, r30, 16
/* 803D51C4 003CAF44  28 03 00 64 */	cmplwi r3, 0x64
/* 803D51C8 003CAF48  41 80 00 0C */	blt .L_803D51D4
/* 803D51CC 003CAF4C  38 00 00 00 */	li r0, 0x0
/* 803D51D0 003CAF50  48 00 00 14 */	b .L_803D51E4
.L_803D51D4:
/* 803D51D4 003CAF54  4B FF FA E5 */	bl fn_803D4CB8
/* 803D51D8 003CAF58  7C 03 00 D0 */	neg r0, r3
/* 803D51DC 003CAF5C  7C 00 1B 78 */	or r0, r0, r3
/* 803D51E0 003CAF60  54 00 0F FE */	srwi r0, r0, 31
.L_803D51E4:
/* 803D51E4 003CAF64  2C 00 00 00 */	cmpwi r0, 0x0
/* 803D51E8 003CAF68  41 82 00 0C */	beq .L_803D51F4
/* 803D51EC 003CAF6C  38 1F 00 01 */	addi r0, r31, 0x1
/* 803D51F0 003CAF70  54 1F 04 3E */	clrlwi r31, r0, 16
.L_803D51F4:
/* 803D51F4 003CAF74  3B DE 00 01 */	addi r30, r30, 0x1
/* 803D51F8 003CAF78  28 1E 00 64 */	cmplwi r30, 0x64
/* 803D51FC 003CAF7C  41 80 FF C4 */	blt .L_803D51C0
/* 803D5200 003CAF80  7F E3 FB 78 */	mr r3, r31
/* 803D5204 003CAF84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D5208 003CAF88  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803D520C 003CAF8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D5210 003CAF90  7C 08 03 A6 */	mtlr r0
/* 803D5214 003CAF94  38 21 00 10 */	addi r1, r1, 0x10
/* 803D5218 003CAF98  4E 80 00 20 */	blr
.endfn fn_803D51A4
