.include "macros.inc"
.file "auto_fn_802CBF38_text"

# 0x80008240..0x80008248 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008240 | size: 0x8
.obj "@etb_80008240", local
.hidden "@etb_80008240"
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
.endobj "@etb_80008240"

# 0x8000AEE8..0x8000AEF4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AEE8 | size: 0xC
.obj "@eti_8000AEE8", local
.hidden "@eti_8000AEE8"
	.4byte fn_802CBF38
	.4byte 0x000000A4
	.4byte "@etb_80008240"
.endobj "@eti_8000AEE8"

# 0x802CBF38..0x802CBFDC | size: 0xA4
.text
.balign 4

# .text:0x0 | 0x802CBF38 | size: 0xA4
.fn fn_802CBF38, global
/* 802CBF38 002C1CB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CBF3C 002C1CBC  7C 08 02 A6 */	mflr r0
/* 802CBF40 002C1CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CBF44 002C1CC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CBF48 002C1CC8  7C 7F 1B 78 */	mr r31, r3
/* 802CBF4C 002C1CCC  80 83 1C 24 */	lwz r4, 0x1c24(r3)
/* 802CBF50 002C1CD0  2C 04 00 00 */	cmpwi r4, 0x0
/* 802CBF54 002C1CD4  41 82 00 74 */	beq .L_802CBFC8
/* 802CBF58 002C1CD8  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802CBF5C 002C1CDC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CBF60 002C1CE0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802CBF64 002C1CE4  7D 89 03 A6 */	mtctr r12
/* 802CBF68 002C1CE8  4E 80 04 21 */	bctrl
/* 802CBF6C 002C1CEC  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802CBF70 002C1CF0  80 9F 1C 28 */	lwz r4, 0x1c28(r31)
/* 802CBF74 002C1CF4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CBF78 002C1CF8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802CBF7C 002C1CFC  7D 89 03 A6 */	mtctr r12
/* 802CBF80 002C1D00  4E 80 04 21 */	bctrl
/* 802CBF84 002C1D04  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802CBF88 002C1D08  80 9F 1C 2C */	lwz r4, 0x1c2c(r31)
/* 802CBF8C 002C1D0C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CBF90 002C1D10  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802CBF94 002C1D14  7D 89 03 A6 */	mtctr r12
/* 802CBF98 002C1D18  4E 80 04 21 */	bctrl
/* 802CBF9C 002C1D1C  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802CBFA0 002C1D20  80 9F 1C 30 */	lwz r4, 0x1c30(r31)
/* 802CBFA4 002C1D24  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CBFA8 002C1D28  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802CBFAC 002C1D2C  7D 89 03 A6 */	mtctr r12
/* 802CBFB0 002C1D30  4E 80 04 21 */	bctrl
/* 802CBFB4 002C1D34  38 00 00 00 */	li r0, 0x0
/* 802CBFB8 002C1D38  90 1F 1C 24 */	stw r0, 0x1c24(r31)
/* 802CBFBC 002C1D3C  90 1F 1C 28 */	stw r0, 0x1c28(r31)
/* 802CBFC0 002C1D40  90 1F 1C 2C */	stw r0, 0x1c2c(r31)
/* 802CBFC4 002C1D44  90 1F 1C 30 */	stw r0, 0x1c30(r31)
.L_802CBFC8:
/* 802CBFC8 002C1D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CBFCC 002C1D4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CBFD0 002C1D50  7C 08 03 A6 */	mtlr r0
/* 802CBFD4 002C1D54  38 21 00 10 */	addi r1, r1, 0x10
/* 802CBFD8 002C1D58  4E 80 00 20 */	blr
.endfn fn_802CBF38
