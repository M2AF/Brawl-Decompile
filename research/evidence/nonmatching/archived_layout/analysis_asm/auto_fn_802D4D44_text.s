.include "macros.inc"
.file "auto_fn_802D4D44_text"

# 0x80008564..0x8000856C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008564 | size: 0x8
.obj "@etb_80008564", local
.hidden "@etb_80008564"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80008564"

# 0x8000B368..0x8000B374 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B368 | size: 0xC
.obj "@eti_8000B368", local
.hidden "@eti_8000B368"
	.4byte fn_802D4D44
	.4byte 0x00000078
	.4byte "@etb_80008564"
.endobj "@eti_8000B368"

# 0x802D4D44..0x802D4DBC | size: 0x78
.text
.balign 4

# .text:0x0 | 0x802D4D44 | size: 0x78
.fn fn_802D4D44, global
/* 802D4D44 002CAAC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D4D48 002CAAC8  7C 08 02 A6 */	mflr r0
/* 802D4D4C 002CAACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D4D50 002CAAD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D4D54 002CAAD4  3B E0 00 00 */	li r31, 0x0
/* 802D4D58 002CAAD8  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802D4D5C 002CAADC  7C 7E 1B 78 */	mr r30, r3
/* 802D4D60 002CAAE0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D4D64 002CAAE4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802D4D68 002CAAE8  7D 89 03 A6 */	mtctr r12
/* 802D4D6C 002CAAEC  4E 80 04 21 */	bctrl
/* 802D4D70 002CAAF0  7C 64 1B 78 */	mr r4, r3
/* 802D4D74 002CAAF4  48 00 00 20 */	b .L_802D4D94
.L_802D4D78:
/* 802D4D78 002CAAF8  81 9E 00 00 */	lwz r12, 0x0(r30)
/* 802D4D7C 002CAAFC  7F C3 F3 78 */	mr r3, r30
/* 802D4D80 002CAB00  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802D4D84 002CAB04  7D 89 03 A6 */	mtctr r12
/* 802D4D88 002CAB08  3B FF 00 01 */	addi r31, r31, 0x1
/* 802D4D8C 002CAB0C  4E 80 04 21 */	bctrl
/* 802D4D90 002CAB10  7C 64 1B 78 */	mr r4, r3
.L_802D4D94:
/* 802D4D94 002CAB14  3C 04 00 01 */	addis r0, r4, 0x1
/* 802D4D98 002CAB18  28 00 FF FF */	cmplwi r0, 0xffff
/* 802D4D9C 002CAB1C  40 82 FF DC */	bne .L_802D4D78
/* 802D4DA0 002CAB20  7F E3 FB 78 */	mr r3, r31
/* 802D4DA4 002CAB24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D4DA8 002CAB28  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802D4DAC 002CAB2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D4DB0 002CAB30  7C 08 03 A6 */	mtlr r0
/* 802D4DB4 002CAB34  38 21 00 10 */	addi r1, r1, 0x10
/* 802D4DB8 002CAB38  4E 80 00 20 */	blr
.endfn fn_802D4D44
