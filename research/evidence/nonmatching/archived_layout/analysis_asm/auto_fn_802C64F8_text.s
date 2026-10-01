.include "macros.inc"
.file "auto_fn_802C64F8_text"

# 0x80007EC8..0x80007ED0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007EC8 | size: 0x8
.obj "@etb_80007EC8", local
.hidden "@etb_80007EC8"
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
.endobj "@etb_80007EC8"

# 0x8000ABF4..0x8000AC00 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000ABF4 | size: 0xC
.obj "@eti_8000ABF4", local
.hidden "@eti_8000ABF4"
	.4byte fn_802C64F8
	.4byte 0x00000078
	.4byte "@etb_80007EC8"
.endobj "@eti_8000ABF4"

# 0x802C64F8..0x802C6570 | size: 0x78
.text
.balign 4

# .text:0x0 | 0x802C64F8 | size: 0x78
.fn fn_802C64F8, global
/* 802C64F8 002BC278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C64FC 002BC27C  7C 08 02 A6 */	mflr r0
/* 802C6500 002BC280  38 80 00 10 */	li r4, 0x10
/* 802C6504 002BC284  38 A0 00 1D */	li r5, 0x1d
/* 802C6508 002BC288  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C650C 002BC28C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C6510 002BC290  7C DF 33 78 */	mr r31, r6
/* 802C6514 002BC294  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802C6518 002BC298  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C651C 002BC29C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802C6520 002BC2A0  7D 89 03 A6 */	mtctr r12
/* 802C6524 002BC2A4  4E 80 04 21 */	bctrl
/* 802C6528 002BC2A8  38 00 00 10 */	li r0, 0x10
/* 802C652C 002BC2AC  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C6530 002BC2B0  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802C6534 002BC2B4  41 82 00 28 */	beq .L_802C655C
/* 802C6538 002BC2B8  38 00 00 01 */	li r0, 0x1
/* 802C653C 002BC2BC  3C A0 80 48 */	lis r5, lbl_804870B0@ha
/* 802C6540 002BC2C0  B0 03 00 06 */	sth r0, 0x6(r3)
/* 802C6544 002BC2C4  3C 80 00 01 */	lis r4, 0x1
/* 802C6548 002BC2C8  38 A5 70 B0 */	addi r5, r5, lbl_804870B0@l
/* 802C654C 002BC2CC  93 E3 00 08 */	stw r31, 0x8(r3)
/* 802C6550 002BC2D0  38 04 FF FF */	subi r0, r4, 0x1
/* 802C6554 002BC2D4  90 A3 00 00 */	stw r5, 0x0(r3)
/* 802C6558 002BC2D8  B0 03 00 0C */	sth r0, 0xc(r3)
.L_802C655C:
/* 802C655C 002BC2DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C6560 002BC2E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C6564 002BC2E4  7C 08 03 A6 */	mtlr r0
/* 802C6568 002BC2E8  38 21 00 10 */	addi r1, r1, 0x10
/* 802C656C 002BC2EC  4E 80 00 20 */	blr
.endfn fn_802C64F8
