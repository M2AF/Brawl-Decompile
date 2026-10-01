.include "macros.inc"
.file "auto_fn_802C0A38_text"

# 0x80007BD0..0x80007BD8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007BD0 | size: 0x8
.obj "@etb_80007BD0", local
.hidden "@etb_80007BD0"
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
.endobj "@etb_80007BD0"

# 0x8000A960..0x8000A96C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A960 | size: 0xC
.obj "@eti_8000A960", local
.hidden "@eti_8000A960"
	.4byte fn_802C0A38
	.4byte 0x000000CC
	.4byte "@etb_80007BD0"
.endobj "@eti_8000A960"

# 0x802C0A38..0x802C0B04 | size: 0xCC
.text
.balign 4

# .text:0x0 | 0x802C0A38 | size: 0xCC
.fn fn_802C0A38, global
/* 802C0A38 002B67B8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802C0A3C 002B67BC  7C 08 02 A6 */	mflr r0
/* 802C0A40 002B67C0  3C 80 80 2C */	lis r4, fn_802C0B80@ha
/* 802C0A44 002B67C4  3C A0 80 2B */	lis r5, fn_802B0FE0@ha
/* 802C0A48 002B67C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 802C0A4C 002B67CC  3D 00 80 2B */	lis r8, fn_802B1028@ha
/* 802C0A50 002B67D0  3C E0 80 2B */	lis r7, fn_802B1070@ha
/* 802C0A54 002B67D4  38 84 0B 80 */	addi r4, r4, fn_802C0B80@l
/* 802C0A58 002B67D8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802C0A5C 002B67DC  3B E0 00 01 */	li r31, 0x1
/* 802C0A60 002B67E0  38 A5 0F E0 */	addi r5, r5, fn_802B0FE0@l
/* 802C0A64 002B67E4  39 08 10 28 */	addi r8, r8, fn_802B1028@l
/* 802C0A68 002B67E8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802C0A6C 002B67EC  38 E7 10 70 */	addi r7, r7, fn_802B1070@l
/* 802C0A70 002B67F0  7C 7E 1B 78 */	mr r30, r3
/* 802C0A74 002B67F4  38 C0 00 02 */	li r6, 0x2
/* 802C0A78 002B67F8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802C0A7C 002B67FC  38 81 00 1C */	addi r4, r1, 0x1c
/* 802C0A80 002B6800  90 A1 00 20 */	stw r5, 0x20(r1)
/* 802C0A84 002B6804  38 A0 FF FF */	li r5, -0x1
/* 802C0A88 002B6808  91 01 00 24 */	stw r8, 0x24(r1)
/* 802C0A8C 002B680C  90 E1 00 28 */	stw r7, 0x28(r1)
/* 802C0A90 002B6810  9B E1 00 2C */	stb r31, 0x2c(r1)
/* 802C0A94 002B6814  9B E1 00 2D */	stb r31, 0x2d(r1)
/* 802C0A98 002B6818  48 00 B6 55 */	bl fn_802CC0EC
/* 802C0A9C 002B681C  3C 60 80 2C */	lis r3, fn_802C0B04@ha
/* 802C0AA0 002B6820  3C 80 80 2C */	lis r4, fn_802C1AB8@ha
/* 802C0AA4 002B6824  3D 00 80 2C */	lis r8, fn_802C13D0@ha
/* 802C0AA8 002B6828  3C E0 80 2C */	lis r7, fn_802C1738@ha
/* 802C0AAC 002B682C  38 63 0B 04 */	addi r3, r3, fn_802C0B04@l
/* 802C0AB0 002B6830  38 84 1A B8 */	addi r4, r4, fn_802C1AB8@l
/* 802C0AB4 002B6834  39 08 13 D0 */	addi r8, r8, fn_802C13D0@l
/* 802C0AB8 002B6838  38 E7 17 38 */	addi r7, r7, fn_802C1738@l
/* 802C0ABC 002B683C  38 00 00 00 */	li r0, 0x0
/* 802C0AC0 002B6840  90 61 00 08 */	stw r3, 0x8(r1)
/* 802C0AC4 002B6844  7F C3 F3 78 */	mr r3, r30
/* 802C0AC8 002B6848  38 A0 00 02 */	li r5, 0x2
/* 802C0ACC 002B684C  90 81 00 0C */	stw r4, 0xc(r1)
/* 802C0AD0 002B6850  38 81 00 08 */	addi r4, r1, 0x8
/* 802C0AD4 002B6854  38 C0 FF FF */	li r6, -0x1
/* 802C0AD8 002B6858  91 01 00 10 */	stw r8, 0x10(r1)
/* 802C0ADC 002B685C  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802C0AE0 002B6860  98 01 00 18 */	stb r0, 0x18(r1)
/* 802C0AE4 002B6864  9B E1 00 19 */	stb r31, 0x19(r1)
/* 802C0AE8 002B6868  48 00 B6 05 */	bl fn_802CC0EC
/* 802C0AEC 002B686C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802C0AF0 002B6870  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802C0AF4 002B6874  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802C0AF8 002B6878  7C 08 03 A6 */	mtlr r0
/* 802C0AFC 002B687C  38 21 00 40 */	addi r1, r1, 0x40
/* 802C0B00 002B6880  4E 80 00 20 */	blr
.endfn fn_802C0A38
