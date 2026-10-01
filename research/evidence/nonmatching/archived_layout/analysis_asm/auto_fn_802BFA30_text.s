.include "macros.inc"
.file "auto_fn_802BFA30_text"

# 0x80007ADC..0x80007AF4 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007ADC | size: 0x18
.obj "@etb_80007ADC", local
.hidden "@etb_80007ADC"
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
.endobj "@etb_80007ADC"

# 0x8000A8B8..0x8000A8C4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A8B8 | size: 0xC
.obj "@eti_8000A8B8", local
.hidden "@eti_8000A8B8"
	.4byte fn_802BFA30
	.4byte 0x00000048
	.4byte "@etb_80007ADC"
.endobj "@eti_8000A8B8"

# 0x802BFA30..0x802BFA78 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802BFA30 | size: 0x48
.fn fn_802BFA30, global
/* 802BFA30 002B57B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BFA34 002B57B4  7C 08 02 A6 */	mflr r0
/* 802BFA38 002B57B8  3D 00 80 48 */	lis r8, lbl_80487178@ha
/* 802BFA3C 002B57BC  7C 89 23 78 */	mr r9, r4
/* 802BFA40 002B57C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BFA44 002B57C4  38 00 00 00 */	li r0, 0x0
/* 802BFA48 002B57C8  39 08 71 78 */	addi r8, r8, lbl_80487178@l
/* 802BFA4C 002B57CC  7C A4 2B 78 */	mr r4, r5
/* 802BFA50 002B57D0  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802BFA54 002B57D4  7D 25 4B 78 */	mr r5, r9
/* 802BFA58 002B57D8  38 E1 00 08 */	addi r7, r1, 0x8
/* 802BFA5C 002B57DC  98 01 00 0C */	stb r0, 0xc(r1)
/* 802BFA60 002B57E0  91 01 00 08 */	stw r8, 0x8(r1)
/* 802BFA64 002B57E4  4B FF ED 61 */	bl fn_802BE7C4
/* 802BFA68 002B57E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BFA6C 002B57EC  7C 08 03 A6 */	mtlr r0
/* 802BFA70 002B57F0  38 21 00 20 */	addi r1, r1, 0x20
/* 802BFA74 002B57F4  4E 80 00 20 */	blr
.endfn fn_802BFA30
