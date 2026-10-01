.include "macros.inc"
.file "auto_fn_802A4C40_text"

# 0x80006AD4..0x80006ADC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006AD4 | size: 0x8
.obj "@etb_80006AD4", local
.hidden "@etb_80006AD4"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006AD4"

# 0x80009E2C..0x80009E38 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009E2C | size: 0xC
.obj "@eti_80009E2C", local
.hidden "@eti_80009E2C"
	.4byte fn_802A4C40
	.4byte 0x0000003C
	.4byte "@etb_80006AD4"
.endobj "@eti_80009E2C"

# 0x802A4C40..0x802A4C7C | size: 0x3C
.text
.balign 4

# .text:0x0 | 0x802A4C40 | size: 0x3C
.fn fn_802A4C40, global
/* 802A4C40 0029A9C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A4C44 0029A9C4  7C 08 02 A6 */	mflr r0
/* 802A4C48 0029A9C8  2C 04 00 01 */	cmpwi r4, 0x1
/* 802A4C4C 0029A9CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A4C50 0029A9D0  40 81 00 1C */	ble .L_802A4C6C
/* 802A4C54 0029A9D4  88 05 00 00 */	lbz r0, 0x0(r5)
/* 802A4C58 0029A9D8  38 A4 FF FF */	subi r5, r4, 0x1
/* 802A4C5C 0029A9DC  38 C1 00 08 */	addi r6, r1, 0x8
/* 802A4C60 0029A9E0  38 80 00 00 */	li r4, 0x0
/* 802A4C64 0029A9E4  98 01 00 08 */	stb r0, 0x8(r1)
/* 802A4C68 0029A9E8  48 00 00 15 */	bl fn_802A4C7C
.L_802A4C6C:
/* 802A4C6C 0029A9EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A4C70 0029A9F0  7C 08 03 A6 */	mtlr r0
/* 802A4C74 0029A9F4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A4C78 0029A9F8  4E 80 00 20 */	blr
.endfn fn_802A4C40
