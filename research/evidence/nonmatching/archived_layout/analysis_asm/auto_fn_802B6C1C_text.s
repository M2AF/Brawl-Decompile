.include "macros.inc"
.file "auto_fn_802B6C1C_text"

# 0x8000755C..0x80007574 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000755C | size: 0x18
.obj "@etb_8000755C", local
.hidden "@etb_8000755C"
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
.endobj "@etb_8000755C"

# 0x8000A54C..0x8000A558 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A54C | size: 0xC
.obj "@eti_8000A54C", local
.hidden "@eti_8000A54C"
	.4byte fn_802B6C1C
	.4byte 0x00000048
	.4byte "@etb_8000755C"
.endobj "@eti_8000A54C"

# 0x802B6C1C..0x802B6C64 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802B6C1C | size: 0x48
.fn fn_802B6C1C, global
/* 802B6C1C 002AC99C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B6C20 002AC9A0  7C 08 02 A6 */	mflr r0
/* 802B6C24 002AC9A4  3D 00 80 48 */	lis r8, lbl_80487178@ha
/* 802B6C28 002AC9A8  7C 89 23 78 */	mr r9, r4
/* 802B6C2C 002AC9AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B6C30 002AC9B0  38 00 00 00 */	li r0, 0x0
/* 802B6C34 002AC9B4  39 08 71 78 */	addi r8, r8, lbl_80487178@l
/* 802B6C38 002AC9B8  7C A4 2B 78 */	mr r4, r5
/* 802B6C3C 002AC9BC  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802B6C40 002AC9C0  7D 25 4B 78 */	mr r5, r9
/* 802B6C44 002AC9C4  38 E1 00 08 */	addi r7, r1, 0x8
/* 802B6C48 002AC9C8  98 01 00 0C */	stb r0, 0xc(r1)
/* 802B6C4C 002AC9CC  91 01 00 08 */	stw r8, 0x8(r1)
/* 802B6C50 002AC9D0  4B FF DE B9 */	bl fn_802B4B08
/* 802B6C54 002AC9D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B6C58 002AC9D8  7C 08 03 A6 */	mtlr r0
/* 802B6C5C 002AC9DC  38 21 00 20 */	addi r1, r1, 0x20
/* 802B6C60 002AC9E0  4E 80 00 20 */	blr
.endfn fn_802B6C1C
