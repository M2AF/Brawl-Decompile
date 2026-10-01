.include "macros.inc"
.file "auto_fn_8028B5E0_text"

# 0x80006580..0x80006588 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006580 | size: 0x8
.obj "@etb_80006580", local
.hidden "@etb_80006580"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_80006580"

# 0x80009850..0x8000985C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009850 | size: 0xC
.obj "@eti_80009850", local
.hidden "@eti_80009850"
	.4byte fn_8028B5E0
	.4byte 0x0000008C
	.4byte "@etb_80006580"
.endobj "@eti_80009850"

# 0x8028B5E0..0x8028B66C | size: 0x8C
.text
.balign 4

# .text:0x0 | 0x8028B5E0 | size: 0x8C
.fn fn_8028B5E0, global
/* 8028B5E0 00281360  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028B5E4 00281364  7C 08 02 A6 */	mflr r0
/* 8028B5E8 00281368  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028B5EC 0028136C  88 03 00 02 */	lbz r0, 0x2(r3)
/* 8028B5F0 00281370  2C 00 00 00 */	cmpwi r0, 0x0
/* 8028B5F4 00281374  41 82 00 48 */	beq .L_8028B63C
/* 8028B5F8 00281378  C0 23 00 08 */	lfs f1, 0x8(r3)
/* 8028B5FC 0028137C  C0 02 AA 70 */	lfs f0, lbl_805A3D90@sda21(r0)
/* 8028B600 00281380  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8028B604 00281384  41 82 00 38 */	beq .L_8028B63C
/* 8028B608 00281388  88 03 00 03 */	lbz r0, 0x3(r3)
/* 8028B60C 0028138C  88 C3 00 04 */	lbz r6, 0x4(r3)
/* 8028B610 00281390  38 61 00 08 */	addi r3, r1, 0x8
/* 8028B614 00281394  54 08 20 36 */	slwi r8, r0, 4
/* 8028B618 00281398  80 04 00 44 */	lwz r0, 0x44(r4)
/* 8028B61C 0028139C  7D 05 42 14 */	add r8, r5, r8
/* 8028B620 002813A0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8028B624 002813A4  7C E5 3B 78 */	mr r5, r7
/* 8028B628 002813A8  91 01 00 08 */	stw r8, 0x8(r1)
/* 8028B62C 002813AC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8028B630 002813B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8028B634 002813B4  48 00 26 69 */	bl fn_8028DC9C
/* 8028B638 002813B8  48 00 00 24 */	b .L_8028B65C
.L_8028B63C:
/* 8028B63C 002813BC  3C 80 13 02 */	lis r4, 0x1302
/* 8028B640 002813C0  80 A7 00 08 */	lwz r5, 0x8(r7)
/* 8028B644 002813C4  38 04 00 08 */	addi r0, r4, 0x8
/* 8028B648 002813C8  88 63 00 04 */	lbz r3, 0x4(r3)
/* 8028B64C 002813CC  90 05 00 00 */	stw r0, 0x0(r5)
/* 8028B650 002813D0  38 05 00 08 */	addi r0, r5, 0x8
/* 8028B654 002813D4  98 65 00 04 */	stb r3, 0x4(r5)
/* 8028B658 002813D8  90 07 00 08 */	stw r0, 0x8(r7)
.L_8028B65C:
/* 8028B65C 002813DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028B660 002813E0  7C 08 03 A6 */	mtlr r0
/* 8028B664 002813E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8028B668 002813E8  4E 80 00 20 */	blr
.endfn fn_8028B5E0
