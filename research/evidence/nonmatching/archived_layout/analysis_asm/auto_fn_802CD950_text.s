.include "macros.inc"
.file "auto_fn_802CD950_text"

# 0x800082F0..0x800082F8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800082F0 | size: 0x8
.obj "@etb_800082F0", local
.hidden "@etb_800082F0"
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
.endobj "@etb_800082F0"

# 0x8000AFF0..0x8000AFFC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AFF0 | size: 0xC
.obj "@eti_8000AFF0", local
.hidden "@eti_8000AFF0"
	.4byte fn_802CD950
	.4byte 0x00000060
	.4byte "@etb_800082F0"
.endobj "@eti_8000AFF0"

# 0x802CD950..0x802CD9B0 | size: 0x60
.text
.balign 4

# .text:0x0 | 0x802CD950 | size: 0x60
.fn fn_802CD950, global
/* 802CD950 002C36D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CD954 002C36D4  7C 08 02 A6 */	mflr r0
/* 802CD958 002C36D8  7C 66 1B 78 */	mr r6, r3
/* 802CD95C 002C36DC  38 A0 00 01 */	li r5, 0x1
/* 802CD960 002C36E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CD964 002C36E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CD968 002C36E8  7C 9F 23 78 */	mr r31, r4
/* 802CD96C 002C36EC  3C 80 80 41 */	lis r4, lbl_8041037C@ha
/* 802CD970 002C36F0  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 802CD974 002C36F4  7F E3 FB 78 */	mr r3, r31
/* 802CD978 002C36F8  38 84 03 7C */	addi r4, r4, lbl_8041037C@l
/* 802CD97C 002C36FC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802CD980 002C3700  7D 89 03 A6 */	mtctr r12
/* 802CD984 002C3704  4E 80 04 21 */	bctrl
/* 802CD988 002C3708  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 802CD98C 002C370C  7F E3 FB 78 */	mr r3, r31
/* 802CD990 002C3710  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802CD994 002C3714  7D 89 03 A6 */	mtctr r12
/* 802CD998 002C3718  4E 80 04 21 */	bctrl
/* 802CD99C 002C371C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CD9A0 002C3720  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CD9A4 002C3724  7C 08 03 A6 */	mtlr r0
/* 802CD9A8 002C3728  38 21 00 10 */	addi r1, r1, 0x10
/* 802CD9AC 002C372C  4E 80 00 20 */	blr
.endfn fn_802CD950
