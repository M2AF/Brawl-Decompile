.include "macros.inc"
.file "auto_fn_8032EB2C_text"

# 0x800091B0..0x800091B8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800091B0 | size: 0x8
.obj "@etb_800091B0", local
.hidden "@etb_800091B0"
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
.endobj "@etb_800091B0"

# 0x8000C058..0x8000C064 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C058 | size: 0xC
.obj "@eti_8000C058", local
.hidden "@eti_8000C058"
	.4byte fn_8032EB2C
	.4byte 0x00000030
	.4byte "@etb_800091B0"
.endobj "@eti_8000C058"

# 0x8032EB2C..0x8032EB5C | size: 0x30
.text
.balign 4

# .text:0x0 | 0x8032EB2C | size: 0x30
.fn fn_8032EB2C, global
/* 8032EB2C 003248AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032EB30 003248B0  7C 08 02 A6 */	mflr r0
/* 8032EB34 003248B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032EB38 003248B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032EB3C 003248BC  7C 7F 1B 78 */	mr r31, r3
/* 8032EB40 003248C0  48 00 00 1D */	bl fn_8032EB5C
/* 8032EB44 003248C4  38 7F 00 10 */	addi r3, r31, 0x10
/* 8032EB48 003248C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032EB4C 003248CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032EB50 003248D0  7C 08 03 A6 */	mtlr r0
/* 8032EB54 003248D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8032EB58 003248D8  4E 80 00 20 */	blr
.endfn fn_8032EB2C
