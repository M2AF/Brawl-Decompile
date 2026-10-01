.include "macros.inc"
.file "auto_fn_802A1FF4_text"

# 0x80006860..0x80006868 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006860 | size: 0x8
.obj "@etb_80006860", local
.hidden "@etb_80006860"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80006860"

# 0x80009C58..0x80009C64 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009C58 | size: 0xC
.obj "@eti_80009C58", local
.hidden "@eti_80009C58"
	.4byte fn_802A1FF4
	.4byte 0x000000CC
	.4byte "@etb_80006860"
.endobj "@eti_80009C58"

# 0x802A1FF4..0x802A20C0 | size: 0xCC
.text
.balign 4

# .text:0x0 | 0x802A1FF4 | size: 0xCC
.fn fn_802A1FF4, global
/* 802A1FF4 00297D74  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802A1FF8 00297D78  7C 08 02 A6 */	mflr r0
/* 802A1FFC 00297D7C  3C 80 80 2A */	lis r4, fn_802A213C@ha
/* 802A2000 00297D80  3C A0 80 2A */	lis r5, fn_802A34F8@ha
/* 802A2004 00297D84  90 01 00 44 */	stw r0, 0x44(r1)
/* 802A2008 00297D88  3D 00 80 2A */	lis r8, fn_802A3588@ha
/* 802A200C 00297D8C  3C E0 80 2A */	lis r7, fn_802A35D0@ha
/* 802A2010 00297D90  38 84 21 3C */	addi r4, r4, fn_802A213C@l
/* 802A2014 00297D94  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802A2018 00297D98  3B E0 00 01 */	li r31, 0x1
/* 802A201C 00297D9C  38 A5 34 F8 */	addi r5, r5, fn_802A34F8@l
/* 802A2020 00297DA0  39 08 35 88 */	addi r8, r8, fn_802A3588@l
/* 802A2024 00297DA4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802A2028 00297DA8  38 E7 35 D0 */	addi r7, r7, fn_802A35D0@l
/* 802A202C 00297DAC  7C 7E 1B 78 */	mr r30, r3
/* 802A2030 00297DB0  38 C0 00 16 */	li r6, 0x16
/* 802A2034 00297DB4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802A2038 00297DB8  38 81 00 1C */	addi r4, r1, 0x1c
/* 802A203C 00297DBC  90 A1 00 20 */	stw r5, 0x20(r1)
/* 802A2040 00297DC0  38 A0 FF FF */	li r5, -0x1
/* 802A2044 00297DC4  91 01 00 24 */	stw r8, 0x24(r1)
/* 802A2048 00297DC8  90 E1 00 28 */	stw r7, 0x28(r1)
/* 802A204C 00297DCC  9B E1 00 2C */	stb r31, 0x2c(r1)
/* 802A2050 00297DD0  9B E1 00 2D */	stb r31, 0x2d(r1)
/* 802A2054 00297DD4  48 02 A0 99 */	bl fn_802CC0EC
/* 802A2058 00297DD8  3C 60 80 2A */	lis r3, fn_802A20C0@ha
/* 802A205C 00297DDC  3C 80 80 2A */	lis r4, fn_802A3138@ha
/* 802A2060 00297DE0  3D 00 80 2A */	lis r8, fn_802A2E48@ha
/* 802A2064 00297DE4  3C E0 80 2A */	lis r7, fn_802A29A4@ha
/* 802A2068 00297DE8  38 63 20 C0 */	addi r3, r3, fn_802A20C0@l
/* 802A206C 00297DEC  38 84 31 38 */	addi r4, r4, fn_802A3138@l
/* 802A2070 00297DF0  39 08 2E 48 */	addi r8, r8, fn_802A2E48@l
/* 802A2074 00297DF4  38 E7 29 A4 */	addi r7, r7, fn_802A29A4@l
/* 802A2078 00297DF8  38 00 00 00 */	li r0, 0x0
/* 802A207C 00297DFC  90 61 00 08 */	stw r3, 0x8(r1)
/* 802A2080 00297E00  7F C3 F3 78 */	mr r3, r30
/* 802A2084 00297E04  38 A0 00 16 */	li r5, 0x16
/* 802A2088 00297E08  90 81 00 0C */	stw r4, 0xc(r1)
/* 802A208C 00297E0C  38 81 00 08 */	addi r4, r1, 0x8
/* 802A2090 00297E10  38 C0 FF FF */	li r6, -0x1
/* 802A2094 00297E14  91 01 00 10 */	stw r8, 0x10(r1)
/* 802A2098 00297E18  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802A209C 00297E1C  98 01 00 18 */	stb r0, 0x18(r1)
/* 802A20A0 00297E20  9B E1 00 19 */	stb r31, 0x19(r1)
/* 802A20A4 00297E24  48 02 A0 49 */	bl fn_802CC0EC
/* 802A20A8 00297E28  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802A20AC 00297E2C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802A20B0 00297E30  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802A20B4 00297E34  7C 08 03 A6 */	mtlr r0
/* 802A20B8 00297E38  38 21 00 40 */	addi r1, r1, 0x40
/* 802A20BC 00297E3C  4E 80 00 20 */	blr
.endfn fn_802A1FF4
