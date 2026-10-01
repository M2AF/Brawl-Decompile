.include "macros.inc"
.file "auto_fn_802C23B8_text"

# 0x80007D00..0x80007D08 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007D00 | size: 0x8
.obj "@etb_80007D00", local
.hidden "@etb_80007D00"
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
.endobj "@etb_80007D00"

# 0x8000AA68..0x8000AA74 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AA68 | size: 0xC
.obj "@eti_8000AA68", local
.hidden "@eti_8000AA68"
	.4byte fn_802C23B8
	.4byte 0x000000CC
	.4byte "@etb_80007D00"
.endobj "@eti_8000AA68"

# 0x802C23B8..0x802C2484 | size: 0xCC
.text
.balign 4

# .text:0x0 | 0x802C23B8 | size: 0xCC
.fn fn_802C23B8, global
/* 802C23B8 002B8138  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802C23BC 002B813C  7C 08 02 A6 */	mflr r0
/* 802C23C0 002B8140  3C 80 80 2C */	lis r4, fn_802C2484@ha
/* 802C23C4 002B8144  3C C0 80 2C */	lis r6, fn_802C3AB0@ha
/* 802C23C8 002B8148  90 01 00 44 */	stw r0, 0x44(r1)
/* 802C23CC 002B814C  3D 00 80 2C */	lis r8, fn_802C3B40@ha
/* 802C23D0 002B8150  3C E0 80 2C */	lis r7, fn_802C3B88@ha
/* 802C23D4 002B8154  38 84 24 84 */	addi r4, r4, fn_802C2484@l
/* 802C23D8 002B8158  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802C23DC 002B815C  38 C6 3A B0 */	addi r6, r6, fn_802C3AB0@l
/* 802C23E0 002B8160  39 08 3B 40 */	addi r8, r8, fn_802C3B40@l
/* 802C23E4 002B8164  38 E7 3B 88 */	addi r7, r7, fn_802C3B88@l
/* 802C23E8 002B8168  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802C23EC 002B816C  3B E0 00 00 */	li r31, 0x0
/* 802C23F0 002B8170  38 00 00 01 */	li r0, 0x1
/* 802C23F4 002B8174  7C 7E 1B 78 */	mr r30, r3
/* 802C23F8 002B8178  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802C23FC 002B817C  38 81 00 1C */	addi r4, r1, 0x1c
/* 802C2400 002B8180  38 A0 00 07 */	li r5, 0x7
/* 802C2404 002B8184  90 C1 00 20 */	stw r6, 0x20(r1)
/* 802C2408 002B8188  38 C0 00 04 */	li r6, 0x4
/* 802C240C 002B818C  91 01 00 24 */	stw r8, 0x24(r1)
/* 802C2410 002B8190  90 E1 00 28 */	stw r7, 0x28(r1)
/* 802C2414 002B8194  98 01 00 2C */	stb r0, 0x2c(r1)
/* 802C2418 002B8198  9B E1 00 2D */	stb r31, 0x2d(r1)
/* 802C241C 002B819C  48 00 9C D1 */	bl fn_802CC0EC
/* 802C2420 002B81A0  3C 60 80 2C */	lis r3, fn_802C2558@ha
/* 802C2424 002B81A4  3C A0 80 2C */	lis r5, fn_802C3758@ha
/* 802C2428 002B81A8  3D 00 80 2C */	lis r8, fn_802C31C8@ha
/* 802C242C 002B81AC  3C E0 80 2B */	lis r7, fn_802B7FD0@ha
/* 802C2430 002B81B0  38 63 25 58 */	addi r3, r3, fn_802C2558@l
/* 802C2434 002B81B4  38 A5 37 58 */	addi r5, r5, fn_802C3758@l
/* 802C2438 002B81B8  39 08 31 C8 */	addi r8, r8, fn_802C31C8@l
/* 802C243C 002B81BC  38 E7 7F D0 */	addi r7, r7, fn_802B7FD0@l
/* 802C2440 002B81C0  90 61 00 08 */	stw r3, 0x8(r1)
/* 802C2444 002B81C4  7F C3 F3 78 */	mr r3, r30
/* 802C2448 002B81C8  38 81 00 08 */	addi r4, r1, 0x8
/* 802C244C 002B81CC  38 C0 00 07 */	li r6, 0x7
/* 802C2450 002B81D0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 802C2454 002B81D4  38 A0 00 04 */	li r5, 0x4
/* 802C2458 002B81D8  91 01 00 10 */	stw r8, 0x10(r1)
/* 802C245C 002B81DC  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802C2460 002B81E0  9B E1 00 18 */	stb r31, 0x18(r1)
/* 802C2464 002B81E4  9B E1 00 19 */	stb r31, 0x19(r1)
/* 802C2468 002B81E8  48 00 9C 85 */	bl fn_802CC0EC
/* 802C246C 002B81EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802C2470 002B81F0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802C2474 002B81F4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802C2478 002B81F8  7C 08 03 A6 */	mtlr r0
/* 802C247C 002B81FC  38 21 00 40 */	addi r1, r1, 0x40
/* 802C2480 002B8200  4E 80 00 20 */	blr
.endfn fn_802C23B8
