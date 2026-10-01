.include "macros.inc"
.file "auto_fn_802A39F0_text"

# 0x80006A28..0x80006A30 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006A28 | size: 0x8
.obj "@etb_80006A28", local
.hidden "@etb_80006A28"
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
.endobj "@etb_80006A28"

# 0x80009D9C..0x80009DA8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009D9C | size: 0xC
.obj "@eti_80009D9C", local
.hidden "@eti_80009D9C"
	.4byte fn_802A39F0
	.4byte 0x0000005C
	.4byte "@etb_80006A28"
.endobj "@eti_80009D9C"

# 0x802A39F0..0x802A3A4C | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802A39F0 | size: 0x5C
.fn fn_802A39F0, global
/* 802A39F0 00299770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A39F4 00299774  7C 08 02 A6 */	mflr r0
/* 802A39F8 00299778  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A39FC 0029977C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A3A00 00299780  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A3A04 00299784  7C 7F 1B 78 */	mr r31, r3
/* 802A3A08 00299788  41 82 00 2C */	beq .L_802A3A34
/* 802A3A0C 0029978C  2C 04 00 00 */	cmpwi r4, 0x0
/* 802A3A10 00299790  40 81 00 24 */	ble .L_802A3A34
/* 802A3A14 00299794  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A3A18 00299798  7F E4 FB 78 */	mr r4, r31
/* 802A3A1C 0029979C  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802A3A20 002997A0  38 C0 00 1D */	li r6, 0x1d
/* 802A3A24 002997A4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A3A28 002997A8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A3A2C 002997AC  7D 89 03 A6 */	mtctr r12
/* 802A3A30 002997B0  4E 80 04 21 */	bctrl
.L_802A3A34:
/* 802A3A34 002997B4  7F E3 FB 78 */	mr r3, r31
/* 802A3A38 002997B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A3A3C 002997BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A3A40 002997C0  7C 08 03 A6 */	mtlr r0
/* 802A3A44 002997C4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A3A48 002997C8  4E 80 00 20 */	blr
.endfn fn_802A39F0
