.include "macros.inc"
.file "auto_fn_802AF5FC_text"

# 0x80007148..0x80007150 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007148 | size: 0x8
.obj "@etb_80007148", local
.hidden "@etb_80007148"
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
.endobj "@etb_80007148"

# 0x8000A2A0..0x8000A2AC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A2A0 | size: 0xC
.obj "@eti_8000A2A0", local
.hidden "@eti_8000A2A0"
	.4byte fn_802AF5FC
	.4byte 0x0000009C
	.4byte "@etb_80007148"
.endobj "@eti_8000A2A0"

# 0x802AF5FC..0x802AF698 | size: 0x9C
.text
.balign 4

# .text:0x0 | 0x802AF5FC | size: 0x9C
.fn fn_802AF5FC, global
/* 802AF5FC 002A537C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AF600 002A5380  7C 08 02 A6 */	mflr r0
/* 802AF604 002A5384  2C 03 00 00 */	cmpwi r3, 0x0
/* 802AF608 002A5388  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AF60C 002A538C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AF610 002A5390  7C 9F 23 78 */	mr r31, r4
/* 802AF614 002A5394  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802AF618 002A5398  7C 7E 1B 78 */	mr r30, r3
/* 802AF61C 002A539C  41 82 00 60 */	beq .L_802AF67C
/* 802AF620 002A53A0  34 03 00 10 */	addic. r0, r3, 0x10
/* 802AF624 002A53A4  41 82 00 30 */	beq .L_802AF654
/* 802AF628 002A53A8  41 82 00 2C */	beq .L_802AF654
/* 802AF62C 002A53AC  41 82 00 28 */	beq .L_802AF654
/* 802AF630 002A53B0  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802AF634 002A53B4  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802AF638 002A53B8  40 82 00 1C */	bne .L_802AF654
/* 802AF63C 002A53BC  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 802AF640 002A53C0  38 C0 00 15 */	li r6, 0x15
/* 802AF644 002A53C4  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802AF648 002A53C8  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 802AF64C 002A53CC  54 05 10 3A */	slwi r5, r0, 2
/* 802AF650 002A53D0  4B FC F4 6D */	bl fn_8027EABC
.L_802AF654:
/* 802AF654 002A53D4  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802AF658 002A53D8  40 81 00 24 */	ble .L_802AF67C
/* 802AF65C 002A53DC  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802AF660 002A53E0  7F C4 F3 78 */	mr r4, r30
/* 802AF664 002A53E4  A0 BE 00 04 */	lhz r5, 0x4(r30)
/* 802AF668 002A53E8  38 C0 00 1D */	li r6, 0x1d
/* 802AF66C 002A53EC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802AF670 002A53F0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802AF674 002A53F4  7D 89 03 A6 */	mtctr r12
/* 802AF678 002A53F8  4E 80 04 21 */	bctrl
.L_802AF67C:
/* 802AF67C 002A53FC  7F C3 F3 78 */	mr r3, r30
/* 802AF680 002A5400  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AF684 002A5404  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802AF688 002A5408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AF68C 002A540C  7C 08 03 A6 */	mtlr r0
/* 802AF690 002A5410  38 21 00 10 */	addi r1, r1, 0x10
/* 802AF694 002A5414  4E 80 00 20 */	blr
.endfn fn_802AF5FC
