.include "macros.inc"
.file "auto_fn_803D4848_text"

# 0x80009404..0x8000940C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009404 | size: 0x8
.obj "@etb_80009404", local
.hidden "@etb_80009404"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80009404"

# 0x8000C3A0..0x8000C3AC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C3A0 | size: 0xC
.obj "@eti_8000C3A0", local
.hidden "@eti_8000C3A0"
	.4byte fn_803D4848
	.4byte 0x00000034
	.4byte "@etb_80009404"
.endobj "@eti_8000C3A0"

# 0x803D4848..0x803D487C | size: 0x34
.text
.balign 4

# .text:0x0 | 0x803D4848 | size: 0x34
.fn fn_803D4848, global
/* 803D4848 003CA5C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D484C 003CA5CC  7C 08 02 A6 */	mflr r0
/* 803D4850 003CA5D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D4854 003CA5D4  4B FF 8A 71 */	bl fn_803CD2C4
/* 803D4858 003CA5D8  2C 03 00 00 */	cmpwi r3, 0x0
/* 803D485C 003CA5DC  41 82 00 10 */	beq .L_803D486C
/* 803D4860 003CA5E0  38 00 00 00 */	li r0, 0x0
/* 803D4864 003CA5E4  90 03 00 34 */	stw r0, 0x34(r3)
/* 803D4868 003CA5E8  90 03 00 38 */	stw r0, 0x38(r3)
.L_803D486C:
/* 803D486C 003CA5EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D4870 003CA5F0  7C 08 03 A6 */	mtlr r0
/* 803D4874 003CA5F4  38 21 00 10 */	addi r1, r1, 0x10
/* 803D4878 003CA5F8  4E 80 00 20 */	blr
.endfn fn_803D4848
