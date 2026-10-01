.include "macros.inc"
.file "auto_fn_802BFAC0_text"

# 0x80007B0C..0x80007B24 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007B0C | size: 0x18
.obj "@etb_80007B0C", local
.hidden "@etb_80007B0C"
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
.endobj "@etb_80007B0C"

# 0x8000A8D0..0x8000A8DC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A8D0 | size: 0xC
.obj "@eti_8000A8D0", local
.hidden "@eti_8000A8D0"
	.4byte fn_802BFAC0
	.4byte 0x00000048
	.4byte "@etb_80007B0C"
.endobj "@eti_8000A8D0"

# 0x802BFAC0..0x802BFB08 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802BFAC0 | size: 0x48
.fn fn_802BFAC0, global
/* 802BFAC0 002B5840  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BFAC4 002B5844  7C 08 02 A6 */	mflr r0
/* 802BFAC8 002B5848  3D 00 80 48 */	lis r8, lbl_80487198@ha
/* 802BFACC 002B584C  C0 02 AC 7C */	lfs f0, lbl_805A3F9C@sda21(r0)
/* 802BFAD0 002B5850  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BFAD4 002B5854  39 08 71 98 */	addi r8, r8, lbl_80487198@l
/* 802BFAD8 002B5858  7C 80 23 78 */	mr r0, r4
/* 802BFADC 002B585C  7C A4 2B 78 */	mr r4, r5
/* 802BFAE0 002B5860  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802BFAE4 002B5864  7C 05 03 78 */	mr r5, r0
/* 802BFAE8 002B5868  38 E1 00 08 */	addi r7, r1, 0x8
/* 802BFAEC 002B586C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802BFAF0 002B5870  91 01 00 08 */	stw r8, 0x8(r1)
/* 802BFAF4 002B5874  4B FF DF 95 */	bl fn_802BDA88
/* 802BFAF8 002B5878  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BFAFC 002B587C  7C 08 03 A6 */	mtlr r0
/* 802BFB00 002B5880  38 21 00 20 */	addi r1, r1, 0x20
/* 802BFB04 002B5884  4E 80 00 20 */	blr
.endfn fn_802BFAC0
