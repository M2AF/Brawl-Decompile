.include "macros.inc"
.file "auto_fn_802BAD0C_text"

# 0x8000787C..0x80007894 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000787C | size: 0x18
.obj "@etb_8000787C", local
.hidden "@etb_8000787C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r27-r31
 * 
 * PC actions:
 * PC=00000060, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DELETEPOINTER
 * Pointer: r31)
 * Dtor: "dtor_802A1FD4"
 * Has end bit
 */
	.4byte 0x28080000
	.4byte 0x00000060
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8A80001F
	.4byte dtor_802A1FD4
.endobj "@etb_8000787C"

# 0x8000A744..0x8000A750 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A744 | size: 0xC
.obj "@eti_8000A744", local
.hidden "@eti_8000A744"
	.4byte fn_802BAD0C
	.4byte 0x00000084
	.4byte "@etb_8000787C"
.endobj "@eti_8000A744"

# 0x802BAD0C..0x802BAD90 | size: 0x84
.text
.balign 4

# .text:0x0 | 0x802BAD0C | size: 0x84
.fn fn_802BAD0C, global
/* 802BAD0C 002B0A8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BAD10 002B0A90  7C 08 02 A6 */	mflr r0
/* 802BAD14 002B0A94  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BAD18 002B0A98  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802BAD1C 002B0A9C  7C 7B 1B 78 */	mr r27, r3
/* 802BAD20 002B0AA0  7C 9C 23 78 */	mr r28, r4
/* 802BAD24 002B0AA4  7C BD 2B 78 */	mr r29, r5
/* 802BAD28 002B0AA8  7C DE 33 78 */	mr r30, r6
/* 802BAD2C 002B0AAC  38 80 00 38 */	li r4, 0x38
/* 802BAD30 002B0AB0  38 A0 00 1D */	li r5, 0x1d
/* 802BAD34 002B0AB4  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802BAD38 002B0AB8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802BAD3C 002B0ABC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802BAD40 002B0AC0  7D 89 03 A6 */	mtctr r12
/* 802BAD44 002B0AC4  4E 80 04 21 */	bctrl
/* 802BAD48 002B0AC8  38 00 00 38 */	li r0, 0x38
/* 802BAD4C 002B0ACC  7C 7F 1B 79 */	mr. r31, r3
/* 802BAD50 002B0AD0  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802BAD54 002B0AD4  41 82 00 24 */	beq .L_802BAD78
/* 802BAD58 002B0AD8  7F 84 E3 78 */	mr r4, r28
/* 802BAD5C 002B0ADC  7F 65 DB 78 */	mr r5, r27
/* 802BAD60 002B0AE0  7F A6 EB 78 */	mr r6, r29
/* 802BAD64 002B0AE4  7F C7 F3 78 */	mr r7, r30
/* 802BAD68 002B0AE8  48 00 01 51 */	bl fn_802BAEB8
/* 802BAD6C 002B0AEC  3C 60 80 48 */	lis r3, lbl_80486DB0@ha
/* 802BAD70 002B0AF0  38 63 6D B0 */	addi r3, r3, lbl_80486DB0@l
/* 802BAD74 002B0AF4  90 7F 00 00 */	stw r3, 0x0(r31)
.L_802BAD78:
/* 802BAD78 002B0AF8  7F E3 FB 78 */	mr r3, r31
/* 802BAD7C 002B0AFC  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802BAD80 002B0B00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BAD84 002B0B04  7C 08 03 A6 */	mtlr r0
/* 802BAD88 002B0B08  38 21 00 20 */	addi r1, r1, 0x20
/* 802BAD8C 002B0B0C  4E 80 00 20 */	blr
.endfn fn_802BAD0C
