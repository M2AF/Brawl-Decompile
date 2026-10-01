.include "macros.inc"
.file "auto_fn_802D720C_text"

# 0x8000864C..0x80008654 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000864C | size: 0x8
.obj "@etb_8000864C", local
.hidden "@etb_8000864C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000864C"

# 0x8000B4C4..0x8000B4D0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B4C4 | size: 0xC
.obj "@eti_8000B4C4", local
.hidden "@eti_8000B4C4"
	.4byte fn_802D720C
	.4byte 0x00000054
	.4byte "@etb_8000864C"
.endobj "@eti_8000B4C4"

# 0x802D720C..0x802D7260 | size: 0x54
.text
.balign 4

# .text:0x0 | 0x802D720C | size: 0x54
.fn fn_802D720C, global
/* 802D720C 002CCF8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D7210 002CCF90  7C 08 02 A6 */	mflr r0
/* 802D7214 002CCF94  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D7218 002CCF98  4B FF F3 85 */	bl fn_802D659C
/* 802D721C 002CCF9C  3D 00 80 41 */	lis r8, lbl_80410FB0@ha
/* 802D7220 002CCFA0  3C E0 80 53 */	lis r7, lbl_80532968@ha
/* 802D7224 002CCFA4  39 08 0F B0 */	addi r8, r8, lbl_80410FB0@l
/* 802D7228 002CCFA8  3C C0 80 2D */	lis r6, fn_802D650C@ha
/* 802D722C 002CCFAC  3C 80 80 2D */	lis r4, fn_802D652C@ha
/* 802D7230 002CCFB0  38 A7 29 68 */	addi r5, r7, lbl_80532968@l
/* 802D7234 002CCFB4  38 08 00 1C */	addi r0, r8, 0x1c
/* 802D7238 002CCFB8  38 C6 65 0C */	addi r6, r6, fn_802D650C@l
/* 802D723C 002CCFBC  38 84 65 2C */	addi r4, r4, fn_802D652C@l
/* 802D7240 002CCFC0  90 07 29 68 */	stw r0, lbl_80532968@l(r7)
/* 802D7244 002CCFC4  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802D7248 002CCFC8  90 85 00 08 */	stw r4, 0x8(r5)
/* 802D724C 002CCFCC  90 65 00 0C */	stw r3, 0xc(r5)
/* 802D7250 002CCFD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D7254 002CCFD4  7C 08 03 A6 */	mtlr r0
/* 802D7258 002CCFD8  38 21 00 10 */	addi r1, r1, 0x10
/* 802D725C 002CCFDC  4E 80 00 20 */	blr
.endfn fn_802D720C

# 0x804066A4..0x804066A8 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802D720C
