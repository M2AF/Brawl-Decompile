.include "macros.inc"
.file "auto_fn_802AC30C_text"

# 0x80006F5C..0x80006F64 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006F5C | size: 0x8
.obj "@etb_80006F5C", local
.hidden "@etb_80006F5C"
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
.endobj "@etb_80006F5C"

# 0x8000A144..0x8000A150 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A144 | size: 0xC
.obj "@eti_8000A144", local
.hidden "@eti_8000A144"
	.4byte fn_802AC30C
	.4byte 0x000000CC
	.4byte "@etb_80006F5C"
.endobj "@eti_8000A144"

# 0x802AC30C..0x802AC3D8 | size: 0xCC
.text
.balign 4

# .text:0x0 | 0x802AC30C | size: 0xCC
.fn fn_802AC30C, global
/* 802AC30C 002A208C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802AC310 002A2090  7C 08 02 A6 */	mflr r0
/* 802AC314 002A2094  3C 80 80 2B */	lis r4, fn_802AC3D8@ha
/* 802AC318 002A2098  3C C0 80 2B */	lis r6, fn_802AE420@ha
/* 802AC31C 002A209C  90 01 00 44 */	stw r0, 0x44(r1)
/* 802AC320 002A20A0  3D 00 80 2B */	lis r8, fn_802AE4B0@ha
/* 802AC324 002A20A4  3C E0 80 2B */	lis r7, fn_802AE4F8@ha
/* 802AC328 002A20A8  38 84 C3 D8 */	addi r4, r4, fn_802AC3D8@l
/* 802AC32C 002A20AC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802AC330 002A20B0  38 C6 E4 20 */	addi r6, r6, fn_802AE420@l
/* 802AC334 002A20B4  39 08 E4 B0 */	addi r8, r8, fn_802AE4B0@l
/* 802AC338 002A20B8  38 E7 E4 F8 */	addi r7, r7, fn_802AE4F8@l
/* 802AC33C 002A20BC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802AC340 002A20C0  3B E0 00 00 */	li r31, 0x0
/* 802AC344 002A20C4  38 00 00 01 */	li r0, 0x1
/* 802AC348 002A20C8  7C 7E 1B 78 */	mr r30, r3
/* 802AC34C 002A20CC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802AC350 002A20D0  38 81 00 1C */	addi r4, r1, 0x1c
/* 802AC354 002A20D4  38 A0 00 06 */	li r5, 0x6
/* 802AC358 002A20D8  90 C1 00 20 */	stw r6, 0x20(r1)
/* 802AC35C 002A20DC  38 C0 00 08 */	li r6, 0x8
/* 802AC360 002A20E0  91 01 00 24 */	stw r8, 0x24(r1)
/* 802AC364 002A20E4  90 E1 00 28 */	stw r7, 0x28(r1)
/* 802AC368 002A20E8  98 01 00 2C */	stb r0, 0x2c(r1)
/* 802AC36C 002A20EC  9B E1 00 2D */	stb r31, 0x2d(r1)
/* 802AC370 002A20F0  48 01 FD 7D */	bl fn_802CC0EC
/* 802AC374 002A20F4  3C 60 80 2B */	lis r3, fn_802AC4F4@ha
/* 802AC378 002A20F8  3C A0 80 2B */	lis r5, fn_802AD7F0@ha
/* 802AC37C 002A20FC  3D 00 80 2B */	lis r8, fn_802ACC44@ha
/* 802AC380 002A2100  3C E0 80 2B */	lis r7, fn_802B7FD0@ha
/* 802AC384 002A2104  38 63 C4 F4 */	addi r3, r3, fn_802AC4F4@l
/* 802AC388 002A2108  38 A5 D7 F0 */	addi r5, r5, fn_802AD7F0@l
/* 802AC38C 002A210C  39 08 CC 44 */	addi r8, r8, fn_802ACC44@l
/* 802AC390 002A2110  38 E7 7F D0 */	addi r7, r7, fn_802B7FD0@l
/* 802AC394 002A2114  90 61 00 08 */	stw r3, 0x8(r1)
/* 802AC398 002A2118  7F C3 F3 78 */	mr r3, r30
/* 802AC39C 002A211C  38 81 00 08 */	addi r4, r1, 0x8
/* 802AC3A0 002A2120  38 C0 00 06 */	li r6, 0x6
/* 802AC3A4 002A2124  90 A1 00 0C */	stw r5, 0xc(r1)
/* 802AC3A8 002A2128  38 A0 00 08 */	li r5, 0x8
/* 802AC3AC 002A212C  91 01 00 10 */	stw r8, 0x10(r1)
/* 802AC3B0 002A2130  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802AC3B4 002A2134  9B E1 00 18 */	stb r31, 0x18(r1)
/* 802AC3B8 002A2138  9B E1 00 19 */	stb r31, 0x19(r1)
/* 802AC3BC 002A213C  48 01 FD 31 */	bl fn_802CC0EC
/* 802AC3C0 002A2140  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802AC3C4 002A2144  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802AC3C8 002A2148  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802AC3CC 002A214C  7C 08 03 A6 */	mtlr r0
/* 802AC3D0 002A2150  38 21 00 40 */	addi r1, r1, 0x40
/* 802AC3D4 002A2154  4E 80 00 20 */	blr
.endfn fn_802AC30C
