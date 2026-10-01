.include "macros.inc"
.file "auto_fn_802AAB30_text"

# 0x80006F34..0x80006F3C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006F34 | size: 0x8
.obj "@etb_80006F34", local
.hidden "@etb_80006F34"
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
.endobj "@etb_80006F34"

# 0x8000A108..0x8000A114 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A108 | size: 0xC
.obj "@eti_8000A108", local
.hidden "@eti_8000A108"
	.4byte fn_802AAB30
	.4byte 0x0000005C
	.4byte "@etb_80006F34"
.endobj "@eti_8000A108"

# 0x802AAB30..0x802AAB8C | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802AAB30 | size: 0x5C
.fn fn_802AAB30, global
/* 802AAB30 002A08B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AAB34 002A08B4  7C 08 02 A6 */	mflr r0
/* 802AAB38 002A08B8  2C 03 00 00 */	cmpwi r3, 0x0
/* 802AAB3C 002A08BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AAB40 002A08C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AAB44 002A08C4  7C 7F 1B 78 */	mr r31, r3
/* 802AAB48 002A08C8  41 82 00 2C */	beq .L_802AAB74
/* 802AAB4C 002A08CC  2C 04 00 00 */	cmpwi r4, 0x0
/* 802AAB50 002A08D0  40 81 00 24 */	ble .L_802AAB74
/* 802AAB54 002A08D4  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802AAB58 002A08D8  7F E4 FB 78 */	mr r4, r31
/* 802AAB5C 002A08DC  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802AAB60 002A08E0  38 C0 00 1D */	li r6, 0x1d
/* 802AAB64 002A08E4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802AAB68 002A08E8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802AAB6C 002A08EC  7D 89 03 A6 */	mtctr r12
/* 802AAB70 002A08F0  4E 80 04 21 */	bctrl
.L_802AAB74:
/* 802AAB74 002A08F4  7F E3 FB 78 */	mr r3, r31
/* 802AAB78 002A08F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AAB7C 002A08FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AAB80 002A0900  7C 08 03 A6 */	mtlr r0
/* 802AAB84 002A0904  38 21 00 10 */	addi r1, r1, 0x10
/* 802AAB88 002A0908  4E 80 00 20 */	blr
.endfn fn_802AAB30
