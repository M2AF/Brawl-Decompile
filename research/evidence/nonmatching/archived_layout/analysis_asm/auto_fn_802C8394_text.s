.include "macros.inc"
.file "auto_fn_802C8394_text"

# 0x80007F88..0x80007FA0 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007F88 | size: 0x18
.obj "@etb_80007F88", local
.hidden "@etb_80007F88"
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
.endobj "@etb_80007F88"

# 0x8000ACC0..0x8000ACCC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000ACC0 | size: 0xC
.obj "@eti_8000ACC0", local
.hidden "@eti_8000ACC0"
	.4byte fn_802C8394
	.4byte 0x00000048
	.4byte "@etb_80007F88"
.endobj "@eti_8000ACC0"

# 0x802C8394..0x802C83DC | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802C8394 | size: 0x48
.fn fn_802C8394, global
/* 802C8394 002BE114  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C8398 002BE118  7C 08 02 A6 */	mflr r0
/* 802C839C 002BE11C  3D 00 80 48 */	lis r8, lbl_80487178@ha
/* 802C83A0 002BE120  7C 89 23 78 */	mr r9, r4
/* 802C83A4 002BE124  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C83A8 002BE128  38 00 00 00 */	li r0, 0x0
/* 802C83AC 002BE12C  39 08 71 78 */	addi r8, r8, lbl_80487178@l
/* 802C83B0 002BE130  7C A4 2B 78 */	mr r4, r5
/* 802C83B4 002BE134  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802C83B8 002BE138  7D 25 4B 78 */	mr r5, r9
/* 802C83BC 002BE13C  38 E1 00 08 */	addi r7, r1, 0x8
/* 802C83C0 002BE140  98 01 00 0C */	stb r0, 0xc(r1)
/* 802C83C4 002BE144  91 01 00 08 */	stw r8, 0x8(r1)
/* 802C83C8 002BE148  4B FF F7 8D */	bl fn_802C7B54
/* 802C83CC 002BE14C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C83D0 002BE150  7C 08 03 A6 */	mtlr r0
/* 802C83D4 002BE154  38 21 00 20 */	addi r1, r1, 0x20
/* 802C83D8 002BE158  4E 80 00 20 */	blr
.endfn fn_802C8394
