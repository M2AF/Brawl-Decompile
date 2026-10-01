.include "macros.inc"
.file "auto_fn_802A9570_text"

# 0x80006D8C..0x80006DA4 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006D8C | size: 0x18
.obj "@etb_80006D8C", local
.hidden "@etb_80006D8C"
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
.endobj "@etb_80006D8C"

# 0x80009FD0..0x80009FDC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009FD0 | size: 0xC
.obj "@eti_80009FD0", local
.hidden "@eti_80009FD0"
	.4byte fn_802A9570
	.4byte 0x00000048
	.4byte "@etb_80006D8C"
.endobj "@eti_80009FD0"

# 0x802A9570..0x802A95B8 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802A9570 | size: 0x48
.fn fn_802A9570, global
/* 802A9570 0029F2F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A9574 0029F2F4  7C 08 02 A6 */	mflr r0
/* 802A9578 0029F2F8  3D 00 80 48 */	lis r8, lbl_80487198@ha
/* 802A957C 0029F2FC  C0 02 AB D8 */	lfs f0, lbl_805A3EF8@sda21(r0)
/* 802A9580 0029F300  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A9584 0029F304  39 08 71 98 */	addi r8, r8, lbl_80487198@l
/* 802A9588 0029F308  7C 80 23 78 */	mr r0, r4
/* 802A958C 0029F30C  7C A4 2B 78 */	mr r4, r5
/* 802A9590 0029F310  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802A9594 0029F314  7C 05 03 78 */	mr r5, r0
/* 802A9598 0029F318  38 E1 00 08 */	addi r7, r1, 0x8
/* 802A959C 0029F31C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802A95A0 0029F320  91 01 00 08 */	stw r8, 0x8(r1)
/* 802A95A4 0029F324  4B FF E7 B1 */	bl fn_802A7D54
/* 802A95A8 0029F328  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A95AC 0029F32C  7C 08 03 A6 */	mtlr r0
/* 802A95B0 0029F330  38 21 00 20 */	addi r1, r1, 0x20
/* 802A95B4 0029F334  4E 80 00 20 */	blr
.endfn fn_802A9570
