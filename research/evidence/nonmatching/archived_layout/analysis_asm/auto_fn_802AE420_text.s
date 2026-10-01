.include "macros.inc"
.file "auto_fn_802AE420_text"

# 0x80006FFC..0x80007014 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006FFC | size: 0x18
.obj "@etb_80006FFC", local
.hidden "@etb_80006FFC"
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
.endobj "@etb_80006FFC"

# 0x8000A1C8..0x8000A1D4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A1C8 | size: 0xC
.obj "@eti_8000A1C8", local
.hidden "@eti_8000A1C8"
	.4byte fn_802AE420
	.4byte 0x00000048
	.4byte "@etb_80006FFC"
.endobj "@eti_8000A1C8"

# 0x802AE420..0x802AE468 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802AE420 | size: 0x48
.fn fn_802AE420, global
/* 802AE420 002A41A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AE424 002A41A4  7C 08 02 A6 */	mflr r0
/* 802AE428 002A41A8  3C E0 80 48 */	lis r7, lbl_80487178@ha
/* 802AE42C 002A41AC  7C 68 1B 78 */	mr r8, r3
/* 802AE430 002A41B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AE434 002A41B4  38 00 00 00 */	li r0, 0x0
/* 802AE438 002A41B8  38 E7 71 78 */	addi r7, r7, lbl_80487178@l
/* 802AE43C 002A41BC  7C 83 23 78 */	mr r3, r4
/* 802AE440 002A41C0  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802AE444 002A41C4  7D 04 43 78 */	mr r4, r8
/* 802AE448 002A41C8  38 C1 00 08 */	addi r6, r1, 0x8
/* 802AE44C 002A41CC  98 01 00 0C */	stb r0, 0xc(r1)
/* 802AE450 002A41D0  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802AE454 002A41D4  4B FF F3 9D */	bl fn_802AD7F0
/* 802AE458 002A41D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AE45C 002A41DC  7C 08 03 A6 */	mtlr r0
/* 802AE460 002A41E0  38 21 00 20 */	addi r1, r1, 0x20
/* 802AE464 002A41E4  4E 80 00 20 */	blr
.endfn fn_802AE420
