.include "macros.inc"
.file "auto_fn_802B4800_text"

# 0x800074AC..0x800074B4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800074AC | size: 0x8
.obj "@etb_800074AC", local
.hidden "@etb_800074AC"
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
.endobj "@etb_800074AC"

# 0x8000A4BC..0x8000A4C8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A4BC | size: 0xC
.obj "@eti_8000A4BC", local
.hidden "@eti_8000A4BC"
	.4byte fn_802B4800
	.4byte 0x000000CC
	.4byte "@etb_800074AC"
.endobj "@eti_8000A4BC"

# 0x802B4800..0x802B48CC | size: 0xCC
.text
.balign 4

# .text:0x0 | 0x802B4800 | size: 0xCC
.fn fn_802B4800, global
/* 802B4800 002AA580  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802B4804 002AA584  7C 08 02 A6 */	mflr r0
/* 802B4808 002AA588  3C 80 80 2B */	lis r4, fn_802B4948@ha
/* 802B480C 002AA58C  3C A0 80 2B */	lis r5, fn_802B6C64@ha
/* 802B4810 002AA590  90 01 00 44 */	stw r0, 0x44(r1)
/* 802B4814 002AA594  3D 00 80 2B */	lis r8, fn_802B6CF4@ha
/* 802B4818 002AA598  3C E0 80 2B */	lis r7, fn_802B6D3C@ha
/* 802B481C 002AA59C  38 84 49 48 */	addi r4, r4, fn_802B4948@l
/* 802B4820 002AA5A0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802B4824 002AA5A4  3B E0 00 01 */	li r31, 0x1
/* 802B4828 002AA5A8  38 A5 6C 64 */	addi r5, r5, fn_802B6C64@l
/* 802B482C 002AA5AC  39 08 6C F4 */	addi r8, r8, fn_802B6CF4@l
/* 802B4830 002AA5B0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802B4834 002AA5B4  38 E7 6D 3C */	addi r7, r7, fn_802B6D3C@l
/* 802B4838 002AA5B8  7C 7E 1B 78 */	mr r30, r3
/* 802B483C 002AA5BC  38 C0 00 15 */	li r6, 0x15
/* 802B4840 002AA5C0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802B4844 002AA5C4  38 81 00 1C */	addi r4, r1, 0x1c
/* 802B4848 002AA5C8  90 A1 00 20 */	stw r5, 0x20(r1)
/* 802B484C 002AA5CC  38 A0 00 12 */	li r5, 0x12
/* 802B4850 002AA5D0  91 01 00 24 */	stw r8, 0x24(r1)
/* 802B4854 002AA5D4  90 E1 00 28 */	stw r7, 0x28(r1)
/* 802B4858 002AA5D8  9B E1 00 2C */	stb r31, 0x2c(r1)
/* 802B485C 002AA5DC  9B E1 00 2D */	stb r31, 0x2d(r1)
/* 802B4860 002AA5E0  48 01 78 8D */	bl fn_802CC0EC
/* 802B4864 002AA5E4  3C 60 80 2B */	lis r3, fn_802B48CC@ha
/* 802B4868 002AA5E8  3C 80 80 2B */	lis r4, fn_802B4B1C@ha
/* 802B486C 002AA5EC  3D 00 80 2B */	lis r8, fn_802B52A0@ha
/* 802B4870 002AA5F0  3C E0 80 2B */	lis r7, fn_802B5B50@ha
/* 802B4874 002AA5F4  38 63 48 CC */	addi r3, r3, fn_802B48CC@l
/* 802B4878 002AA5F8  38 84 4B 1C */	addi r4, r4, fn_802B4B1C@l
/* 802B487C 002AA5FC  39 08 52 A0 */	addi r8, r8, fn_802B52A0@l
/* 802B4880 002AA600  38 E7 5B 50 */	addi r7, r7, fn_802B5B50@l
/* 802B4884 002AA604  38 00 00 00 */	li r0, 0x0
/* 802B4888 002AA608  90 61 00 08 */	stw r3, 0x8(r1)
/* 802B488C 002AA60C  7F C3 F3 78 */	mr r3, r30
/* 802B4890 002AA610  38 A0 00 15 */	li r5, 0x15
/* 802B4894 002AA614  90 81 00 0C */	stw r4, 0xc(r1)
/* 802B4898 002AA618  38 81 00 08 */	addi r4, r1, 0x8
/* 802B489C 002AA61C  38 C0 00 12 */	li r6, 0x12
/* 802B48A0 002AA620  91 01 00 10 */	stw r8, 0x10(r1)
/* 802B48A4 002AA624  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802B48A8 002AA628  98 01 00 18 */	stb r0, 0x18(r1)
/* 802B48AC 002AA62C  9B E1 00 19 */	stb r31, 0x19(r1)
/* 802B48B0 002AA630  48 01 78 3D */	bl fn_802CC0EC
/* 802B48B4 002AA634  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802B48B8 002AA638  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802B48BC 002AA63C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802B48C0 002AA640  7C 08 03 A6 */	mtlr r0
/* 802B48C4 002AA644  38 21 00 40 */	addi r1, r1, 0x40
/* 802B48C8 002AA648  4E 80 00 20 */	blr
.endfn fn_802B4800
