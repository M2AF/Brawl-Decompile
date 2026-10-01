.include "macros.inc"
.file "auto_fn_802B1454_text"

# 0x80007328..0x80007340 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007328 | size: 0x18
.obj "@etb_80007328", local
.hidden "@etb_80007328"
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
.endobj "@etb_80007328"

# 0x8000A39C..0x8000A3A8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A39C | size: 0xC
.obj "@eti_8000A39C", local
.hidden "@eti_8000A39C"
	.4byte fn_802B1454
	.4byte 0x00000048
	.4byte "@etb_80007328"
.endobj "@eti_8000A39C"

# 0x802B1454..0x802B149C | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802B1454 | size: 0x48
.fn fn_802B1454, global
/* 802B1454 002A71D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B1458 002A71D8  7C 08 02 A6 */	mflr r0
/* 802B145C 002A71DC  3C E0 80 48 */	lis r7, lbl_80487178@ha
/* 802B1460 002A71E0  7C 68 1B 78 */	mr r8, r3
/* 802B1464 002A71E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B1468 002A71E8  38 00 00 00 */	li r0, 0x0
/* 802B146C 002A71EC  38 E7 71 78 */	addi r7, r7, lbl_80487178@l
/* 802B1470 002A71F0  7C 83 23 78 */	mr r3, r4
/* 802B1474 002A71F4  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802B1478 002A71F8  7D 04 43 78 */	mr r4, r8
/* 802B147C 002A71FC  38 C1 00 08 */	addi r6, r1, 0x8
/* 802B1480 002A7200  98 01 00 0C */	stb r0, 0xc(r1)
/* 802B1484 002A7204  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802B1488 002A7208  4B FF E6 ED */	bl fn_802AFB74
/* 802B148C 002A720C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B1490 002A7210  7C 08 03 A6 */	mtlr r0
/* 802B1494 002A7214  38 21 00 20 */	addi r1, r1, 0x20
/* 802B1498 002A7218  4E 80 00 20 */	blr
.endfn fn_802B1454
