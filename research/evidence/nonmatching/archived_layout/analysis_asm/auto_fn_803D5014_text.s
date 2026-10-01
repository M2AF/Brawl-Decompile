.include "macros.inc"
.file "auto_fn_803D5014_text"

# 0x8000944C..0x80009454 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000944C | size: 0x8
.obj "@etb_8000944C", local
.hidden "@etb_8000944C"
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
.endobj "@etb_8000944C"

# 0x8000C40C..0x8000C418 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C40C | size: 0xC
.obj "@eti_8000C40C", local
.hidden "@eti_8000C40C"
	.4byte fn_803D5014
	.4byte 0x00000050
	.4byte "@etb_8000944C"
.endobj "@eti_8000C40C"

# 0x803D5014..0x803D5064 | size: 0x50
.text
.balign 4

# .text:0x0 | 0x803D5014 | size: 0x50
.fn fn_803D5014, global
/* 803D5014 003CAD94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D5018 003CAD98  7C 08 02 A6 */	mflr r0
/* 803D501C 003CAD9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D5020 003CADA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D5024 003CADA4  7C 9F 23 78 */	mr r31, r4
/* 803D5028 003CADA8  4B FF FD E5 */	bl fn_803D4E0C
/* 803D502C 003CADAC  38 7F 00 2E */	addi r3, r31, 0x2e
/* 803D5030 003CADB0  38 80 00 00 */	li r4, 0x0
/* 803D5034 003CADB4  38 A0 00 14 */	li r5, 0x14
/* 803D5038 003CADB8  4B C2 F4 05 */	bl memset
/* 803D503C 003CADBC  A0 1F 00 44 */	lhz r0, 0x44(r31)
/* 803D5040 003CADC0  38 60 00 00 */	li r3, 0x0
/* 803D5044 003CADC4  B0 7F 00 42 */	sth r3, 0x42(r31)
/* 803D5048 003CADC8  54 00 06 A0 */	rlwinm r0, r0, 0, 26, 16
/* 803D504C 003CADCC  B0 1F 00 44 */	sth r0, 0x44(r31)
/* 803D5050 003CADD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D5054 003CADD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D5058 003CADD8  7C 08 03 A6 */	mtlr r0
/* 803D505C 003CADDC  38 21 00 10 */	addi r1, r1, 0x10
/* 803D5060 003CADE0  4E 80 00 20 */	blr
.endfn fn_803D5014
