.include "macros.inc"
.file "auto_fn_802D6454_text"

# 0x8000860C..0x80008614 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000860C | size: 0x8
.obj "@etb_8000860C", local
.hidden "@etb_8000860C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000860C"

# 0x8000B464..0x8000B470 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B464 | size: 0xC
.obj "@eti_8000B464", local
.hidden "@eti_8000B464"
	.4byte fn_802D6454
	.4byte 0x0000005C
	.4byte "@etb_8000860C"
.endobj "@eti_8000B464"

# 0x802D6454..0x802D64B0 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802D6454 | size: 0x5C
.fn fn_802D6454, global
/* 802D6454 002CC1D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D6458 002CC1D8  7C 08 02 A6 */	mflr r0
/* 802D645C 002CC1DC  3C 60 80 53 */	lis r3, lbl_80532918@ha
/* 802D6460 002CC1E0  3C 80 80 41 */	lis r4, lbl_80410F88@ha
/* 802D6464 002CC1E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D6468 002CC1E8  38 00 00 00 */	li r0, 0x0
/* 802D646C 002CC1EC  3C A0 80 53 */	lis r5, lbl_80532730@ha
/* 802D6470 002CC1F0  38 63 29 18 */	addi r3, r3, lbl_80532918@l
/* 802D6474 002CC1F4  90 01 00 08 */	stw r0, 0x8(r1)
/* 802D6478 002CC1F8  38 84 0F 88 */	addi r4, r4, lbl_80410F88@l
/* 802D647C 002CC1FC  38 A5 27 30 */	addi r5, r5, lbl_80532730@l
/* 802D6480 002CC200  38 C0 00 10 */	li r6, 0x10
/* 802D6484 002CC204  90 01 00 0C */	stw r0, 0xc(r1)
/* 802D6488 002CC208  38 E0 00 00 */	li r7, 0x0
/* 802D648C 002CC20C  39 00 00 00 */	li r8, 0x0
/* 802D6490 002CC210  39 20 00 00 */	li r9, 0x0
/* 802D6494 002CC214  90 01 00 10 */	stw r0, 0x10(r1)
/* 802D6498 002CC218  39 40 00 00 */	li r10, 0x0
/* 802D649C 002CC21C  4B FA 63 6D */	bl fn_8027C808
/* 802D64A0 002CC220  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D64A4 002CC224  7C 08 03 A6 */	mtlr r0
/* 802D64A8 002CC228  38 21 00 20 */	addi r1, r1, 0x20
/* 802D64AC 002CC22C  4E 80 00 20 */	blr
.endfn fn_802D6454

# 0x8040669C..0x804066A0 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802D6454
