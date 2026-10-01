.include "macros.inc"
.file "auto_fn_802BD278_text"

# 0x800079BC..0x800079D4 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x800079BC | size: 0x18
.obj "@etb_800079BC", local
.hidden "@etb_800079BC"
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
.endobj "@etb_800079BC"

# 0x8000A7EC..0x8000A7F8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A7EC | size: 0xC
.obj "@eti_8000A7EC", local
.hidden "@eti_8000A7EC"
	.4byte fn_802BD278
	.4byte 0x00000048
	.4byte "@etb_800079BC"
.endobj "@eti_8000A7EC"

# 0x802BD278..0x802BD2C0 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802BD278 | size: 0x48
.fn fn_802BD278, global
/* 802BD278 002B2FF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BD27C 002B2FFC  7C 08 02 A6 */	mflr r0
/* 802BD280 002B3000  3D 00 80 48 */	lis r8, lbl_80487178@ha
/* 802BD284 002B3004  7C 89 23 78 */	mr r9, r4
/* 802BD288 002B3008  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BD28C 002B300C  38 00 00 00 */	li r0, 0x0
/* 802BD290 002B3010  39 08 71 78 */	addi r8, r8, lbl_80487178@l
/* 802BD294 002B3014  7C A4 2B 78 */	mr r4, r5
/* 802BD298 002B3018  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802BD29C 002B301C  7D 25 4B 78 */	mr r5, r9
/* 802BD2A0 002B3020  38 E1 00 08 */	addi r7, r1, 0x8
/* 802BD2A4 002B3024  98 01 00 0C */	stb r0, 0xc(r1)
/* 802BD2A8 002B3028  91 01 00 08 */	stw r8, 0x8(r1)
/* 802BD2AC 002B302C  4B FF F6 25 */	bl fn_802BC8D0
/* 802BD2B0 002B3030  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BD2B4 002B3034  7C 08 03 A6 */	mtlr r0
/* 802BD2B8 002B3038  38 21 00 20 */	addi r1, r1, 0x20
/* 802BD2BC 002B303C  4E 80 00 20 */	blr
.endfn fn_802BD278
