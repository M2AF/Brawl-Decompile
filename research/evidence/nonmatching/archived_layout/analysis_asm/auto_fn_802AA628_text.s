.include "macros.inc"
.file "auto_fn_802AA628_text"

# 0x80006EEC..0x80006F04 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006EEC | size: 0x18
.obj "@etb_80006EEC", local
.hidden "@etb_80006EEC"
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
.endobj "@etb_80006EEC"

# 0x8000A0B4..0x8000A0C0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A0B4 | size: 0xC
.obj "@eti_8000A0B4", local
.hidden "@eti_8000A0B4"
	.4byte fn_802AA628
	.4byte 0x00000048
	.4byte "@etb_80006EEC"
.endobj "@eti_8000A0B4"

# 0x802AA628..0x802AA670 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802AA628 | size: 0x48
.fn fn_802AA628, global
/* 802AA628 002A03A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AA62C 002A03AC  7C 08 02 A6 */	mflr r0
/* 802AA630 002A03B0  3D 00 80 48 */	lis r8, lbl_80487198@ha
/* 802AA634 002A03B4  C0 02 AB E4 */	lfs f0, lbl_805A3F04@sda21(r0)
/* 802AA638 002A03B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AA63C 002A03BC  39 08 71 98 */	addi r8, r8, lbl_80487198@l
/* 802AA640 002A03C0  7C 80 23 78 */	mr r0, r4
/* 802AA644 002A03C4  7C A4 2B 78 */	mr r4, r5
/* 802AA648 002A03C8  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802AA64C 002A03CC  7C 05 03 78 */	mr r5, r0
/* 802AA650 002A03D0  38 E1 00 08 */	addi r7, r1, 0x8
/* 802AA654 002A03D4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802AA658 002A03D8  91 01 00 08 */	stw r8, 0x8(r1)
/* 802AA65C 002A03DC  4B FF F8 A9 */	bl fn_802A9F04
/* 802AA660 002A03E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AA664 002A03E4  7C 08 03 A6 */	mtlr r0
/* 802AA668 002A03E8  38 21 00 20 */	addi r1, r1, 0x20
/* 802AA66C 002A03EC  4E 80 00 20 */	blr
.endfn fn_802AA628
