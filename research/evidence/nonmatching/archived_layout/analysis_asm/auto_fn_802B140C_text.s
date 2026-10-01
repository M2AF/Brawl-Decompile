.include "macros.inc"
.file "auto_fn_802B140C_text"

# 0x80007310..0x80007328 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007310 | size: 0x18
.obj "@etb_80007310", local
.hidden "@etb_80007310"
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
.endobj "@etb_80007310"

# 0x8000A390..0x8000A39C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A390 | size: 0xC
.obj "@eti_8000A390", local
.hidden "@eti_8000A390"
	.4byte fn_802B140C
	.4byte 0x00000048
	.4byte "@etb_80007310"
.endobj "@eti_8000A390"

# 0x802B140C..0x802B1454 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802B140C | size: 0x48
.fn fn_802B140C, global
/* 802B140C 002A718C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B1410 002A7190  7C 08 02 A6 */	mflr r0
/* 802B1414 002A7194  3D 00 80 48 */	lis r8, lbl_80487178@ha
/* 802B1418 002A7198  7C 89 23 78 */	mr r9, r4
/* 802B141C 002A719C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B1420 002A71A0  38 00 00 00 */	li r0, 0x0
/* 802B1424 002A71A4  39 08 71 78 */	addi r8, r8, lbl_80487178@l
/* 802B1428 002A71A8  7C A4 2B 78 */	mr r4, r5
/* 802B142C 002A71AC  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802B1430 002A71B0  7D 25 4B 78 */	mr r5, r9
/* 802B1434 002A71B4  38 E1 00 08 */	addi r7, r1, 0x8
/* 802B1438 002A71B8  98 01 00 0C */	stb r0, 0xc(r1)
/* 802B143C 002A71BC  91 01 00 08 */	stw r8, 0x8(r1)
/* 802B1440 002A71C0  4B FF E8 F1 */	bl fn_802AFD30
/* 802B1444 002A71C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B1448 002A71C8  7C 08 03 A6 */	mtlr r0
/* 802B144C 002A71CC  38 21 00 20 */	addi r1, r1, 0x20
/* 802B1450 002A71D0  4E 80 00 20 */	blr
.endfn fn_802B140C
