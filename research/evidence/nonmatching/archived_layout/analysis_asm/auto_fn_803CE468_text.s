.include "macros.inc"
.file "auto_fn_803CE468_text"

# 0x800092EC..0x800092F4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800092EC | size: 0x8
.obj "@etb_800092EC", local
.hidden "@etb_800092EC"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800092EC"

# 0x8000C1FC..0x8000C208 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C1FC | size: 0xC
.obj "@eti_8000C1FC", local
.hidden "@eti_8000C1FC"
	.4byte fn_803CE468
	.4byte 0x00000048
	.4byte "@etb_800092EC"
.endobj "@eti_8000C1FC"

# 0x803CE468..0x803CE4B0 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x803CE468 | size: 0x48
.fn fn_803CE468, global
/* 803CE468 003C41E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CE46C 003C41EC  7C 08 02 A6 */	mflr r0
/* 803CE470 003C41F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CE474 003C41F4  4B FF ED FD */	bl fn_803CD270
/* 803CE478 003C41F8  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CE47C 003C41FC  40 82 00 0C */	bne .L_803CE488
/* 803CE480 003C4200  38 60 00 00 */	li r3, 0x0
/* 803CE484 003C4204  48 00 00 1C */	b .L_803CE4A0
.L_803CE488:
/* 803CE488 003C4208  4B FF EE 59 */	bl fn_803CD2E0
/* 803CE48C 003C420C  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CE490 003C4210  40 82 00 0C */	bne .L_803CE49C
/* 803CE494 003C4214  38 60 00 00 */	li r3, 0x0
/* 803CE498 003C4218  48 00 00 08 */	b .L_803CE4A0
.L_803CE49C:
/* 803CE49C 003C421C  80 63 00 98 */	lwz r3, 0x98(r3)
.L_803CE4A0:
/* 803CE4A0 003C4220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CE4A4 003C4224  7C 08 03 A6 */	mtlr r0
/* 803CE4A8 003C4228  38 21 00 10 */	addi r1, r1, 0x10
/* 803CE4AC 003C422C  4E 80 00 20 */	blr
.endfn fn_803CE468
