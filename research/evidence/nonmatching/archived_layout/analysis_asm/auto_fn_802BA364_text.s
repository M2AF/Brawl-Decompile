.include "macros.inc"
.file "auto_fn_802BA364_text"

# 0x800077C4..0x800077DC | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x800077C4 | size: 0x18
.obj "@etb_800077C4", local
.hidden "@etb_800077C4"
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
.endobj "@etb_800077C4"

# 0x8000A6D8..0x8000A6E4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A6D8 | size: 0xC
.obj "@eti_8000A6D8", local
.hidden "@eti_8000A6D8"
	.4byte fn_802BA364
	.4byte 0x00000048
	.4byte "@etb_800077C4"
.endobj "@eti_8000A6D8"

# 0x802BA364..0x802BA3AC | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802BA364 | size: 0x48
.fn fn_802BA364, global
/* 802BA364 002B00E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BA368 002B00E8  7C 08 02 A6 */	mflr r0
/* 802BA36C 002B00EC  3D 00 80 48 */	lis r8, lbl_80487178@ha
/* 802BA370 002B00F0  7C 89 23 78 */	mr r9, r4
/* 802BA374 002B00F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BA378 002B00F8  38 00 00 00 */	li r0, 0x0
/* 802BA37C 002B00FC  39 08 71 78 */	addi r8, r8, lbl_80487178@l
/* 802BA380 002B0100  7C A4 2B 78 */	mr r4, r5
/* 802BA384 002B0104  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802BA388 002B0108  7D 25 4B 78 */	mr r5, r9
/* 802BA38C 002B010C  38 E1 00 08 */	addi r7, r1, 0x8
/* 802BA390 002B0110  98 01 00 0C */	stb r0, 0xc(r1)
/* 802BA394 002B0114  91 01 00 08 */	stw r8, 0x8(r1)
/* 802BA398 002B0118  4B FF F7 F5 */	bl fn_802B9B8C
/* 802BA39C 002B011C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BA3A0 002B0120  7C 08 03 A6 */	mtlr r0
/* 802BA3A4 002B0124  38 21 00 20 */	addi r1, r1, 0x20
/* 802BA3A8 002B0128  4E 80 00 20 */	blr
.endfn fn_802BA364
