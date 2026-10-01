.include "macros.inc"
.file "auto_fn_803CE5C4_text"

# 0x8000930C..0x80009314 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000930C | size: 0x8
.obj "@etb_8000930C", local
.hidden "@etb_8000930C"
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
.endobj "@etb_8000930C"

# 0x8000C22C..0x8000C238 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C22C | size: 0xC
.obj "@eti_8000C22C", local
.hidden "@eti_8000C22C"
	.4byte fn_803CE5C4
	.4byte 0x0000007C
	.4byte "@etb_8000930C"
.endobj "@eti_8000C22C"

# 0x803CE5C4..0x803CE640 | size: 0x7C
.text
.balign 4

# .text:0x0 | 0x803CE5C4 | size: 0x7C
.fn fn_803CE5C4, global
/* 803CE5C4 003C4344  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CE5C8 003C4348  7C 08 02 A6 */	mflr r0
/* 803CE5CC 003C434C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CE5D0 003C4350  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CE5D4 003C4354  7C 7F 1B 78 */	mr r31, r3
/* 803CE5D8 003C4358  93 C1 00 08 */	stw r30, 0x8(r1)
/* 803CE5DC 003C435C  4B FF ED 49 */	bl fn_803CD324
/* 803CE5E0 003C4360  80 03 1B 40 */	lwz r0, 0x1b40(r3)
/* 803CE5E4 003C4364  2C 00 00 06 */	cmpwi r0, 0x6
/* 803CE5E8 003C4368  41 82 00 14 */	beq .L_803CE5FC
/* 803CE5EC 003C436C  40 80 00 3C */	bge .L_803CE628
/* 803CE5F0 003C4370  2C 00 00 00 */	cmpwi r0, 0x0
/* 803CE5F4 003C4374  41 82 00 08 */	beq .L_803CE5FC
/* 803CE5F8 003C4378  48 00 00 30 */	b .L_803CE628
.L_803CE5FC:
/* 803CE5FC 003C437C  4B E0 E9 15 */	bl fn_801DCF10
/* 803CE600 003C4380  7C 7E 1B 78 */	mr r30, r3
/* 803CE604 003C4384  38 60 00 00 */	li r3, 0x0
/* 803CE608 003C4388  4B FF ED 11 */	bl fn_803CD318
/* 803CE60C 003C438C  4B FF ED 19 */	bl fn_803CD324
/* 803CE610 003C4390  93 E3 1B 40 */	stw r31, 0x1b40(r3)
/* 803CE614 003C4394  3B E0 00 00 */	li r31, 0x0
/* 803CE618 003C4398  4B FF ED 0D */	bl fn_803CD324
/* 803CE61C 003C439C  93 E3 1B 48 */	stw r31, 0x1b48(r3)
/* 803CE620 003C43A0  7F C3 F3 78 */	mr r3, r30
/* 803CE624 003C43A4  4B E0 E9 15 */	bl fn_801DCF38
.L_803CE628:
/* 803CE628 003C43A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CE62C 003C43AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CE630 003C43B0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803CE634 003C43B4  7C 08 03 A6 */	mtlr r0
/* 803CE638 003C43B8  38 21 00 10 */	addi r1, r1, 0x10
/* 803CE63C 003C43BC  4E 80 00 20 */	blr
.endfn fn_803CE5C4
