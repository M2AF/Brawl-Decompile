.include "macros.inc"
.file "auto_fn_8032EF00_text"

# 0x800091C8..0x800091D0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800091C8 | size: 0x8
.obj "@etb_800091C8", local
.hidden "@etb_800091C8"
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
.endobj "@etb_800091C8"

# 0x8000C07C..0x8000C088 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C07C | size: 0xC
.obj "@eti_8000C07C", local
.hidden "@eti_8000C07C"
	.4byte fn_8032EF00
	.4byte 0x00000034
	.4byte "@etb_800091C8"
.endobj "@eti_8000C07C"

# 0x8032EF00..0x8032EF34 | size: 0x34
.text
.balign 4

# .text:0x0 | 0x8032EF00 | size: 0x34
.fn fn_8032EF00, global
/* 8032EF00 00324C80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032EF04 00324C84  7C 08 02 A6 */	mflr r0
/* 8032EF08 00324C88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032EF0C 00324C8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032EF10 00324C90  7C 7F 1B 78 */	mr r31, r3
/* 8032EF14 00324C94  4B FF FC 49 */	bl fn_8032EB5C
/* 8032EF18 00324C98  7F E3 FB 78 */	mr r3, r31
/* 8032EF1C 00324C9C  48 00 00 19 */	bl fn_8032EF34
/* 8032EF20 00324CA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032EF24 00324CA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032EF28 00324CA8  7C 08 03 A6 */	mtlr r0
/* 8032EF2C 00324CAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8032EF30 00324CB0  4E 80 00 20 */	blr
.endfn fn_8032EF00
