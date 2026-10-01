.include "macros.inc"
.file "auto_fn_802A4C14_text"

# 0x80006ACC..0x80006AD4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006ACC | size: 0x8
.obj "@etb_80006ACC", local
.hidden "@etb_80006ACC"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006ACC"

# 0x80009E20..0x80009E2C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009E20 | size: 0xC
.obj "@eti_80009E20", local
.hidden "@eti_80009E20"
	.4byte fn_802A4C14
	.4byte 0x0000002C
	.4byte "@etb_80006ACC"
.endobj "@eti_80009E20"

# 0x802A4C14..0x802A4C40 | size: 0x2C
.text
.balign 4

# .text:0x0 | 0x802A4C14 | size: 0x2C
.fn fn_802A4C14, global
/* 802A4C14 0029A994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A4C18 0029A998  7C 08 02 A6 */	mflr r0
/* 802A4C1C 0029A99C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A4C20 0029A9A0  38 00 00 00 */	li r0, 0x0
/* 802A4C24 0029A9A4  38 A1 00 08 */	addi r5, r1, 0x8
/* 802A4C28 0029A9A8  98 01 00 08 */	stb r0, 0x8(r1)
/* 802A4C2C 0029A9AC  48 00 00 15 */	bl fn_802A4C40
/* 802A4C30 0029A9B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A4C34 0029A9B4  7C 08 03 A6 */	mtlr r0
/* 802A4C38 0029A9B8  38 21 00 10 */	addi r1, r1, 0x10
/* 802A4C3C 0029A9BC  4E 80 00 20 */	blr
.endfn fn_802A4C14
