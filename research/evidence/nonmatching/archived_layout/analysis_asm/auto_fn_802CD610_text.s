.include "macros.inc"
.file "auto_fn_802CD610_text"

# 0x800082B8..0x800082C0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800082B8 | size: 0x8
.obj "@etb_800082B8", local
.hidden "@etb_800082B8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800082B8"

# 0x8000AF9C..0x8000AFA8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AF9C | size: 0xC
.obj "@eti_8000AF9C", local
.hidden "@eti_8000AF9C"
	.4byte fn_802CD610
	.4byte 0x0000005C
	.4byte "@etb_800082B8"
.endobj "@eti_8000AF9C"

# 0x802CD610..0x802CD66C | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802CD610 | size: 0x5C
.fn fn_802CD610, global
/* 802CD610 002C3390  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CD614 002C3394  7C 08 02 A6 */	mflr r0
/* 802CD618 002C3398  3C 60 80 53 */	lis r3, lbl_80532628@ha
/* 802CD61C 002C339C  3C 80 80 41 */	lis r4, lbl_80410220@ha
/* 802CD620 002C33A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CD624 002C33A4  38 00 00 00 */	li r0, 0x0
/* 802CD628 002C33A8  3C A0 80 53 */	lis r5, lbl_80532340@ha
/* 802CD62C 002C33AC  38 63 26 28 */	addi r3, r3, lbl_80532628@l
/* 802CD630 002C33B0  90 01 00 08 */	stw r0, 0x8(r1)
/* 802CD634 002C33B4  38 84 02 20 */	addi r4, r4, lbl_80410220@l
/* 802CD638 002C33B8  38 A5 23 40 */	addi r5, r5, lbl_80532340@l
/* 802CD63C 002C33BC  38 C0 00 18 */	li r6, 0x18
/* 802CD640 002C33C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 802CD644 002C33C4  38 E0 00 00 */	li r7, 0x0
/* 802CD648 002C33C8  39 00 00 04 */	li r8, 0x4
/* 802CD64C 002C33CC  39 20 00 00 */	li r9, 0x0
/* 802CD650 002C33D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 802CD654 002C33D4  39 40 00 00 */	li r10, 0x0
/* 802CD658 002C33D8  4B FA F1 B1 */	bl fn_8027C808
/* 802CD65C 002C33DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CD660 002C33E0  7C 08 03 A6 */	mtlr r0
/* 802CD664 002C33E4  38 21 00 20 */	addi r1, r1, 0x20
/* 802CD668 002C33E8  4E 80 00 20 */	blr
.endfn fn_802CD610

# 0x80406640..0x80406644 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802CD610
