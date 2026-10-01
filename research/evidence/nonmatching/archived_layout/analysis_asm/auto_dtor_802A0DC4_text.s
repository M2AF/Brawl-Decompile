.include "macros.inc"
.file "auto_dtor_802A0DC4_text"

# 0x8000680C..0x80006814 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000680C | size: 0x8
.obj "@etb_8000680C", local
.hidden "@etb_8000680C"
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
.endobj "@etb_8000680C"

# 0x80009BF8..0x80009C04 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009BF8 | size: 0xC
.obj "@eti_80009BF8", local
.hidden "@eti_80009BF8"
	.4byte dtor_802A0DC4
	.4byte 0x0000005C
	.4byte "@etb_8000680C"
.endobj "@eti_80009BF8"

# 0x802A0DC4..0x802A0E20 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802A0DC4 | size: 0x5C
.fn dtor_802A0DC4, global
/* 802A0DC4 00296B44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A0DC8 00296B48  7C 08 02 A6 */	mflr r0
/* 802A0DCC 00296B4C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A0DD0 00296B50  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A0DD4 00296B54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A0DD8 00296B58  7C 7F 1B 78 */	mr r31, r3
/* 802A0DDC 00296B5C  41 82 00 2C */	beq .L_802A0E08
/* 802A0DE0 00296B60  2C 04 00 00 */	cmpwi r4, 0x0
/* 802A0DE4 00296B64  40 81 00 24 */	ble .L_802A0E08
/* 802A0DE8 00296B68  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A0DEC 00296B6C  7F E4 FB 78 */	mr r4, r31
/* 802A0DF0 00296B70  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802A0DF4 00296B74  38 C0 00 1D */	li r6, 0x1d
/* 802A0DF8 00296B78  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A0DFC 00296B7C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A0E00 00296B80  7D 89 03 A6 */	mtctr r12
/* 802A0E04 00296B84  4E 80 04 21 */	bctrl
.L_802A0E08:
/* 802A0E08 00296B88  7F E3 FB 78 */	mr r3, r31
/* 802A0E0C 00296B8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A0E10 00296B90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A0E14 00296B94  7C 08 03 A6 */	mtlr r0
/* 802A0E18 00296B98  38 21 00 10 */	addi r1, r1, 0x10
/* 802A0E1C 00296B9C  4E 80 00 20 */	blr
.endfn dtor_802A0DC4
