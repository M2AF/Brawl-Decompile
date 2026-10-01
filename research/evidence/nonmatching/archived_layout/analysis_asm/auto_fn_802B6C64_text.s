.include "macros.inc"
.file "auto_fn_802B6C64_text"

# 0x80007574..0x8000758C | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007574 | size: 0x18
.obj "@etb_80007574", local
.hidden "@etb_80007574"
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
.endobj "@etb_80007574"

# 0x8000A558..0x8000A564 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A558 | size: 0xC
.obj "@eti_8000A558", local
.hidden "@eti_8000A558"
	.4byte fn_802B6C64
	.4byte 0x00000048
	.4byte "@etb_80007574"
.endobj "@eti_8000A558"

# 0x802B6C64..0x802B6CAC | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802B6C64 | size: 0x48
.fn fn_802B6C64, global
/* 802B6C64 002AC9E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B6C68 002AC9E8  7C 08 02 A6 */	mflr r0
/* 802B6C6C 002AC9EC  3C E0 80 48 */	lis r7, lbl_80487178@ha
/* 802B6C70 002AC9F0  7C 68 1B 78 */	mr r8, r3
/* 802B6C74 002AC9F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B6C78 002AC9F8  38 00 00 00 */	li r0, 0x0
/* 802B6C7C 002AC9FC  38 E7 71 78 */	addi r7, r7, lbl_80487178@l
/* 802B6C80 002ACA00  7C 83 23 78 */	mr r3, r4
/* 802B6C84 002ACA04  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802B6C88 002ACA08  7D 04 43 78 */	mr r4, r8
/* 802B6C8C 002ACA0C  38 C1 00 08 */	addi r6, r1, 0x8
/* 802B6C90 002ACA10  98 01 00 0C */	stb r0, 0xc(r1)
/* 802B6C94 002ACA14  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802B6C98 002ACA18  4B FF DE 85 */	bl fn_802B4B1C
/* 802B6C9C 002ACA1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B6CA0 002ACA20  7C 08 03 A6 */	mtlr r0
/* 802B6CA4 002ACA24  38 21 00 20 */	addi r1, r1, 0x20
/* 802B6CA8 002ACA28  4E 80 00 20 */	blr
.endfn fn_802B6C64
