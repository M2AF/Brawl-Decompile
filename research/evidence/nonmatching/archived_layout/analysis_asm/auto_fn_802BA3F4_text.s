.include "macros.inc"
.file "auto_fn_802BA3F4_text"

# 0x800077F4..0x8000780C | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x800077F4 | size: 0x18
.obj "@etb_800077F4", local
.hidden "@etb_800077F4"
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
.endobj "@etb_800077F4"

# 0x8000A6F0..0x8000A6FC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A6F0 | size: 0xC
.obj "@eti_8000A6F0", local
.hidden "@eti_8000A6F0"
	.4byte fn_802BA3F4
	.4byte 0x00000048
	.4byte "@etb_800077F4"
.endobj "@eti_8000A6F0"

# 0x802BA3F4..0x802BA43C | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802BA3F4 | size: 0x48
.fn fn_802BA3F4, global
/* 802BA3F4 002B0174  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BA3F8 002B0178  7C 08 02 A6 */	mflr r0
/* 802BA3FC 002B017C  3D 00 80 48 */	lis r8, lbl_80487198@ha
/* 802BA400 002B0180  C0 02 AC 68 */	lfs f0, lbl_805A3F88@sda21(r0)
/* 802BA404 002B0184  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BA408 002B0188  39 08 71 98 */	addi r8, r8, lbl_80487198@l
/* 802BA40C 002B018C  7C 80 23 78 */	mr r0, r4
/* 802BA410 002B0190  7C A4 2B 78 */	mr r4, r5
/* 802BA414 002B0194  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802BA418 002B0198  7C 05 03 78 */	mr r5, r0
/* 802BA41C 002B019C  38 E1 00 08 */	addi r7, r1, 0x8
/* 802BA420 002B01A0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802BA424 002B01A4  91 01 00 08 */	stw r8, 0x8(r1)
/* 802BA428 002B01A8  4B FF EF 7D */	bl fn_802B93A4
/* 802BA42C 002B01AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BA430 002B01B0  7C 08 03 A6 */	mtlr r0
/* 802BA434 002B01B4  38 21 00 20 */	addi r1, r1, 0x20
/* 802BA438 002B01B8  4E 80 00 20 */	blr
.endfn fn_802BA3F4
