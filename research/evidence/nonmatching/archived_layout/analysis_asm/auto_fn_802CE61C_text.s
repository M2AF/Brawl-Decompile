.include "macros.inc"
.file "auto_fn_802CE61C_text"

# 0x80008320..0x80008328 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008320 | size: 0x8
.obj "@etb_80008320", local
.hidden "@etb_80008320"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80008320"

# 0x8000B038..0x8000B044 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B038 | size: 0xC
.obj "@eti_8000B038", local
.hidden "@eti_8000B038"
	.4byte fn_802CE61C
	.4byte 0x00000084
	.4byte "@etb_80008320"
.endobj "@eti_8000B038"

# 0x802CE61C..0x802CE6A0 | size: 0x84
.text
.balign 4

# .text:0x0 | 0x802CE61C | size: 0x84
.fn fn_802CE61C, global
/* 802CE61C 002C439C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CE620 002C43A0  7C 08 02 A6 */	mflr r0
/* 802CE624 002C43A4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802CE628 002C43A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CE62C 002C43AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CE630 002C43B0  7C 7F 1B 78 */	mr r31, r3
/* 802CE634 002C43B4  41 82 00 54 */	beq .L_802CE688
/* 802CE638 002C43B8  3C 80 80 48 */	lis r4, lbl_804873E8@ha
/* 802CE63C 002C43BC  80 A3 00 04 */	lwz r5, 0x4(r3)
/* 802CE640 002C43C0  38 84 73 E8 */	addi r4, r4, lbl_804873E8@l
/* 802CE644 002C43C4  90 83 00 00 */	stw r4, 0x0(r3)
/* 802CE648 002C43C8  A0 05 00 04 */	lhz r0, 0x4(r5)
/* 802CE64C 002C43CC  2C 00 00 00 */	cmpwi r0, 0x0
/* 802CE650 002C43D0  41 82 00 38 */	beq .L_802CE688
/* 802CE654 002C43D4  A8 65 00 06 */	lha r3, 0x6(r5)
/* 802CE658 002C43D8  38 63 FF FF */	subi r3, r3, 0x1
/* 802CE65C 002C43DC  7C 60 07 35 */	extsh. r0, r3
/* 802CE660 002C43E0  B0 65 00 06 */	sth r3, 0x6(r5)
/* 802CE664 002C43E4  40 82 00 24 */	bne .L_802CE688
/* 802CE668 002C43E8  2C 05 00 00 */	cmpwi r5, 0x0
/* 802CE66C 002C43EC  41 82 00 1C */	beq .L_802CE688
/* 802CE670 002C43F0  81 85 00 00 */	lwz r12, 0x0(r5)
/* 802CE674 002C43F4  7C A3 2B 78 */	mr r3, r5
/* 802CE678 002C43F8  38 80 00 01 */	li r4, 0x1
/* 802CE67C 002C43FC  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802CE680 002C4400  7D 89 03 A6 */	mtctr r12
/* 802CE684 002C4404  4E 80 04 21 */	bctrl
.L_802CE688:
/* 802CE688 002C4408  7F E3 FB 78 */	mr r3, r31
/* 802CE68C 002C440C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CE690 002C4410  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CE694 002C4414  7C 08 03 A6 */	mtlr r0
/* 802CE698 002C4418  38 21 00 10 */	addi r1, r1, 0x10
/* 802CE69C 002C441C  4E 80 00 20 */	blr
.endfn fn_802CE61C
