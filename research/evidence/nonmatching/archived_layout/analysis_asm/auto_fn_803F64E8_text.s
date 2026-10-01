.include "macros.inc"
.file "auto_fn_803F64E8_text"

# 0x80009644..0x8000964C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009644 | size: 0x8
.obj "@etb_80009644", local
.hidden "@etb_80009644"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80009644"

# 0x8000C6AC..0x8000C6B8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C6AC | size: 0xC
.obj "@eti_8000C6AC", local
.hidden "@eti_8000C6AC"
	.4byte fn_803F64E8
	.4byte 0x00000080
	.4byte "@etb_80009644"
.endobj "@eti_8000C6AC"

# 0x803F64E8..0x803F6568 | size: 0x80
.text
.balign 4

# .text:0x0 | 0x803F64E8 | size: 0x80
.fn fn_803F64E8, global
/* 803F64E8 003EC268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F64EC 003EC26C  3C 00 7F F0 */	lis r0, 0x7ff0
/* 803F64F0 003EC270  D8 21 00 08 */	stfd f1, 0x8(r1)
/* 803F64F4 003EC274  80 81 00 08 */	lwz r4, 0x8(r1)
/* 803F64F8 003EC278  54 83 00 56 */	rlwinm r3, r4, 0, 1, 11
/* 803F64FC 003EC27C  7C 03 00 00 */	cmpw r3, r0
/* 803F6500 003EC280  41 82 00 14 */	beq .L_803F6514
/* 803F6504 003EC284  40 80 00 58 */	bge .L_803F655C
/* 803F6508 003EC288  2C 03 00 00 */	cmpwi r3, 0x0
/* 803F650C 003EC28C  41 82 00 2C */	beq .L_803F6538
/* 803F6510 003EC290  48 00 00 4C */	b .L_803F655C
.L_803F6514:
/* 803F6514 003EC294  54 80 03 3F */	clrlwi. r0, r4, 12
/* 803F6518 003EC298  40 82 00 10 */	bne .L_803F6528
/* 803F651C 003EC29C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803F6520 003EC2A0  2C 00 00 00 */	cmpwi r0, 0x0
/* 803F6524 003EC2A4  41 82 00 0C */	beq .L_803F6530
.L_803F6528:
/* 803F6528 003EC2A8  38 60 00 01 */	li r3, 0x1
/* 803F652C 003EC2AC  48 00 00 34 */	b .L_803F6560
.L_803F6530:
/* 803F6530 003EC2B0  38 60 00 02 */	li r3, 0x2
/* 803F6534 003EC2B4  48 00 00 2C */	b .L_803F6560
.L_803F6538:
/* 803F6538 003EC2B8  54 80 03 3F */	clrlwi. r0, r4, 12
/* 803F653C 003EC2BC  40 82 00 10 */	bne .L_803F654C
/* 803F6540 003EC2C0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803F6544 003EC2C4  2C 00 00 00 */	cmpwi r0, 0x0
/* 803F6548 003EC2C8  41 82 00 0C */	beq .L_803F6554
.L_803F654C:
/* 803F654C 003EC2CC  38 60 00 05 */	li r3, 0x5
/* 803F6550 003EC2D0  48 00 00 10 */	b .L_803F6560
.L_803F6554:
/* 803F6554 003EC2D4  38 60 00 03 */	li r3, 0x3
/* 803F6558 003EC2D8  48 00 00 08 */	b .L_803F6560
.L_803F655C:
/* 803F655C 003EC2DC  38 60 00 04 */	li r3, 0x4
.L_803F6560:
/* 803F6560 003EC2E0  38 21 00 10 */	addi r1, r1, 0x10
/* 803F6564 003EC2E4  4E 80 00 20 */	blr
.endfn fn_803F64E8
