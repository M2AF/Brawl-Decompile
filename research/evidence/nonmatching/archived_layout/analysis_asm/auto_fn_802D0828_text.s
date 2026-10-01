.include "macros.inc"
.file "auto_fn_802D0828_text"

# 0x800083D0..0x800083D8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800083D0 | size: 0x8
.obj "@etb_800083D0", local
.hidden "@etb_800083D0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800083D0"

# 0x8000B128..0x8000B134 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B128 | size: 0xC
.obj "@eti_8000B128", local
.hidden "@eti_8000B128"
	.4byte fn_802D0828
	.4byte 0x00000068
	.4byte "@etb_800083D0"
.endobj "@eti_8000B128"

# 0x802D0828..0x802D0890 | size: 0x68
.text
.balign 4

# .text:0x0 | 0x802D0828 | size: 0x68
.fn fn_802D0828, global
/* 802D0828 002C65A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D082C 002C65AC  7C 08 02 A6 */	mflr r0
/* 802D0830 002C65B0  3C A0 80 41 */	lis r5, lbl_80410530@ha
/* 802D0834 002C65B4  3C 60 80 53 */	lis r3, lbl_80532708@ha
/* 802D0838 002C65B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D083C 002C65BC  38 A5 05 30 */	addi r5, r5, lbl_80410530@l
/* 802D0840 002C65C0  3C 80 80 41 */	lis r4, lbl_80410544@ha
/* 802D0844 002C65C4  38 C0 00 01 */	li r6, 0x1
/* 802D0848 002C65C8  90 A1 00 08 */	stw r5, 0x8(r1)
/* 802D084C 002C65CC  3C A0 80 53 */	lis r5, lbl_80532830@ha
/* 802D0850 002C65D0  38 00 00 00 */	li r0, 0x0
/* 802D0854 002C65D4  38 63 27 08 */	addi r3, r3, lbl_80532708@l
/* 802D0858 002C65D8  90 C1 00 0C */	stw r6, 0xc(r1)
/* 802D085C 002C65DC  38 84 05 44 */	addi r4, r4, lbl_80410544@l
/* 802D0860 002C65E0  38 A5 28 30 */	addi r5, r5, lbl_80532830@l
/* 802D0864 002C65E4  38 C0 00 14 */	li r6, 0x14
/* 802D0868 002C65E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802D086C 002C65EC  38 E0 00 00 */	li r7, 0x0
/* 802D0870 002C65F0  39 00 00 01 */	li r8, 0x1
/* 802D0874 002C65F4  39 20 00 00 */	li r9, 0x0
/* 802D0878 002C65F8  39 40 00 00 */	li r10, 0x0
/* 802D087C 002C65FC  4B FA BF 8D */	bl fn_8027C808
/* 802D0880 002C6600  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D0884 002C6604  7C 08 03 A6 */	mtlr r0
/* 802D0888 002C6608  38 21 00 20 */	addi r1, r1, 0x20
/* 802D088C 002C660C  4E 80 00 20 */	blr
.endfn fn_802D0828

# 0x80406660..0x80406664 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802D0828
