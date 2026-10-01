.include "macros.inc"
.file "auto_fn_802C846C_text"

# 0x80007FD0..0x80007FE8 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007FD0 | size: 0x18
.obj "@etb_80007FD0", local
.hidden "@etb_80007FD0"
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
.endobj "@etb_80007FD0"

# 0x8000ACE4..0x8000ACF0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000ACE4 | size: 0xC
.obj "@eti_8000ACE4", local
.hidden "@eti_8000ACE4"
	.4byte fn_802C846C
	.4byte 0x00000048
	.4byte "@etb_80007FD0"
.endobj "@eti_8000ACE4"

# 0x802C846C..0x802C84B4 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802C846C | size: 0x48
.fn fn_802C846C, global
/* 802C846C 002BE1EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C8470 002BE1F0  7C 08 02 A6 */	mflr r0
/* 802C8474 002BE1F4  3C E0 80 48 */	lis r7, lbl_80487198@ha
/* 802C8478 002BE1F8  C0 02 AC CC */	lfs f0, lbl_805A3FEC@sda21(r0)
/* 802C847C 002BE1FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C8480 002BE200  38 E7 71 98 */	addi r7, r7, lbl_80487198@l
/* 802C8484 002BE204  7C 60 1B 78 */	mr r0, r3
/* 802C8488 002BE208  7C 83 23 78 */	mr r3, r4
/* 802C848C 002BE20C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802C8490 002BE210  7C 04 03 78 */	mr r4, r0
/* 802C8494 002BE214  38 C1 00 08 */	addi r6, r1, 0x8
/* 802C8498 002BE218  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802C849C 002BE21C  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802C84A0 002BE220  4B FF F2 45 */	bl fn_802C76E4
/* 802C84A4 002BE224  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C84A8 002BE228  7C 08 03 A6 */	mtlr r0
/* 802C84AC 002BE22C  38 21 00 20 */	addi r1, r1, 0x20
/* 802C84B0 002BE230  4E 80 00 20 */	blr
.endfn fn_802C846C
