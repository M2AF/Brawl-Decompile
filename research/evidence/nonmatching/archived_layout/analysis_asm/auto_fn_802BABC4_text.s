.include "macros.inc"
.file "auto_fn_802BABC4_text"

# 0x8000785C..0x80007864 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000785C | size: 0x8
.obj "@etb_8000785C", local
.hidden "@etb_8000785C"
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
.endobj "@etb_8000785C"

# 0x8000A72C..0x8000A738 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A72C | size: 0xC
.obj "@eti_8000A72C", local
.hidden "@eti_8000A72C"
	.4byte fn_802BABC4
	.4byte 0x000000CC
	.4byte "@etb_8000785C"
.endobj "@eti_8000A72C"

# 0x802BABC4..0x802BAC90 | size: 0xCC
.text
.balign 4

# .text:0x0 | 0x802BABC4 | size: 0xCC
.fn fn_802BABC4, global
/* 802BABC4 002B0944  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802BABC8 002B0948  7C 08 02 A6 */	mflr r0
/* 802BABCC 002B094C  3C 80 80 2C */	lis r4, fn_802BAD0C@ha
/* 802BABD0 002B0950  3C A0 80 2C */	lis r5, fn_802BD2C0@ha
/* 802BABD4 002B0954  90 01 00 44 */	stw r0, 0x44(r1)
/* 802BABD8 002B0958  3D 00 80 2C */	lis r8, fn_802BD350@ha
/* 802BABDC 002B095C  3C E0 80 2C */	lis r7, fn_802BD398@ha
/* 802BABE0 002B0960  38 84 AD 0C */	addi r4, r4, fn_802BAD0C@l
/* 802BABE4 002B0964  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802BABE8 002B0968  3B E0 00 01 */	li r31, 0x1
/* 802BABEC 002B096C  38 A5 D2 C0 */	addi r5, r5, fn_802BD2C0@l
/* 802BABF0 002B0970  39 08 D3 50 */	addi r8, r8, fn_802BD350@l
/* 802BABF4 002B0974  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802BABF8 002B0978  38 E7 D3 98 */	addi r7, r7, fn_802BD398@l
/* 802BABFC 002B097C  7C 7E 1B 78 */	mr r30, r3
/* 802BAC00 002B0980  38 C0 00 0B */	li r6, 0xb
/* 802BAC04 002B0984  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802BAC08 002B0988  38 81 00 1C */	addi r4, r1, 0x1c
/* 802BAC0C 002B098C  90 A1 00 20 */	stw r5, 0x20(r1)
/* 802BAC10 002B0990  38 A0 FF FF */	li r5, -0x1
/* 802BAC14 002B0994  91 01 00 24 */	stw r8, 0x24(r1)
/* 802BAC18 002B0998  90 E1 00 28 */	stw r7, 0x28(r1)
/* 802BAC1C 002B099C  9B E1 00 2C */	stb r31, 0x2c(r1)
/* 802BAC20 002B09A0  9B E1 00 2D */	stb r31, 0x2d(r1)
/* 802BAC24 002B09A4  48 01 14 C9 */	bl fn_802CC0EC
/* 802BAC28 002B09A8  3C 60 80 2C */	lis r3, fn_802BAC90@ha
/* 802BAC2C 002B09AC  3C 80 80 2C */	lis r4, fn_802BCCE0@ha
/* 802BAC30 002B09B0  3D 00 80 2C */	lis r8, fn_802BBC8C@ha
/* 802BAC34 002B09B4  3C E0 80 2C */	lis r7, fn_802BC4A8@ha
/* 802BAC38 002B09B8  38 63 AC 90 */	addi r3, r3, fn_802BAC90@l
/* 802BAC3C 002B09BC  38 84 CC E0 */	addi r4, r4, fn_802BCCE0@l
/* 802BAC40 002B09C0  39 08 BC 8C */	addi r8, r8, fn_802BBC8C@l
/* 802BAC44 002B09C4  38 E7 C4 A8 */	addi r7, r7, fn_802BC4A8@l
/* 802BAC48 002B09C8  38 00 00 00 */	li r0, 0x0
/* 802BAC4C 002B09CC  90 61 00 08 */	stw r3, 0x8(r1)
/* 802BAC50 002B09D0  7F C3 F3 78 */	mr r3, r30
/* 802BAC54 002B09D4  38 A0 00 0B */	li r5, 0xb
/* 802BAC58 002B09D8  90 81 00 0C */	stw r4, 0xc(r1)
/* 802BAC5C 002B09DC  38 81 00 08 */	addi r4, r1, 0x8
/* 802BAC60 002B09E0  38 C0 FF FF */	li r6, -0x1
/* 802BAC64 002B09E4  91 01 00 10 */	stw r8, 0x10(r1)
/* 802BAC68 002B09E8  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802BAC6C 002B09EC  98 01 00 18 */	stb r0, 0x18(r1)
/* 802BAC70 002B09F0  9B E1 00 19 */	stb r31, 0x19(r1)
/* 802BAC74 002B09F4  48 01 14 79 */	bl fn_802CC0EC
/* 802BAC78 002B09F8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802BAC7C 002B09FC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802BAC80 002B0A00  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802BAC84 002B0A04  7C 08 03 A6 */	mtlr r0
/* 802BAC88 002B0A08  38 21 00 40 */	addi r1, r1, 0x40
/* 802BAC8C 002B0A0C  4E 80 00 20 */	blr
.endfn fn_802BABC4
