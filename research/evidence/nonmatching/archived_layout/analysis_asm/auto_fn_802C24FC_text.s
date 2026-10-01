.include "macros.inc"
.file "auto_fn_802C24FC_text"

# 0x80007D10..0x80007D18 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007D10 | size: 0x8
.obj "@etb_80007D10", local
.hidden "@etb_80007D10"
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
.endobj "@etb_80007D10"

# 0x8000AA80..0x8000AA8C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AA80 | size: 0xC
.obj "@eti_8000AA80", local
.hidden "@eti_8000AA80"
	.4byte fn_802C24FC
	.4byte 0x0000005C
	.4byte "@etb_80007D10"
.endobj "@eti_8000AA80"

# 0x802C24FC..0x802C2558 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802C24FC | size: 0x5C
.fn fn_802C24FC, global
/* 802C24FC 002B827C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C2500 002B8280  7C 08 02 A6 */	mflr r0
/* 802C2504 002B8284  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C2508 002B8288  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C250C 002B828C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C2510 002B8290  7C 7F 1B 78 */	mr r31, r3
/* 802C2514 002B8294  41 82 00 2C */	beq .L_802C2540
/* 802C2518 002B8298  2C 04 00 00 */	cmpwi r4, 0x0
/* 802C251C 002B829C  40 81 00 24 */	ble .L_802C2540
/* 802C2520 002B82A0  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802C2524 002B82A4  7F E4 FB 78 */	mr r4, r31
/* 802C2528 002B82A8  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802C252C 002B82AC  38 C0 00 1D */	li r6, 0x1d
/* 802C2530 002B82B0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C2534 002B82B4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C2538 002B82B8  7D 89 03 A6 */	mtctr r12
/* 802C253C 002B82BC  4E 80 04 21 */	bctrl
.L_802C2540:
/* 802C2540 002B82C0  7F E3 FB 78 */	mr r3, r31
/* 802C2544 002B82C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C2548 002B82C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C254C 002B82CC  7C 08 03 A6 */	mtlr r0
/* 802C2550 002B82D0  38 21 00 10 */	addi r1, r1, 0x10
/* 802C2554 002B82D4  4E 80 00 20 */	blr
.endfn fn_802C24FC
