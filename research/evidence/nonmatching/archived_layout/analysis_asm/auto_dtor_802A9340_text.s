.include "macros.inc"
.file "auto_dtor_802A9340_text"

# 0x80006D2C..0x80006D34 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006D2C | size: 0x8
.obj "@etb_80006D2C", local
.hidden "@etb_80006D2C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80006D2C"

# 0x80009FA0..0x80009FAC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009FA0 | size: 0xC
.obj "@eti_80009FA0", local
.hidden "@eti_80009FA0"
	.4byte dtor_802A9340
	.4byte 0x00000040
	.4byte "@etb_80006D2C"
.endobj "@eti_80009FA0"

# 0x802A9340..0x802A9380 | size: 0x40
.text
.balign 4

# .text:0x0 | 0x802A9340 | size: 0x40
.fn dtor_802A9340, global
/* 802A9340 0029F0C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A9344 0029F0C4  7C 08 02 A6 */	mflr r0
/* 802A9348 0029F0C8  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A934C 0029F0CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A9350 0029F0D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A9354 0029F0D4  7C 7F 1B 78 */	mr r31, r3
/* 802A9358 0029F0D8  41 82 00 10 */	beq .L_802A9368
/* 802A935C 0029F0DC  2C 04 00 00 */	cmpwi r4, 0x0
/* 802A9360 0029F0E0  40 81 00 08 */	ble .L_802A9368
/* 802A9364 0029F0E4  4B D6 35 65 */	bl fn_8000C8C8
.L_802A9368:
/* 802A9368 0029F0E8  7F E3 FB 78 */	mr r3, r31
/* 802A936C 0029F0EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A9370 0029F0F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A9374 0029F0F4  7C 08 03 A6 */	mtlr r0
/* 802A9378 0029F0F8  38 21 00 10 */	addi r1, r1, 0x10
/* 802A937C 0029F0FC  4E 80 00 20 */	blr
.endfn dtor_802A9340
