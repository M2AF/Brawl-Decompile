.include "macros.inc"
.file "auto_fn_803CD32C_text"

# 0x8000926C..0x80009274 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000926C | size: 0x8
.obj "@etb_8000926C", local
.hidden "@etb_8000926C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000926C"

# 0x8000C13C..0x8000C148 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C13C | size: 0xC
.obj "@eti_8000C13C", local
.hidden "@eti_8000C13C"
	.4byte fn_803CD32C
	.4byte 0x00000088
	.4byte "@etb_8000926C"
.endobj "@eti_8000C13C"

# 0x803CD32C..0x803CD3B4 | size: 0x88
.text
.balign 4

# .text:0x0 | 0x803CD32C | size: 0x88
.fn fn_803CD32C, global
/* 803CD32C 003C30AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CD330 003C30B0  7C 08 02 A6 */	mflr r0
/* 803CD334 003C30B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CD338 003C30B8  80 0D CE 30 */	lwz r0, lbl_805A1250@sda21(r0)
/* 803CD33C 003C30BC  2C 00 00 00 */	cmpwi r0, 0x0
/* 803CD340 003C30C0  40 82 00 0C */	bne .L_803CD34C
/* 803CD344 003C30C4  80 6D BA 80 */	lwz r3, lbl_8059FEA0@sda21(r0)
/* 803CD348 003C30C8  48 00 00 5C */	b .L_803CD3A4
.L_803CD34C:
/* 803CD34C 003C30CC  48 00 12 25 */	bl fn_803CE570
/* 803CD350 003C30D0  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CD354 003C30D4  41 82 00 0C */	beq .L_803CD360
/* 803CD358 003C30D8  38 60 00 06 */	li r3, 0x6
/* 803CD35C 003C30DC  48 00 00 48 */	b .L_803CD3A4
.L_803CD360:
/* 803CD360 003C30E0  80 AD CE 30 */	lwz r5, lbl_805A1250@sda21(r0)
/* 803CD364 003C30E4  38 6D CE 38 */	li r3, lbl_805A1258@sda21
/* 803CD368 003C30E8  2C 05 00 00 */	cmpwi r5, 0x0
/* 803CD36C 003C30EC  41 82 00 08 */	beq .L_803CD374
/* 803CD370 003C30F0  38 65 1B 3C */	addi r3, r5, 0x1b3c
.L_803CD374:
/* 803CD374 003C30F4  88 83 00 00 */	lbz r4, 0x0(r3)
/* 803CD378 003C30F8  38 60 00 01 */	li r3, 0x1
/* 803CD37C 003C30FC  54 80 07 7B */	rlwinm. r0, r4, 0, 29, 29
/* 803CD380 003C3100  40 82 00 10 */	bne .L_803CD390
/* 803CD384 003C3104  54 80 07 39 */	rlwinm. r0, r4, 0, 28, 28
/* 803CD388 003C3108  40 82 00 08 */	bne .L_803CD390
/* 803CD38C 003C310C  38 60 00 00 */	li r3, 0x0
.L_803CD390:
/* 803CD390 003C3110  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CD394 003C3114  41 82 00 0C */	beq .L_803CD3A0
/* 803CD398 003C3118  38 60 00 05 */	li r3, 0x5
/* 803CD39C 003C311C  48 00 00 08 */	b .L_803CD3A4
.L_803CD3A0:
/* 803CD3A0 003C3120  80 65 1B 40 */	lwz r3, 0x1b40(r5)
.L_803CD3A4:
/* 803CD3A4 003C3124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CD3A8 003C3128  7C 08 03 A6 */	mtlr r0
/* 803CD3AC 003C312C  38 21 00 10 */	addi r1, r1, 0x10
/* 803CD3B0 003C3130  4E 80 00 20 */	blr
.endfn fn_803CD32C
