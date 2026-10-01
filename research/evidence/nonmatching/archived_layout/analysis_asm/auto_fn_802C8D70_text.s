.include "macros.inc"
.file "auto_fn_802C8D70_text"

# 0x80008028..0x80008030 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008028 | size: 0x8
.obj "@etb_80008028", local
.hidden "@etb_80008028"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_80008028"

# 0x8000AD20..0x8000AD2C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AD20 | size: 0xC
.obj "@eti_8000AD20", local
.hidden "@eti_8000AD20"
	.4byte fn_802C8D70
	.4byte 0x000000D8
	.4byte "@etb_80008028"
.endobj "@eti_8000AD20"

# 0x802C8D70..0x802C8E48 | size: 0xD8
.text
.balign 4

# .text:0x0 | 0x802C8D70 | size: 0xD8
.fn fn_802C8D70, global
/* 802C8D70 002BEAF0  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802C8D74 002BEAF4  7C 2C 0B 78 */	mr r12, r1
/* 802C8D78 002BEAF8  21 6B FF B0 */	subfic r11, r11, -0x50
/* 802C8D7C 002BEAFC  7C 21 59 6E */	stwux r1, r1, r11
/* 802C8D80 002BEB00  7C 08 02 A6 */	mflr r0
/* 802C8D84 002BEB04  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 802C8D88 002BEB08  90 0C 00 04 */	stw r0, 0x4(r12)
/* 802C8D8C 002BEB0C  80 A4 00 20 */	lwz r5, 0x20(r4)
/* 802C8D90 002BEB10  FC 40 10 50 */	fneg f2, f2
/* 802C8D94 002BEB14  93 EC FF FC */	stw r31, -0x4(r12)
/* 802C8D98 002BEB18  7C 7F 1B 78 */	mr r31, r3
/* 802C8D9C 002BEB1C  80 04 00 24 */	lwz r0, 0x24(r4)
/* 802C8DA0 002BEB20  90 A1 00 34 */	stw r5, 0x34(r1)
/* 802C8DA4 002BEB24  C0 E4 00 1C */	lfs f7, 0x1c(r4)
/* 802C8DA8 002BEB28  90 01 00 30 */	stw r0, 0x30(r1)
/* 802C8DAC 002BEB2C  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 802C8DB0 002BEB30  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 802C8DB4 002BEB34  C0 A4 00 04 */	lfs f5, 0x4(r4)
/* 802C8DB8 002BEB38  EC 67 00 7A */	fmadds f3, f7, f1, f0
/* 802C8DBC 002BEB3C  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 802C8DC0 002BEB40  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 802C8DC4 002BEB44  C0 84 00 08 */	lfs f4, 0x8(r4)
/* 802C8DC8 002BEB48  FC 20 08 50 */	fneg f1, f1
/* 802C8DCC 002BEB4C  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 802C8DD0 002BEB50  C0 64 00 0C */	lfs f3, 0xc(r4)
/* 802C8DD4 002BEB54  FC 00 00 50 */	fneg f0, f0
/* 802C8DD8 002BEB58  C0 C3 00 14 */	lfs f6, 0x14(r3)
/* 802C8DDC 002BEB5C  38 81 00 10 */	addi r4, r1, 0x10
/* 802C8DE0 002BEB60  EC A7 29 BA */	fmadds f5, f7, f6, f5
/* 802C8DE4 002BEB64  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 802C8DE8 002BEB68  C0 A3 00 18 */	lfs f5, 0x18(r3)
/* 802C8DEC 002BEB6C  EC 87 21 7A */	fmadds f4, f7, f5, f4
/* 802C8DF0 002BEB70  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 802C8DF4 002BEB74  C0 83 00 1C */	lfs f4, 0x1c(r3)
/* 802C8DF8 002BEB78  EC 67 19 3A */	fmadds f3, f7, f4, f3
/* 802C8DFC 002BEB7C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 802C8E00 002BEB80  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 802C8E04 002BEB84  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 802C8E08 002BEB88  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 802C8E0C 002BEB8C  D0 E1 00 2C */	stfs f7, 0x2c(r1)
/* 802C8E10 002BEB90  80 63 00 20 */	lwz r3, 0x20(r3)
/* 802C8E14 002BEB94  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C8E18 002BEB98  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802C8E1C 002BEB9C  7D 89 03 A6 */	mtctr r12
/* 802C8E20 002BEBA0  4E 80 04 21 */	bctrl
/* 802C8E24 002BEBA4  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802C8E28 002BEBA8  C0 03 00 04 */	lfs f0, 0x4(r3)
/* 802C8E2C 002BEBAC  D0 1F 00 04 */	stfs f0, 0x4(r31)
/* 802C8E30 002BEBB0  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802C8E34 002BEBB4  83 EA FF FC */	lwz r31, -0x4(r10)
/* 802C8E38 002BEBB8  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 802C8E3C 002BEBBC  7C 08 03 A6 */	mtlr r0
/* 802C8E40 002BEBC0  7D 41 53 78 */	mr r1, r10
/* 802C8E44 002BEBC4  4E 80 00 20 */	blr
.endfn fn_802C8D70
