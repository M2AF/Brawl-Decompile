.include "macros.inc"
.file "auto_fn_802FB244_text"

# 0x8000865C..0x80008664 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000865C | size: 0x8
.obj "@etb_8000865C", local
.hidden "@etb_8000865C"
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
.endobj "@etb_8000865C"

# 0x8000B4DC..0x8000B4E8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B4DC | size: 0xC
.obj "@eti_8000B4DC", local
.hidden "@eti_8000B4DC"
	.4byte fn_802FB244
	.4byte 0x000000A4
	.4byte "@etb_8000865C"
.endobj "@eti_8000B4DC"

# 0x802FB244..0x802FB2E8 | size: 0xA4
.text
.balign 4

# .text:0x0 | 0x802FB244 | size: 0xA4
.fn fn_802FB244, global
/* 802FB244 002F0FC4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802FB248 002F0FC8  7C 08 02 A6 */	mflr r0
/* 802FB24C 002F0FCC  3D 80 80 30 */	lis r12, fn_802FB464@ha
/* 802FB250 002F0FD0  3D 60 80 30 */	lis r11, fn_802FB324@ha
/* 802FB254 002F0FD4  90 01 00 44 */	stw r0, 0x44(r1)
/* 802FB258 002F0FD8  3D 40 80 30 */	lis r10, fn_802FB3A4@ha
/* 802FB25C 002F0FDC  3D 20 80 30 */	lis r9, fn_802FB418@ha
/* 802FB260 002F0FE0  3D 00 80 30 */	lis r8, fn_802FB45C@ha
/* 802FB264 002F0FE4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802FB268 002F0FE8  3F E0 80 30 */	lis r31, fn_802FB2E8@ha
/* 802FB26C 002F0FEC  38 00 00 00 */	li r0, 0x0
/* 802FB270 002F0FF0  3C E0 80 30 */	lis r7, fn_802FB460@ha
/* 802FB274 002F0FF4  3B FF B2 E8 */	addi r31, r31, fn_802FB2E8@l
/* 802FB278 002F0FF8  39 8C B4 64 */	addi r12, r12, fn_802FB464@l
/* 802FB27C 002F0FFC  39 6B B3 24 */	addi r11, r11, fn_802FB324@l
/* 802FB280 002F1000  39 4A B3 A4 */	addi r10, r10, fn_802FB3A4@l
/* 802FB284 002F1004  39 29 B4 18 */	addi r9, r9, fn_802FB418@l
/* 802FB288 002F1008  39 08 B4 5C */	addi r8, r8, fn_802FB45C@l
/* 802FB28C 002F100C  38 E7 B4 60 */	addi r7, r7, fn_802FB460@l
/* 802FB290 002F1010  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FB294 002F1014  38 81 00 08 */	addi r4, r1, 0x8
/* 802FB298 002F1018  38 A0 00 07 */	li r5, 0x7
/* 802FB29C 002F101C  90 01 00 28 */	stw r0, 0x28(r1)
/* 802FB2A0 002F1020  38 C0 00 07 */	li r6, 0x7
/* 802FB2A4 002F1024  98 01 00 35 */	stb r0, 0x35(r1)
/* 802FB2A8 002F1028  93 E1 00 08 */	stw r31, 0x8(r1)
/* 802FB2AC 002F102C  91 81 00 30 */	stw r12, 0x30(r1)
/* 802FB2B0 002F1030  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802FB2B4 002F1034  91 61 00 10 */	stw r11, 0x10(r1)
/* 802FB2B8 002F1038  91 41 00 14 */	stw r10, 0x14(r1)
/* 802FB2BC 002F103C  91 21 00 18 */	stw r9, 0x18(r1)
/* 802FB2C0 002F1040  91 01 00 1C */	stw r8, 0x1c(r1)
/* 802FB2C4 002F1044  90 01 00 20 */	stw r0, 0x20(r1)
/* 802FB2C8 002F1048  90 E1 00 0C */	stw r7, 0xc(r1)
/* 802FB2CC 002F104C  98 01 00 34 */	stb r0, 0x34(r1)
/* 802FB2D0 002F1050  4B FD 0F 45 */	bl fn_802CC214
/* 802FB2D4 002F1054  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802FB2D8 002F1058  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802FB2DC 002F105C  7C 08 03 A6 */	mtlr r0
/* 802FB2E0 002F1060  38 21 00 40 */	addi r1, r1, 0x40
/* 802FB2E4 002F1064  4E 80 00 20 */	blr
.endfn fn_802FB244
