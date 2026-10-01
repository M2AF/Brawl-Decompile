.include "macros.inc"
.file "auto_fn_802BFB08_text"

# 0x80007B24..0x80007B3C | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007B24 | size: 0x18
.obj "@etb_80007B24", local
.hidden "@etb_80007B24"
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
.endobj "@etb_80007B24"

# 0x8000A8DC..0x8000A8E8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A8DC | size: 0xC
.obj "@eti_8000A8DC", local
.hidden "@eti_8000A8DC"
	.4byte fn_802BFB08
	.4byte 0x00000048
	.4byte "@etb_80007B24"
.endobj "@eti_8000A8DC"

# 0x802BFB08..0x802BFB50 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802BFB08 | size: 0x48
.fn fn_802BFB08, global
/* 802BFB08 002B5888  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BFB0C 002B588C  7C 08 02 A6 */	mflr r0
/* 802BFB10 002B5890  3C E0 80 48 */	lis r7, lbl_80487198@ha
/* 802BFB14 002B5894  C0 02 AC 7C */	lfs f0, lbl_805A3F9C@sda21(r0)
/* 802BFB18 002B5898  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BFB1C 002B589C  38 E7 71 98 */	addi r7, r7, lbl_80487198@l
/* 802BFB20 002B58A0  7C 60 1B 78 */	mr r0, r3
/* 802BFB24 002B58A4  7C 83 23 78 */	mr r3, r4
/* 802BFB28 002B58A8  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802BFB2C 002B58AC  7C 04 03 78 */	mr r4, r0
/* 802BFB30 002B58B0  38 C1 00 08 */	addi r6, r1, 0x8
/* 802BFB34 002B58B4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802BFB38 002B58B8  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802BFB3C 002B58BC  4B FF E5 E9 */	bl fn_802BE124
/* 802BFB40 002B58C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BFB44 002B58C4  7C 08 03 A6 */	mtlr r0
/* 802BFB48 002B58C8  38 21 00 20 */	addi r1, r1, 0x20
/* 802BFB4C 002B58CC  4E 80 00 20 */	blr
.endfn fn_802BFB08
