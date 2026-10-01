.include "macros.inc"
.file "auto_fn_803D05C4_text"

# 0x80009384..0x8000938C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009384 | size: 0x8
.obj "@etb_80009384", local
.hidden "@etb_80009384"
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
.endobj "@etb_80009384"

# 0x8000C2E0..0x8000C2EC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C2E0 | size: 0xC
.obj "@eti_8000C2E0", local
.hidden "@eti_8000C2E0"
	.4byte fn_803D05C4
	.4byte 0x0000004C
	.4byte "@etb_80009384"
.endobj "@eti_8000C2E0"

# 0x803D05C4..0x803D0610 | size: 0x4C
.text
.balign 4

# .text:0x0 | 0x803D05C4 | size: 0x4C
.fn fn_803D05C4, global
/* 803D05C4 003C6344  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D05C8 003C6348  7C 08 02 A6 */	mflr r0
/* 803D05CC 003C634C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D05D0 003C6350  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D05D4 003C6354  7C 7F 1B 78 */	mr r31, r3
/* 803D05D8 003C6358  93 C1 00 08 */	stw r30, 0x8(r1)
/* 803D05DC 003C635C  7C 9E 23 78 */	mr r30, r4
/* 803D05E0 003C6360  7F C3 F3 78 */	mr r3, r30
/* 803D05E4 003C6364  7F E4 FB 78 */	mr r4, r31
/* 803D05E8 003C6368  4B E1 BB 9D */	bl fn_801EC184
/* 803D05EC 003C636C  7F C3 F3 78 */	mr r3, r30
/* 803D05F0 003C6370  38 9F 00 30 */	addi r4, r31, 0x30
/* 803D05F4 003C6374  4B E1 BF 21 */	bl fn_801EC514
/* 803D05F8 003C6378  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D05FC 003C637C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D0600 003C6380  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803D0604 003C6384  7C 08 03 A6 */	mtlr r0
/* 803D0608 003C6388  38 21 00 10 */	addi r1, r1, 0x10
/* 803D060C 003C638C  4E 80 00 20 */	blr
.endfn fn_803D05C4
