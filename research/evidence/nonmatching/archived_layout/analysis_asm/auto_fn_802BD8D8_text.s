.include "macros.inc"
.file "auto_fn_802BD8D8_text"

# 0x80007A80..0x80007A88 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007A80 | size: 0x8
.obj "@etb_80007A80", local
.hidden "@etb_80007A80"
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
.endobj "@etb_80007A80"

# 0x8000A858..0x8000A864 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A858 | size: 0xC
.obj "@eti_8000A858", local
.hidden "@eti_8000A858"
	.4byte fn_802BD8D8
	.4byte 0x0000005C
	.4byte "@etb_80007A80"
.endobj "@eti_8000A858"

# 0x802BD8D8..0x802BD934 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802BD8D8 | size: 0x5C
.fn fn_802BD8D8, global
/* 802BD8D8 002B3658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BD8DC 002B365C  7C 08 02 A6 */	mflr r0
/* 802BD8E0 002B3660  2C 03 00 00 */	cmpwi r3, 0x0
/* 802BD8E4 002B3664  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BD8E8 002B3668  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BD8EC 002B366C  7C 7F 1B 78 */	mr r31, r3
/* 802BD8F0 002B3670  41 82 00 2C */	beq .L_802BD91C
/* 802BD8F4 002B3674  2C 04 00 00 */	cmpwi r4, 0x0
/* 802BD8F8 002B3678  40 81 00 24 */	ble .L_802BD91C
/* 802BD8FC 002B367C  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802BD900 002B3680  7F E4 FB 78 */	mr r4, r31
/* 802BD904 002B3684  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802BD908 002B3688  38 C0 00 1D */	li r6, 0x1d
/* 802BD90C 002B368C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802BD910 002B3690  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802BD914 002B3694  7D 89 03 A6 */	mtctr r12
/* 802BD918 002B3698  4E 80 04 21 */	bctrl
.L_802BD91C:
/* 802BD91C 002B369C  7F E3 FB 78 */	mr r3, r31
/* 802BD920 002B36A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BD924 002B36A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BD928 002B36A8  7C 08 03 A6 */	mtlr r0
/* 802BD92C 002B36AC  38 21 00 10 */	addi r1, r1, 0x10
/* 802BD930 002B36B0  4E 80 00 20 */	blr
.endfn fn_802BD8D8
