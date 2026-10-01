.include "macros.inc"
.file "auto_fn_802AE3D8_text"

# 0x80006FE4..0x80006FFC | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006FE4 | size: 0x18
.obj "@etb_80006FE4", local
.hidden "@etb_80006FE4"
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
.endobj "@etb_80006FE4"

# 0x8000A1BC..0x8000A1C8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A1BC | size: 0xC
.obj "@eti_8000A1BC", local
.hidden "@eti_8000A1BC"
	.4byte fn_802AE3D8
	.4byte 0x00000048
	.4byte "@etb_80006FE4"
.endobj "@eti_8000A1BC"

# 0x802AE3D8..0x802AE420 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802AE3D8 | size: 0x48
.fn fn_802AE3D8, global
/* 802AE3D8 002A4158  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AE3DC 002A415C  7C 08 02 A6 */	mflr r0
/* 802AE3E0 002A4160  3D 00 80 48 */	lis r8, lbl_80487178@ha
/* 802AE3E4 002A4164  7C 89 23 78 */	mr r9, r4
/* 802AE3E8 002A4168  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AE3EC 002A416C  38 00 00 00 */	li r0, 0x0
/* 802AE3F0 002A4170  39 08 71 78 */	addi r8, r8, lbl_80487178@l
/* 802AE3F4 002A4174  7C A4 2B 78 */	mr r4, r5
/* 802AE3F8 002A4178  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802AE3FC 002A417C  7D 25 4B 78 */	mr r5, r9
/* 802AE400 002A4180  38 E1 00 08 */	addi r7, r1, 0x8
/* 802AE404 002A4184  98 01 00 0C */	stb r0, 0xc(r1)
/* 802AE408 002A4188  91 01 00 08 */	stw r8, 0x8(r1)
/* 802AE40C 002A418C  4B FF EE 6D */	bl fn_802AD278
/* 802AE410 002A4190  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AE414 002A4194  7C 08 03 A6 */	mtlr r0
/* 802AE418 002A4198  38 21 00 20 */	addi r1, r1, 0x20
/* 802AE41C 002A419C  4E 80 00 20 */	blr
.endfn fn_802AE3D8
