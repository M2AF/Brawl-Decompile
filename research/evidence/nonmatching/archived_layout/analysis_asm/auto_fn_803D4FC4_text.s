.include "macros.inc"
.file "auto_fn_803D4FC4_text"

# 0x80009444..0x8000944C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009444 | size: 0x8
.obj "@etb_80009444", local
.hidden "@etb_80009444"
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
.endobj "@etb_80009444"

# 0x8000C400..0x8000C40C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C400 | size: 0xC
.obj "@eti_8000C400", local
.hidden "@eti_8000C400"
	.4byte fn_803D4FC4
	.4byte 0x00000050
	.4byte "@etb_80009444"
.endobj "@eti_8000C400"

# 0x803D4FC4..0x803D5014 | size: 0x50
.text
.balign 4

# .text:0x0 | 0x803D4FC4 | size: 0x50
.fn fn_803D4FC4, global
/* 803D4FC4 003CAD44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D4FC8 003CAD48  7C 08 02 A6 */	mflr r0
/* 803D4FCC 003CAD4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D4FD0 003CAD50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D4FD4 003CAD54  7C 9F 23 78 */	mr r31, r4
/* 803D4FD8 003CAD58  93 C1 00 08 */	stw r30, 0x8(r1)
/* 803D4FDC 003CAD5C  7C 7E 1B 78 */	mr r30, r3
/* 803D4FE0 003CAD60  4B FF FE 2D */	bl fn_803D4E0C
/* 803D4FE4 003CAD64  38 7F 00 2E */	addi r3, r31, 0x2e
/* 803D4FE8 003CAD68  38 9E 00 36 */	addi r4, r30, 0x36
/* 803D4FEC 003CAD6C  38 A0 00 14 */	li r5, 0x14
/* 803D4FF0 003CAD70  4B C2 F3 49 */	bl memcpy
/* 803D4FF4 003CAD74  38 00 00 00 */	li r0, 0x0
/* 803D4FF8 003CAD78  B0 1F 00 42 */	sth r0, 0x42(r31)
/* 803D4FFC 003CAD7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D5000 003CAD80  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803D5004 003CAD84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D5008 003CAD88  7C 08 03 A6 */	mtlr r0
/* 803D500C 003CAD8C  38 21 00 10 */	addi r1, r1, 0x10
/* 803D5010 003CAD90  4E 80 00 20 */	blr
.endfn fn_803D4FC4
