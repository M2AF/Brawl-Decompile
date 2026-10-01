.include "macros.inc"
.file "auto_fn_802D0D10_text"

# 0x80008408..0x80008410 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008408 | size: 0x8
.obj "@etb_80008408", local
.hidden "@etb_80008408"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_80008408"

# 0x8000B17C..0x8000B188 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B17C | size: 0xC
.obj "@eti_8000B17C", local
.hidden "@eti_8000B17C"
	.4byte fn_802D0D10
	.4byte 0x00000070
	.4byte "@etb_80008408"
.endobj "@eti_8000B17C"

# 0x802D0D10..0x802D0D80 | size: 0x70
.text
.balign 4

# .text:0x0 | 0x802D0D10 | size: 0x70
.fn fn_802D0D10, global
/* 802D0D10 002C6A90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D0D14 002C6A94  7C 08 02 A6 */	mflr r0
/* 802D0D18 002C6A98  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D0D1C 002C6A9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D0D20 002C6AA0  7C 9F 23 78 */	mr r31, r4
/* 802D0D24 002C6AA4  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802D0D28 002C6AA8  7C 7E 1B 78 */	mr r30, r3
/* 802D0D2C 002C6AAC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802D0D30 002C6AB0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D0D34 002C6AB4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802D0D38 002C6AB8  7D 89 03 A6 */	mtctr r12
/* 802D0D3C 002C6ABC  4E 80 04 21 */	bctrl
/* 802D0D40 002C6AC0  C0 5F 00 04 */	lfs f2, 0x4(r31)
/* 802D0D44 002C6AC4  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 802D0D48 002C6AC8  C0 9F 00 00 */	lfs f4, 0x0(r31)
/* 802D0D4C 002C6ACC  EC A2 00 32 */	fmuls f5, f2, f0
/* 802D0D50 002C6AD0  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 802D0D54 002C6AD4  C0 5F 00 08 */	lfs f2, 0x8(r31)
/* 802D0D58 002C6AD8  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 802D0D5C 002C6ADC  EC 64 28 FA */	fmadds f3, f4, f3, f5
/* 802D0D60 002C6AE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D0D64 002C6AE4  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802D0D68 002C6AE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D0D6C 002C6AEC  EC 02 18 3A */	fmadds f0, f2, f0, f3
/* 802D0D70 002C6AF0  EC 21 00 2A */	fadds f1, f1, f0
/* 802D0D74 002C6AF4  7C 08 03 A6 */	mtlr r0
/* 802D0D78 002C6AF8  38 21 00 10 */	addi r1, r1, 0x10
/* 802D0D7C 002C6AFC  4E 80 00 20 */	blr
.endfn fn_802D0D10
