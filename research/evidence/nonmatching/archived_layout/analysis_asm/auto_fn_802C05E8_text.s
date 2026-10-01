.include "macros.inc"
.file "auto_fn_802C05E8_text"

# 0x80007B74..0x80007B7C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007B74 | size: 0x8
.obj "@etb_80007B74", local
.hidden "@etb_80007B74"
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
.endobj "@etb_80007B74"

# 0x8000A90C..0x8000A918 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A90C | size: 0xC
.obj "@eti_8000A90C", local
.hidden "@eti_8000A90C"
	.4byte fn_802C05E8
	.4byte 0x0000005C
	.4byte "@etb_80007B74"
.endobj "@eti_8000A90C"

# 0x802C05E8..0x802C0644 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802C05E8 | size: 0x5C
.fn fn_802C05E8, global
/* 802C05E8 002B6368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C05EC 002B636C  7C 08 02 A6 */	mflr r0
/* 802C05F0 002B6370  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C05F4 002B6374  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C05F8 002B6378  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C05FC 002B637C  7C 7F 1B 78 */	mr r31, r3
/* 802C0600 002B6380  41 82 00 2C */	beq .L_802C062C
/* 802C0604 002B6384  2C 04 00 00 */	cmpwi r4, 0x0
/* 802C0608 002B6388  40 81 00 24 */	ble .L_802C062C
/* 802C060C 002B638C  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802C0610 002B6390  7F E4 FB 78 */	mr r4, r31
/* 802C0614 002B6394  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802C0618 002B6398  38 C0 00 1D */	li r6, 0x1d
/* 802C061C 002B639C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C0620 002B63A0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C0624 002B63A4  7D 89 03 A6 */	mtctr r12
/* 802C0628 002B63A8  4E 80 04 21 */	bctrl
.L_802C062C:
/* 802C062C 002B63AC  7F E3 FB 78 */	mr r3, r31
/* 802C0630 002B63B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C0634 002B63B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C0638 002B63B8  7C 08 03 A6 */	mtlr r0
/* 802C063C 002B63BC  38 21 00 10 */	addi r1, r1, 0x10
/* 802C0640 002B63C0  4E 80 00 20 */	blr
.endfn fn_802C05E8
