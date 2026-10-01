.include "macros.inc"
.file "auto_fn_802D1520_text"

# 0x80008458..0x80008460 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008458 | size: 0x8
.obj "@etb_80008458", local
.hidden "@etb_80008458"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008458"

# 0x8000B1F4..0x8000B200 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B1F4 | size: 0xC
.obj "@eti_8000B1F4", local
.hidden "@eti_8000B1F4"
	.4byte fn_802D1520
	.4byte 0x00000068
	.4byte "@etb_80008458"
.endobj "@eti_8000B1F4"

# 0x802D1520..0x802D1588 | size: 0x68
.text
.balign 4

# .text:0x0 | 0x802D1520 | size: 0x68
.fn fn_802D1520, global
/* 802D1520 002C72A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D1524 002C72A4  7C 08 02 A6 */	mflr r0
/* 802D1528 002C72A8  3C A0 80 41 */	lis r5, lbl_804105D8@ha
/* 802D152C 002C72AC  3C 60 80 53 */	lis r3, lbl_80532768@ha
/* 802D1530 002C72B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D1534 002C72B4  38 A5 05 D8 */	addi r5, r5, lbl_804105D8@l
/* 802D1538 002C72B8  3C 80 80 41 */	lis r4, lbl_80410600@ha
/* 802D153C 002C72BC  38 C0 00 02 */	li r6, 0x2
/* 802D1540 002C72C0  90 A1 00 08 */	stw r5, 0x8(r1)
/* 802D1544 002C72C4  3C A0 80 53 */	lis r5, lbl_80532730@ha
/* 802D1548 002C72C8  38 00 00 00 */	li r0, 0x0
/* 802D154C 002C72CC  38 63 27 68 */	addi r3, r3, lbl_80532768@l
/* 802D1550 002C72D0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 802D1554 002C72D4  38 84 06 00 */	addi r4, r4, lbl_80410600@l
/* 802D1558 002C72D8  38 A5 27 30 */	addi r5, r5, lbl_80532730@l
/* 802D155C 002C72DC  38 C0 00 30 */	li r6, 0x30
/* 802D1560 002C72E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 802D1564 002C72E4  38 E0 00 00 */	li r7, 0x0
/* 802D1568 002C72E8  39 00 00 00 */	li r8, 0x0
/* 802D156C 002C72EC  39 20 00 00 */	li r9, 0x0
/* 802D1570 002C72F0  39 40 00 00 */	li r10, 0x0
/* 802D1574 002C72F4  4B FA B2 95 */	bl fn_8027C808
/* 802D1578 002C72F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D157C 002C72FC  7C 08 03 A6 */	mtlr r0
/* 802D1580 002C7300  38 21 00 20 */	addi r1, r1, 0x20
/* 802D1584 002C7304  4E 80 00 20 */	blr
.endfn fn_802D1520

# 0x8040666C..0x80406670 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802D1520
