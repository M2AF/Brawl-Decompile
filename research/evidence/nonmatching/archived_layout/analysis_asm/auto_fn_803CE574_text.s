.include "macros.inc"
.file "auto_fn_803CE574_text"

# 0x80009304..0x8000930C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009304 | size: 0x8
.obj "@etb_80009304", local
.hidden "@etb_80009304"
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
.endobj "@etb_80009304"

# 0x8000C220..0x8000C22C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C220 | size: 0xC
.obj "@eti_8000C220", local
.hidden "@eti_8000C220"
	.4byte fn_803CE574
	.4byte 0x00000050
	.4byte "@etb_80009304"
.endobj "@eti_8000C220"

# 0x803CE574..0x803CE5C4 | size: 0x50
.text
.balign 4

# .text:0x0 | 0x803CE574 | size: 0x50
.fn fn_803CE574, global
/* 803CE574 003C42F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CE578 003C42F8  7C 08 02 A6 */	mflr r0
/* 803CE57C 003C42FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CE580 003C4300  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CE584 003C4304  93 C1 00 08 */	stw r30, 0x8(r1)
/* 803CE588 003C4308  4B E0 E9 89 */	bl fn_801DCF10
/* 803CE58C 003C430C  7C 7E 1B 78 */	mr r30, r3
/* 803CE590 003C4310  38 60 00 01 */	li r3, 0x1
/* 803CE594 003C4314  4B FF ED 85 */	bl fn_803CD318
/* 803CE598 003C4318  3B E0 00 06 */	li r31, 0x6
/* 803CE59C 003C431C  4B FF ED 89 */	bl fn_803CD324
/* 803CE5A0 003C4320  93 E3 1B 40 */	stw r31, 0x1b40(r3)
/* 803CE5A4 003C4324  7F C3 F3 78 */	mr r3, r30
/* 803CE5A8 003C4328  4B E0 E9 91 */	bl fn_801DCF38
/* 803CE5AC 003C432C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CE5B0 003C4330  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CE5B4 003C4334  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803CE5B8 003C4338  7C 08 03 A6 */	mtlr r0
/* 803CE5BC 003C433C  38 21 00 10 */	addi r1, r1, 0x10
/* 803CE5C0 003C4340  4E 80 00 20 */	blr
.endfn fn_803CE574
