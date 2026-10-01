.include "macros.inc"
.file "auto_fn_802AA35C_text"

# 0x80006E9C..0x80006EA4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006E9C | size: 0x8
.obj "@etb_80006E9C", local
.hidden "@etb_80006E9C"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_80006E9C"

# 0x8000A084..0x8000A090 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A084 | size: 0xC
.obj "@eti_8000A084", local
.hidden "@eti_8000A084"
	.4byte fn_802AA35C
	.4byte 0x0000006C
	.4byte "@etb_80006E9C"
.endobj "@eti_8000A084"

# 0x802AA35C..0x802AA3C8 | size: 0x6C
.text
.balign 4

# .text:0x0 | 0x802AA35C | size: 0x6C
.fn fn_802AA35C, global
/* 802AA35C 002A00DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AA360 002A00E0  7C 08 02 A6 */	mflr r0
/* 802AA364 002A00E4  C0 02 AB E0 */	lfs f0, lbl_805A3F00@sda21(r0)
/* 802AA368 002A00E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AA36C 002A00EC  80 E5 00 00 */	lwz r7, 0x0(r5)
/* 802AA370 002A00F0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 802AA374 002A00F4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 802AA378 002A00F8  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802AA37C 002A00FC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802AA380 002A0100  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802AA384 002A0104  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 802AA388 002A0108  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 802AA38C 002A010C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 802AA390 002A0110  80 E7 00 10 */	lwz r7, 0x10(r7)
/* 802AA394 002A0114  90 81 00 08 */	stw r4, 0x8(r1)
/* 802AA398 002A0118  38 81 00 08 */	addi r4, r1, 0x8
/* 802AA39C 002A011C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 802AA3A0 002A0120  90 C1 00 14 */	stw r6, 0x14(r1)
/* 802AA3A4 002A0124  80 03 00 08 */	lwz r0, 0x8(r3)
/* 802AA3A8 002A0128  38 63 00 30 */	addi r3, r3, 0x30
/* 802AA3AC 002A012C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802AA3B0 002A0130  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802AA3B4 002A0134  48 05 46 A1 */	bl fn_802FEA54
/* 802AA3B8 002A0138  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AA3BC 002A013C  7C 08 03 A6 */	mtlr r0
/* 802AA3C0 002A0140  38 21 00 20 */	addi r1, r1, 0x20
/* 802AA3C4 002A0144  4E 80 00 20 */	blr
.endfn fn_802AA35C
