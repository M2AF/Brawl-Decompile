.include "macros.inc"
.file "auto_fn_802C6434_text"

# 0x80007EB8..0x80007EC0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007EB8 | size: 0x8
.obj "@etb_80007EB8", local
.hidden "@etb_80007EB8"
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
.endobj "@etb_80007EB8"

# 0x8000ABDC..0x8000ABE8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000ABDC | size: 0xC
.obj "@eti_8000ABDC", local
.hidden "@eti_8000ABDC"
	.4byte fn_802C6434
	.4byte 0x0000005C
	.4byte "@etb_80007EB8"
.endobj "@eti_8000ABDC"

# 0x802C6434..0x802C6490 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802C6434 | size: 0x5C
.fn fn_802C6434, global
/* 802C6434 002BC1B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C6438 002BC1B8  7C 08 02 A6 */	mflr r0
/* 802C643C 002BC1BC  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C6440 002BC1C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C6444 002BC1C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C6448 002BC1C8  7C 7F 1B 78 */	mr r31, r3
/* 802C644C 002BC1CC  41 82 00 2C */	beq .L_802C6478
/* 802C6450 002BC1D0  2C 04 00 00 */	cmpwi r4, 0x0
/* 802C6454 002BC1D4  40 81 00 24 */	ble .L_802C6478
/* 802C6458 002BC1D8  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802C645C 002BC1DC  7F E4 FB 78 */	mr r4, r31
/* 802C6460 002BC1E0  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802C6464 002BC1E4  38 C0 00 1D */	li r6, 0x1d
/* 802C6468 002BC1E8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C646C 002BC1EC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C6470 002BC1F0  7D 89 03 A6 */	mtctr r12
/* 802C6474 002BC1F4  4E 80 04 21 */	bctrl
.L_802C6478:
/* 802C6478 002BC1F8  7F E3 FB 78 */	mr r3, r31
/* 802C647C 002BC1FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C6480 002BC200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C6484 002BC204  7C 08 03 A6 */	mtlr r0
/* 802C6488 002BC208  38 21 00 10 */	addi r1, r1, 0x10
/* 802C648C 002BC20C  4E 80 00 20 */	blr
.endfn fn_802C6434
