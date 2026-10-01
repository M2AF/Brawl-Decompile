.include "macros.inc"
.file "auto_fn_802A3D38_text"

# 0x80006A50..0x80006A58 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006A50 | size: 0x8
.obj "@etb_80006A50", local
.hidden "@etb_80006A50"
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
.endobj "@etb_80006A50"

# 0x80009DD8..0x80009DE4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009DD8 | size: 0xC
.obj "@eti_80009DD8", local
.hidden "@eti_80009DD8"
	.4byte fn_802A3D38
	.4byte 0x0000006C
	.4byte "@etb_80006A50"
.endobj "@eti_80009DD8"

# 0x802A3D38..0x802A3DA4 | size: 0x6C
.text
.balign 4

# .text:0x0 | 0x802A3D38 | size: 0x6C
.fn fn_802A3D38, global
/* 802A3D38 00299AB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A3D3C 00299ABC  7C 08 02 A6 */	mflr r0
/* 802A3D40 00299AC0  38 80 00 40 */	li r4, 0x40
/* 802A3D44 00299AC4  38 A0 00 1D */	li r5, 0x1d
/* 802A3D48 00299AC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A3D4C 00299ACC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A3D50 00299AD0  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802A3D54 00299AD4  7C DE 33 78 */	mr r30, r6
/* 802A3D58 00299AD8  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A3D5C 00299ADC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A3D60 00299AE0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802A3D64 00299AE4  7D 89 03 A6 */	mtctr r12
/* 802A3D68 00299AE8  4E 80 04 21 */	bctrl
/* 802A3D6C 00299AEC  38 00 00 40 */	li r0, 0x40
/* 802A3D70 00299AF0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A3D74 00299AF4  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802A3D78 00299AF8  7C 7F 1B 78 */	mr r31, r3
/* 802A3D7C 00299AFC  41 82 00 0C */	beq .L_802A3D88
/* 802A3D80 00299B00  7F C4 F3 78 */	mr r4, r30
/* 802A3D84 00299B04  4B FF FC C9 */	bl fn_802A3A4C
.L_802A3D88:
/* 802A3D88 00299B08  7F E3 FB 78 */	mr r3, r31
/* 802A3D8C 00299B0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A3D90 00299B10  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802A3D94 00299B14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A3D98 00299B18  7C 08 03 A6 */	mtlr r0
/* 802A3D9C 00299B1C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A3DA0 00299B20  4E 80 00 20 */	blr
.endfn fn_802A3D38
