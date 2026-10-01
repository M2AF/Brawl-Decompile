.include "macros.inc"
.file "auto_fn_802C96B8_text"

# 0x80008098..0x800080A0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008098 | size: 0x8
.obj "@etb_80008098", local
.hidden "@etb_80008098"
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
.endobj "@etb_80008098"

# 0x8000AD74..0x8000AD80 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AD74 | size: 0xC
.obj "@eti_8000AD74", local
.hidden "@eti_8000AD74"
	.4byte fn_802C96B8
	.4byte 0x0000005C
	.4byte "@etb_80008098"
.endobj "@eti_8000AD74"

# 0x802C96B8..0x802C9714 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802C96B8 | size: 0x5C
.fn fn_802C96B8, global
/* 802C96B8 002BF438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C96BC 002BF43C  7C 08 02 A6 */	mflr r0
/* 802C96C0 002BF440  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C96C4 002BF444  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C96C8 002BF448  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C96CC 002BF44C  7C 7F 1B 78 */	mr r31, r3
/* 802C96D0 002BF450  41 82 00 2C */	beq .L_802C96FC
/* 802C96D4 002BF454  2C 04 00 00 */	cmpwi r4, 0x0
/* 802C96D8 002BF458  40 81 00 24 */	ble .L_802C96FC
/* 802C96DC 002BF45C  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802C96E0 002BF460  7F E4 FB 78 */	mr r4, r31
/* 802C96E4 002BF464  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802C96E8 002BF468  38 C0 00 1D */	li r6, 0x1d
/* 802C96EC 002BF46C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C96F0 002BF470  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C96F4 002BF474  7D 89 03 A6 */	mtctr r12
/* 802C96F8 002BF478  4E 80 04 21 */	bctrl
.L_802C96FC:
/* 802C96FC 002BF47C  7F E3 FB 78 */	mr r3, r31
/* 802C9700 002BF480  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C9704 002BF484  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C9708 002BF488  7C 08 03 A6 */	mtlr r0
/* 802C970C 002BF48C  38 21 00 10 */	addi r1, r1, 0x10
/* 802C9710 002BF490  4E 80 00 20 */	blr
.endfn fn_802C96B8
