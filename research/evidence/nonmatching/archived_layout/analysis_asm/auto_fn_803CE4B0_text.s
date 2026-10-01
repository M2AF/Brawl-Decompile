.include "macros.inc"
.file "auto_fn_803CE4B0_text"

# 0x800092F4..0x800092FC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800092F4 | size: 0x8
.obj "@etb_800092F4", local
.hidden "@etb_800092F4"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_800092F4"

# 0x8000C208..0x8000C214 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C208 | size: 0xC
.obj "@eti_8000C208", local
.hidden "@eti_8000C208"
	.4byte fn_803CE4B0
	.4byte 0x0000007C
	.4byte "@etb_800092F4"
.endobj "@eti_8000C208"

# 0x803CE4B0..0x803CE52C | size: 0x7C
.text
.balign 4

# .text:0x0 | 0x803CE4B0 | size: 0x7C
.fn fn_803CE4B0, global
/* 803CE4B0 003C4230  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CE4B4 003C4234  7C 08 02 A6 */	mflr r0
/* 803CE4B8 003C4238  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CE4BC 003C423C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803CE4C0 003C4240  3B E0 00 00 */	li r31, 0x0
/* 803CE4C4 003C4244  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803CE4C8 003C4248  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803CE4CC 003C424C  7C 7D 1B 78 */	mr r29, r3
.L_803CE4D0:
/* 803CE4D0 003C4250  57 E3 04 3E */	clrlwi r3, r31, 16
/* 803CE4D4 003C4254  4B FF EE E1 */	bl fn_803CD3B4
/* 803CE4D8 003C4258  7C 7E 1B 78 */	mr r30, r3
/* 803CE4DC 003C425C  38 80 00 00 */	li r4, 0x0
/* 803CE4E0 003C4260  38 A0 01 E0 */	li r5, 0x1e0
/* 803CE4E4 003C4264  4B C3 5F 59 */	bl memset
/* 803CE4E8 003C4268  7F A3 EB 78 */	mr r3, r29
/* 803CE4EC 003C426C  38 80 20 00 */	li r4, 0x2000
/* 803CE4F0 003C4270  38 A0 00 20 */	li r5, 0x20
/* 803CE4F4 003C4274  4B E3 62 75 */	bl fn_80204768
/* 803CE4F8 003C4278  90 7E 01 D4 */	stw r3, 0x1d4(r30)
/* 803CE4FC 003C427C  38 7E 01 98 */	addi r3, r30, 0x198
/* 803CE500 003C4280  4B E0 81 99 */	bl fn_801D6698
/* 803CE504 003C4284  3B FF 00 01 */	addi r31, r31, 0x1
/* 803CE508 003C4288  28 1F 00 02 */	cmplwi r31, 0x2
/* 803CE50C 003C428C  41 80 FF C4 */	blt .L_803CE4D0
/* 803CE510 003C4290  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CE514 003C4294  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803CE518 003C4298  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803CE51C 003C429C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803CE520 003C42A0  7C 08 03 A6 */	mtlr r0
/* 803CE524 003C42A4  38 21 00 20 */	addi r1, r1, 0x20
/* 803CE528 003C42A8  4E 80 00 20 */	blr
.endfn fn_803CE4B0
