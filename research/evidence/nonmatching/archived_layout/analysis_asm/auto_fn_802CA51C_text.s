.include "macros.inc"
.file "auto_fn_802CA51C_text"

# 0x80008138..0x80008150 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008138 | size: 0x18
.obj "@etb_80008138", local
.hidden "@etb_80008138"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * 
 * PC actions:
 * PC=00000038, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DESTROYLOCAL
 * Local: 0x8(SP)
 * Dtor: "dtor_802A38DC"
 * Has end bit
 */
	.4byte 0x000A0000
	.4byte 0x00000038
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte dtor_802A38DC
.endobj "@etb_80008138"

# 0x8000AE04..0x8000AE10 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AE04 | size: 0xC
.obj "@eti_8000AE04", local
.hidden "@eti_8000AE04"
	.4byte fn_802CA51C
	.4byte 0x00000048
	.4byte "@etb_80008138"
.endobj "@eti_8000AE04"

# 0x802CA51C..0x802CA564 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802CA51C | size: 0x48
.fn fn_802CA51C, global
/* 802CA51C 002C029C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CA520 002C02A0  7C 08 02 A6 */	mflr r0
/* 802CA524 002C02A4  3D 00 80 48 */	lis r8, lbl_80487198@ha
/* 802CA528 002C02A8  C0 02 AC D4 */	lfs f0, lbl_805A3FF4@sda21(r0)
/* 802CA52C 002C02AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CA530 002C02B0  39 08 71 98 */	addi r8, r8, lbl_80487198@l
/* 802CA534 002C02B4  7C 80 23 78 */	mr r0, r4
/* 802CA538 002C02B8  7C A4 2B 78 */	mr r4, r5
/* 802CA53C 002C02BC  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802CA540 002C02C0  7C 05 03 78 */	mr r5, r0
/* 802CA544 002C02C4  38 E1 00 08 */	addi r7, r1, 0x8
/* 802CA548 002C02C8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802CA54C 002C02CC  91 01 00 08 */	stw r8, 0x8(r1)
/* 802CA550 002C02D0  4B FF F7 D5 */	bl fn_802C9D24
/* 802CA554 002C02D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CA558 002C02D8  7C 08 03 A6 */	mtlr r0
/* 802CA55C 002C02DC  38 21 00 20 */	addi r1, r1, 0x20
/* 802CA560 002C02E0  4E 80 00 20 */	blr
.endfn fn_802CA51C
