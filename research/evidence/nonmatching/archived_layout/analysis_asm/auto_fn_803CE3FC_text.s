.include "macros.inc"
.file "auto_fn_803CE3FC_text"

# 0x800092E4..0x800092EC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800092E4 | size: 0x8
.obj "@etb_800092E4", local
.hidden "@etb_800092E4"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800092E4"

# 0x8000C1F0..0x8000C1FC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C1F0 | size: 0xC
.obj "@eti_8000C1F0", local
.hidden "@eti_8000C1F0"
	.4byte fn_803CE3FC
	.4byte 0x0000006C
	.4byte "@etb_800092E4"
.endobj "@eti_8000C1F0"

# 0x803CE3FC..0x803CE468 | size: 0x6C
.text
.balign 4

# .text:0x0 | 0x803CE3FC | size: 0x6C
.fn fn_803CE3FC, global
/* 803CE3FC 003C417C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CE400 003C4180  7C 08 02 A6 */	mflr r0
/* 803CE404 003C4184  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CE408 003C4188  4B FF EE 69 */	bl fn_803CD270
/* 803CE40C 003C418C  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CE410 003C4190  40 82 00 0C */	bne .L_803CE41C
/* 803CE414 003C4194  38 60 00 01 */	li r3, 0x1
/* 803CE418 003C4198  48 00 00 40 */	b .L_803CE458
.L_803CE41C:
/* 803CE41C 003C419C  48 00 01 55 */	bl fn_803CE570
/* 803CE420 003C41A0  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CE424 003C41A4  41 82 00 0C */	beq .L_803CE430
/* 803CE428 003C41A8  38 60 00 01 */	li r3, 0x1
/* 803CE42C 003C41AC  48 00 00 2C */	b .L_803CE458
.L_803CE430:
/* 803CE430 003C41B0  4B FF EE B1 */	bl fn_803CD2E0
/* 803CE434 003C41B4  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CE438 003C41B8  40 82 00 0C */	bne .L_803CE444
/* 803CE43C 003C41BC  38 60 00 01 */	li r3, 0x1
/* 803CE440 003C41C0  48 00 00 18 */	b .L_803CE458
.L_803CE444:
/* 803CE444 003C41C4  38 00 00 00 */	li r0, 0x0
/* 803CE448 003C41C8  90 03 00 98 */	stw r0, 0x98(r3)
/* 803CE44C 003C41CC  90 03 00 94 */	stw r0, 0x94(r3)
/* 803CE450 003C41D0  90 03 00 90 */	stw r0, 0x90(r3)
/* 803CE454 003C41D4  38 60 00 00 */	li r3, 0x0
.L_803CE458:
/* 803CE458 003C41D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CE45C 003C41DC  7C 08 03 A6 */	mtlr r0
/* 803CE460 003C41E0  38 21 00 10 */	addi r1, r1, 0x10
/* 803CE464 003C41E4  4E 80 00 20 */	blr
.endfn fn_803CE3FC
