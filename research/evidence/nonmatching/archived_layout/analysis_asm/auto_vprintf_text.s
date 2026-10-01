.include "macros.inc"
.file "auto_vprintf_text"

# 0x80009694..0x8000969C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009694 | size: 0x8
.obj "@etb_80009694", local
.hidden "@etb_80009694"
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
.endobj "@etb_80009694"

# 0x8000C724..0x8000C730 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C724 | size: 0xC
.obj "@eti_8000C724", local
.hidden "@eti_8000C724"
	.4byte vprintf
	.4byte 0x00000078
	.4byte "@etb_80009694"
.endobj "@eti_8000C724"

# 0x803F87A8..0x803F8820 | size: 0x78
.text
.balign 4

# .text:0x0 | 0x803F87A8 | size: 0x78
.fn vprintf, global
/* 803F87A8 003EE528  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F87AC 003EE52C  7C 08 02 A6 */	mflr r0
/* 803F87B0 003EE530  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F87B4 003EE534  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F87B8 003EE538  3F E0 80 49 */	lis r31, __files@ha
/* 803F87BC 003EE53C  3B FF 3E 60 */	addi r31, r31, __files@l
/* 803F87C0 003EE540  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803F87C4 003EE544  7C 9E 23 78 */	mr r30, r4
/* 803F87C8 003EE548  38 80 FF FF */	li r4, -0x1
/* 803F87CC 003EE54C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803F87D0 003EE550  7C 7D 1B 78 */	mr r29, r3
/* 803F87D4 003EE554  38 7F 00 50 */	addi r3, r31, 0x50
/* 803F87D8 003EE558  48 00 40 51 */	bl fwide
/* 803F87DC 003EE55C  2C 03 00 00 */	cmpwi r3, 0x0
/* 803F87E0 003EE560  41 80 00 0C */	blt .L_803F87EC
/* 803F87E4 003EE564  38 60 FF FF */	li r3, -0x1
/* 803F87E8 003EE568  48 00 00 1C */	b .L_803F8804
.L_803F87EC:
/* 803F87EC 003EE56C  3C 60 80 40 */	lis r3, __FileWrite@ha
/* 803F87F0 003EE570  7F A5 EB 78 */	mr r5, r29
/* 803F87F4 003EE574  7F C6 F3 78 */	mr r6, r30
/* 803F87F8 003EE578  38 9F 00 50 */	addi r4, r31, 0x50
/* 803F87FC 003EE57C  38 63 85 58 */	addi r3, r3, __FileWrite@l
/* 803F8800 003EE580  4B FF F4 FD */	bl __pformatter_803F7CFC
.L_803F8804:
/* 803F8804 003EE584  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F8808 003EE588  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F880C 003EE58C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803F8810 003EE590  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803F8814 003EE594  7C 08 03 A6 */	mtlr r0
/* 803F8818 003EE598  38 21 00 20 */	addi r1, r1, 0x20
/* 803F881C 003EE59C  4E 80 00 20 */	blr
.endfn vprintf
