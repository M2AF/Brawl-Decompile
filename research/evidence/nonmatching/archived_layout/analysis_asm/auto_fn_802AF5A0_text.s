.include "macros.inc"
.file "auto_fn_802AF5A0_text"

# 0x80007140..0x80007148 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007140 | size: 0x8
.obj "@etb_80007140", local
.hidden "@etb_80007140"
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
.endobj "@etb_80007140"

# 0x8000A294..0x8000A2A0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A294 | size: 0xC
.obj "@eti_8000A294", local
.hidden "@eti_8000A294"
	.4byte fn_802AF5A0
	.4byte 0x0000005C
	.4byte "@etb_80007140"
.endobj "@eti_8000A294"

# 0x802AF5A0..0x802AF5FC | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802AF5A0 | size: 0x5C
.fn fn_802AF5A0, global
/* 802AF5A0 002A5320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AF5A4 002A5324  7C 08 02 A6 */	mflr r0
/* 802AF5A8 002A5328  2C 03 00 00 */	cmpwi r3, 0x0
/* 802AF5AC 002A532C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AF5B0 002A5330  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AF5B4 002A5334  7C 7F 1B 78 */	mr r31, r3
/* 802AF5B8 002A5338  41 82 00 2C */	beq .L_802AF5E4
/* 802AF5BC 002A533C  2C 04 00 00 */	cmpwi r4, 0x0
/* 802AF5C0 002A5340  40 81 00 24 */	ble .L_802AF5E4
/* 802AF5C4 002A5344  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802AF5C8 002A5348  7F E4 FB 78 */	mr r4, r31
/* 802AF5CC 002A534C  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802AF5D0 002A5350  38 C0 00 1D */	li r6, 0x1d
/* 802AF5D4 002A5354  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802AF5D8 002A5358  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802AF5DC 002A535C  7D 89 03 A6 */	mtctr r12
/* 802AF5E0 002A5360  4E 80 04 21 */	bctrl
.L_802AF5E4:
/* 802AF5E4 002A5364  7F E3 FB 78 */	mr r3, r31
/* 802AF5E8 002A5368  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AF5EC 002A536C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AF5F0 002A5370  7C 08 03 A6 */	mtlr r0
/* 802AF5F4 002A5374  38 21 00 10 */	addi r1, r1, 0x10
/* 802AF5F8 002A5378  4E 80 00 20 */	blr
.endfn fn_802AF5A0
