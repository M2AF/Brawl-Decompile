.include "macros.inc"
.file "auto_fn_802BA3AC_text"

# 0x800077DC..0x800077F4 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x800077DC | size: 0x18
.obj "@etb_800077DC", local
.hidden "@etb_800077DC"
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
.endobj "@etb_800077DC"

# 0x8000A6E4..0x8000A6F0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A6E4 | size: 0xC
.obj "@eti_8000A6E4", local
.hidden "@eti_8000A6E4"
	.4byte fn_802BA3AC
	.4byte 0x00000048
	.4byte "@etb_800077DC"
.endobj "@eti_8000A6E4"

# 0x802BA3AC..0x802BA3F4 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802BA3AC | size: 0x48
.fn fn_802BA3AC, global
/* 802BA3AC 002B012C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BA3B0 002B0130  7C 08 02 A6 */	mflr r0
/* 802BA3B4 002B0134  3C E0 80 48 */	lis r7, lbl_80487178@ha
/* 802BA3B8 002B0138  7C 68 1B 78 */	mr r8, r3
/* 802BA3BC 002B013C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BA3C0 002B0140  38 00 00 00 */	li r0, 0x0
/* 802BA3C4 002B0144  38 E7 71 78 */	addi r7, r7, lbl_80487178@l
/* 802BA3C8 002B0148  7C 83 23 78 */	mr r3, r4
/* 802BA3CC 002B014C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802BA3D0 002B0150  7D 04 43 78 */	mr r4, r8
/* 802BA3D4 002B0154  38 C1 00 08 */	addi r6, r1, 0x8
/* 802BA3D8 002B0158  98 01 00 0C */	stb r0, 0xc(r1)
/* 802BA3DC 002B015C  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802BA3E0 002B0160  4B FF F7 C1 */	bl fn_802B9BA0
/* 802BA3E4 002B0164  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BA3E8 002B0168  7C 08 03 A6 */	mtlr r0
/* 802BA3EC 002B016C  38 21 00 20 */	addi r1, r1, 0x20
/* 802BA3F0 002B0170  4E 80 00 20 */	blr
.endfn fn_802BA3AC
