.include "macros.inc"
.file "auto_fn_802C3B40_text"

# 0x80007D90..0x80007DA8 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007D90 | size: 0x18
.obj "@etb_80007D90", local
.hidden "@etb_80007D90"
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
.endobj "@etb_80007D90"

# 0x8000AAF8..0x8000AB04 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AAF8 | size: 0xC
.obj "@eti_8000AAF8", local
.hidden "@eti_8000AAF8"
	.4byte fn_802C3B40
	.4byte 0x00000048
	.4byte "@etb_80007D90"
.endobj "@eti_8000AAF8"

# 0x802C3B40..0x802C3B88 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802C3B40 | size: 0x48
.fn fn_802C3B40, global
/* 802C3B40 002B98C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C3B44 002B98C4  7C 08 02 A6 */	mflr r0
/* 802C3B48 002B98C8  3C E0 80 48 */	lis r7, lbl_80487198@ha
/* 802C3B4C 002B98CC  C0 02 AC 98 */	lfs f0, lbl_805A3FB8@sda21(r0)
/* 802C3B50 002B98D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C3B54 002B98D4  38 E7 71 98 */	addi r7, r7, lbl_80487198@l
/* 802C3B58 002B98D8  7C 60 1B 78 */	mr r0, r3
/* 802C3B5C 002B98DC  7C 83 23 78 */	mr r3, r4
/* 802C3B60 002B98E0  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802C3B64 002B98E4  7C 04 03 78 */	mr r4, r0
/* 802C3B68 002B98E8  38 C1 00 08 */	addi r6, r1, 0x8
/* 802C3B6C 002B98EC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802C3B70 002B98F0  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802C3B74 002B98F4  4B FF F6 55 */	bl fn_802C31C8
/* 802C3B78 002B98F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C3B7C 002B98FC  7C 08 03 A6 */	mtlr r0
/* 802C3B80 002B9900  38 21 00 20 */	addi r1, r1, 0x20
/* 802C3B84 002B9904  4E 80 00 20 */	blr
.endfn fn_802C3B40
