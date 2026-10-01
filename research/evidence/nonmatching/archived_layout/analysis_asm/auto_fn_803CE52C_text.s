.include "macros.inc"
.file "auto_fn_803CE52C_text"

# 0x800092FC..0x80009304 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800092FC | size: 0x8
.obj "@etb_800092FC", local
.hidden "@etb_800092FC"
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
.endobj "@etb_800092FC"

# 0x8000C214..0x8000C220 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C214 | size: 0xC
.obj "@eti_8000C214", local
.hidden "@eti_8000C214"
	.4byte fn_803CE52C
	.4byte 0x00000044
	.4byte "@etb_800092FC"
.endobj "@eti_8000C214"

# 0x803CE52C..0x803CE570 | size: 0x44
.text
.balign 4

# .text:0x0 | 0x803CE52C | size: 0x44
.fn fn_803CE52C, global
/* 803CE52C 003C42AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CE530 003C42B0  7C 08 02 A6 */	mflr r0
/* 803CE534 003C42B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CE538 003C42B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CE53C 003C42BC  3B E0 00 00 */	li r31, 0x0
.L_803CE540:
/* 803CE540 003C42C0  57 E3 04 3E */	clrlwi r3, r31, 16
/* 803CE544 003C42C4  4B FF EE 71 */	bl fn_803CD3B4
/* 803CE548 003C42C8  38 63 01 98 */	addi r3, r3, 0x198
/* 803CE54C 003C42CC  4B E0 84 A1 */	bl fn_801D69EC
/* 803CE550 003C42D0  3B FF 00 01 */	addi r31, r31, 0x1
/* 803CE554 003C42D4  28 1F 00 02 */	cmplwi r31, 0x2
/* 803CE558 003C42D8  41 80 FF E8 */	blt .L_803CE540
/* 803CE55C 003C42DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CE560 003C42E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CE564 003C42E4  7C 08 03 A6 */	mtlr r0
/* 803CE568 003C42E8  38 21 00 10 */	addi r1, r1, 0x10
/* 803CE56C 003C42EC  4E 80 00 20 */	blr
.endfn fn_803CE52C
