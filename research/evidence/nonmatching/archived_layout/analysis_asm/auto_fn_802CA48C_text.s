.include "macros.inc"
.file "auto_fn_802CA48C_text"

# 0x80008108..0x80008120 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008108 | size: 0x18
.obj "@etb_80008108", local
.hidden "@etb_80008108"
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
.endobj "@etb_80008108"

# 0x8000ADEC..0x8000ADF8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000ADEC | size: 0xC
.obj "@eti_8000ADEC", local
.hidden "@eti_8000ADEC"
	.4byte fn_802CA48C
	.4byte 0x00000048
	.4byte "@etb_80008108"
.endobj "@eti_8000ADEC"

# 0x802CA48C..0x802CA4D4 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802CA48C | size: 0x48
.fn fn_802CA48C, global
/* 802CA48C 002C020C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CA490 002C0210  7C 08 02 A6 */	mflr r0
/* 802CA494 002C0214  3D 00 80 48 */	lis r8, lbl_80487178@ha
/* 802CA498 002C0218  7C 89 23 78 */	mr r9, r4
/* 802CA49C 002C021C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CA4A0 002C0220  38 00 00 00 */	li r0, 0x0
/* 802CA4A4 002C0224  39 08 71 78 */	addi r8, r8, lbl_80487178@l
/* 802CA4A8 002C0228  7C A4 2B 78 */	mr r4, r5
/* 802CA4AC 002C022C  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802CA4B0 002C0230  7D 25 4B 78 */	mr r5, r9
/* 802CA4B4 002C0234  38 E1 00 08 */	addi r7, r1, 0x8
/* 802CA4B8 002C0238  98 01 00 0C */	stb r0, 0xc(r1)
/* 802CA4BC 002C023C  91 01 00 08 */	stw r8, 0x8(r1)
/* 802CA4C0 002C0240  4B FF FA ED */	bl fn_802C9FAC
/* 802CA4C4 002C0244  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CA4C8 002C0248  7C 08 03 A6 */	mtlr r0
/* 802CA4CC 002C024C  38 21 00 20 */	addi r1, r1, 0x20
/* 802CA4D0 002C0250  4E 80 00 20 */	blr
.endfn fn_802CA48C
