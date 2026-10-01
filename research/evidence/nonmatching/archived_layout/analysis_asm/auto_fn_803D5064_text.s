.include "macros.inc"
.file "auto_fn_803D5064_text"

# 0x80009454..0x8000945C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009454 | size: 0x8
.obj "@etb_80009454", local
.hidden "@etb_80009454"
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
.endobj "@etb_80009454"

# 0x8000C418..0x8000C424 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C418 | size: 0xC
.obj "@eti_8000C418", local
.hidden "@eti_8000C418"
	.4byte fn_803D5064
	.4byte 0x00000060
	.4byte "@etb_80009454"
.endobj "@eti_8000C418"

# 0x803D5064..0x803D50C4 | size: 0x60
.text
.balign 4

# .text:0x0 | 0x803D5064 | size: 0x60
.fn fn_803D5064, global
/* 803D5064 003CADE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D5068 003CADE8  7C 08 02 A6 */	mflr r0
/* 803D506C 003CADEC  38 A0 00 40 */	li r5, 0x40
/* 803D5070 003CADF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D5074 003CADF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D5078 003CADF8  7C 9F 23 78 */	mr r31, r4
/* 803D507C 003CADFC  38 80 00 00 */	li r4, 0x0
/* 803D5080 003CAE00  93 C1 00 08 */	stw r30, 0x8(r1)
/* 803D5084 003CAE04  7C 7E 1B 78 */	mr r30, r3
/* 803D5088 003CAE08  7F E3 FB 78 */	mr r3, r31
/* 803D508C 003CAE0C  4B C2 F3 B1 */	bl memset
/* 803D5090 003CAE10  7F E3 FB 78 */	mr r3, r31
/* 803D5094 003CAE14  7F C4 F3 78 */	mr r4, r30
/* 803D5098 003CAE18  38 A0 00 36 */	li r5, 0x36
/* 803D509C 003CAE1C  4B C2 F2 9D */	bl memcpy
/* 803D50A0 003CAE20  A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 803D50A4 003CAE24  54 00 06 E2 */	rlwinm r0, r0, 0, 27, 17
/* 803D50A8 003CAE28  B0 1F 00 00 */	sth r0, 0x0(r31)
/* 803D50AC 003CAE2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D50B0 003CAE30  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803D50B4 003CAE34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D50B8 003CAE38  7C 08 03 A6 */	mtlr r0
/* 803D50BC 003CAE3C  38 21 00 10 */	addi r1, r1, 0x10
/* 803D50C0 003CAE40  4E 80 00 20 */	blr
.endfn fn_803D5064
