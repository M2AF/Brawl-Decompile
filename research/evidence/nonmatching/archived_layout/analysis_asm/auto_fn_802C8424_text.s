.include "macros.inc"
.file "auto_fn_802C8424_text"

# 0x80007FB8..0x80007FD0 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007FB8 | size: 0x18
.obj "@etb_80007FB8", local
.hidden "@etb_80007FB8"
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
.endobj "@etb_80007FB8"

# 0x8000ACD8..0x8000ACE4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000ACD8 | size: 0xC
.obj "@eti_8000ACD8", local
.hidden "@eti_8000ACD8"
	.4byte fn_802C8424
	.4byte 0x00000048
	.4byte "@etb_80007FB8"
.endobj "@eti_8000ACD8"

# 0x802C8424..0x802C846C | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802C8424 | size: 0x48
.fn fn_802C8424, global
/* 802C8424 002BE1A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C8428 002BE1A8  7C 08 02 A6 */	mflr r0
/* 802C842C 002BE1AC  3D 00 80 48 */	lis r8, lbl_80487198@ha
/* 802C8430 002BE1B0  C0 02 AC CC */	lfs f0, lbl_805A3FEC@sda21(r0)
/* 802C8434 002BE1B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C8438 002BE1B8  39 08 71 98 */	addi r8, r8, lbl_80487198@l
/* 802C843C 002BE1BC  7C 80 23 78 */	mr r0, r4
/* 802C8440 002BE1C0  7C A4 2B 78 */	mr r4, r5
/* 802C8444 002BE1C4  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802C8448 002BE1C8  7C 05 03 78 */	mr r5, r0
/* 802C844C 002BE1CC  38 E1 00 08 */	addi r7, r1, 0x8
/* 802C8450 002BE1D0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802C8454 002BE1D4  91 01 00 08 */	stw r8, 0x8(r1)
/* 802C8458 002BE1D8  4B FF EE 31 */	bl fn_802C7288
/* 802C845C 002BE1DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C8460 002BE1E0  7C 08 03 A6 */	mtlr r0
/* 802C8464 002BE1E4  38 21 00 20 */	addi r1, r1, 0x20
/* 802C8468 002BE1E8  4E 80 00 20 */	blr
.endfn fn_802C8424
