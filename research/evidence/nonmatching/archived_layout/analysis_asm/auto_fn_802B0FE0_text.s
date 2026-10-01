.include "macros.inc"
.file "auto_fn_802B0FE0_text"

# 0x80007280..0x80007298 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007280 | size: 0x18
.obj "@etb_80007280", local
.hidden "@etb_80007280"
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
.endobj "@etb_80007280"

# 0x8000A348..0x8000A354 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A348 | size: 0xC
.obj "@eti_8000A348", local
.hidden "@eti_8000A348"
	.4byte fn_802B0FE0
	.4byte 0x00000048
	.4byte "@etb_80007280"
.endobj "@eti_8000A348"

# 0x802B0FE0..0x802B1028 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802B0FE0 | size: 0x48
.fn fn_802B0FE0, global
/* 802B0FE0 002A6D60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B0FE4 002A6D64  7C 08 02 A6 */	mflr r0
/* 802B0FE8 002A6D68  3C E0 80 48 */	lis r7, lbl_80487178@ha
/* 802B0FEC 002A6D6C  7C 68 1B 78 */	mr r8, r3
/* 802B0FF0 002A6D70  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B0FF4 002A6D74  38 00 00 00 */	li r0, 0x0
/* 802B0FF8 002A6D78  38 E7 71 78 */	addi r7, r7, lbl_80487178@l
/* 802B0FFC 002A6D7C  7C 83 23 78 */	mr r3, r4
/* 802B1000 002A6D80  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802B1004 002A6D84  7D 04 43 78 */	mr r4, r8
/* 802B1008 002A6D88  38 C1 00 08 */	addi r6, r1, 0x8
/* 802B100C 002A6D8C  98 01 00 0C */	stb r0, 0xc(r1)
/* 802B1010 002A6D90  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802B1014 002A6D94  48 01 0A A5 */	bl fn_802C1AB8
/* 802B1018 002A6D98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B101C 002A6D9C  7C 08 03 A6 */	mtlr r0
/* 802B1020 002A6DA0  38 21 00 20 */	addi r1, r1, 0x20
/* 802B1024 002A6DA4  4E 80 00 20 */	blr
.endfn fn_802B0FE0
