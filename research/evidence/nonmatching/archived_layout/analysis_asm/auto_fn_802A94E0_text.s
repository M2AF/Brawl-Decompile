.include "macros.inc"
.file "auto_fn_802A94E0_text"

# 0x80006D5C..0x80006D74 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006D5C | size: 0x18
.obj "@etb_80006D5C", local
.hidden "@etb_80006D5C"
/*
 * Flag values:
 * Has Elf Vector: No
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
 * Dtor: "dtor_802A3938"
 * Has end bit
 */
	.4byte 0x00080000
	.4byte 0x00000038
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte dtor_802A3938
.endobj "@etb_80006D5C"

# 0x80009FB8..0x80009FC4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009FB8 | size: 0xC
.obj "@eti_80009FB8", local
.hidden "@eti_80009FB8"
	.4byte fn_802A94E0
	.4byte 0x00000048
	.4byte "@etb_80006D5C"
.endobj "@eti_80009FB8"

# 0x802A94E0..0x802A9528 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802A94E0 | size: 0x48
.fn fn_802A94E0, global
/* 802A94E0 0029F260  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A94E4 0029F264  7C 08 02 A6 */	mflr r0
/* 802A94E8 0029F268  3D 00 80 48 */	lis r8, lbl_80487178@ha
/* 802A94EC 0029F26C  7C 89 23 78 */	mr r9, r4
/* 802A94F0 0029F270  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A94F4 0029F274  38 00 00 00 */	li r0, 0x0
/* 802A94F8 0029F278  39 08 71 78 */	addi r8, r8, lbl_80487178@l
/* 802A94FC 0029F27C  7C A4 2B 78 */	mr r4, r5
/* 802A9500 0029F280  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802A9504 0029F284  7D 25 4B 78 */	mr r5, r9
/* 802A9508 0029F288  38 E1 00 08 */	addi r7, r1, 0x8
/* 802A950C 0029F28C  98 01 00 0C */	stb r0, 0xc(r1)
/* 802A9510 0029F290  91 01 00 08 */	stw r8, 0x8(r1)
/* 802A9514 0029F294  4B FF EC F1 */	bl fn_802A8204
/* 802A9518 0029F298  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A951C 0029F29C  7C 08 03 A6 */	mtlr r0
/* 802A9520 0029F2A0  38 21 00 20 */	addi r1, r1, 0x20
/* 802A9524 0029F2A4  4E 80 00 20 */	blr
.endfn fn_802A94E0
