.include "macros.inc"
.file "auto_fn_803D487C_text"

# 0x8000940C..0x80009414 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000940C | size: 0x8
.obj "@etb_8000940C", local
.hidden "@etb_8000940C"
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
.endobj "@etb_8000940C"

# 0x8000C3AC..0x8000C3B8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C3AC | size: 0xC
.obj "@eti_8000C3AC", local
.hidden "@eti_8000C3AC"
	.4byte fn_803D487C
	.4byte 0x00000064
	.4byte "@etb_8000940C"
.endobj "@eti_8000C3AC"

# 0x803D487C..0x803D48E0 | size: 0x64
.text
.balign 4

# .text:0x0 | 0x803D487C | size: 0x64
.fn fn_803D487C, global
/* 803D487C 003CA5FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D4880 003CA600  7C 08 02 A6 */	mflr r0
/* 803D4884 003CA604  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D4888 003CA608  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D488C 003CA60C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 803D4890 003CA610  7C 7E 1B 78 */	mr r30, r3
/* 803D4894 003CA614  4B FF 8A 15 */	bl fn_803CD2A8
/* 803D4898 003CA618  3C 80 00 02 */	lis r4, 0x2
/* 803D489C 003CA61C  7C 7F 1B 78 */	mr r31, r3
/* 803D48A0 003CA620  7F C3 F3 78 */	mr r3, r30
/* 803D48A4 003CA624  38 A0 00 20 */	li r5, 0x20
/* 803D48A8 003CA628  38 84 F1 E0 */	subi r4, r4, 0xe20
/* 803D48AC 003CA62C  4B E2 FE BD */	bl fn_80204768
/* 803D48B0 003CA630  90 7F 00 00 */	stw r3, 0x0(r31)
/* 803D48B4 003CA634  38 00 00 00 */	li r0, 0x0
/* 803D48B8 003CA638  90 1F 00 04 */	stw r0, 0x4(r31)
/* 803D48BC 003CA63C  90 1F 00 08 */	stw r0, 0x8(r31)
/* 803D48C0 003CA640  90 1F 00 0C */	stw r0, 0xc(r31)
/* 803D48C4 003CA644  48 00 18 8D */	bl fn_803D6150
/* 803D48C8 003CA648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D48CC 003CA64C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D48D0 003CA650  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803D48D4 003CA654  7C 08 03 A6 */	mtlr r0
/* 803D48D8 003CA658  38 21 00 10 */	addi r1, r1, 0x10
/* 803D48DC 003CA65C  4E 80 00 20 */	blr
.endfn fn_803D487C
