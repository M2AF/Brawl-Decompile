.include "macros.inc"
.file "auto_fn_802B1B3C_text"

# 0x800073D4..0x800073DC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800073D4 | size: 0x8
.obj "@etb_800073D4", local
.hidden "@etb_800073D4"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r27-r31
 */
	.4byte 0x280A0000
	.4byte 0x00000000
.endobj "@etb_800073D4"

# 0x8000A408..0x8000A414 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A408 | size: 0xC
.obj "@eti_8000A408", local
.hidden "@eti_8000A408"
	.4byte fn_802B1B3C
	.4byte 0x00000100
	.4byte "@etb_800073D4"
.endobj "@eti_8000A408"

# 0x802B1B3C..0x802B1C3C | size: 0x100
.text
.balign 4

# .text:0x0 | 0x802B1B3C | size: 0x100
.fn fn_802B1B3C, global
/* 802B1B3C 002A78BC  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802B1B40 002A78C0  7C 2C 0B 78 */	mr r12, r1
/* 802B1B44 002A78C4  21 6B FF 80 */	subfic r11, r11, -0x80
/* 802B1B48 002A78C8  7C 21 59 6E */	stwux r1, r1, r11
/* 802B1B4C 002A78CC  7C 08 02 A6 */	mflr r0
/* 802B1B50 002A78D0  7D 8B 63 78 */	mr r11, r12
/* 802B1B54 002A78D4  90 0C 00 04 */	stw r0, 0x4(r12)
/* 802B1B58 002A78D8  48 13 F7 C9 */	bl _savegpr_27
/* 802B1B5C 002A78DC  7C 87 23 78 */	mr r7, r4
/* 802B1B60 002A78E0  7C BC 2B 78 */	mr r28, r5
/* 802B1B64 002A78E4  83 C4 00 00 */	lwz r30, 0x0(r4)
/* 802B1B68 002A78E8  7C 7B 1B 78 */	mr r27, r3
/* 802B1B6C 002A78EC  83 E3 00 00 */	lwz r31, 0x0(r3)
/* 802B1B70 002A78F0  7C DD 33 78 */	mr r29, r6
/* 802B1B74 002A78F4  80 83 00 08 */	lwz r4, 0x8(r3)
/* 802B1B78 002A78F8  38 61 00 20 */	addi r3, r1, 0x20
/* 802B1B7C 002A78FC  80 A7 00 08 */	lwz r5, 0x8(r7)
/* 802B1B80 002A7900  4B FD 5A 81 */	bl fn_80287600
/* 802B1B84 002A7904  7F 83 E3 78 */	mr r3, r28
/* 802B1B88 002A7908  7F E4 FB 78 */	mr r4, r31
/* 802B1B8C 002A790C  7F C5 F3 78 */	mr r5, r30
/* 802B1B90 002A7910  38 C1 00 20 */	addi r6, r1, 0x20
/* 802B1B94 002A7914  38 E1 00 10 */	addi r7, r1, 0x10
/* 802B1B98 002A7918  48 06 7D 31 */	bl fn_803198C8
/* 802B1B9C 002A791C  80 7B 00 08 */	lwz r3, 0x8(r27)
/* 802B1BA0 002A7920  C0 A1 00 14 */	lfs f5, 0x14(r1)
/* 802B1BA4 002A7924  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 802B1BA8 002A7928  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 802B1BAC 002A792C  EC 45 00 32 */	fmuls f2, f5, f0
/* 802B1BB0 002A7930  C0 03 00 00 */	lfs f0, 0x0(r3)
/* 802B1BB4 002A7934  C0 C1 00 18 */	lfs f6, 0x18(r1)
/* 802B1BB8 002A7938  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 802B1BBC 002A793C  EC 44 10 3A */	fmadds f2, f4, f0, f2
/* 802B1BC0 002A7940  C0 02 AC 18 */	lfs f0, lbl_805A3F38@sda21(r0)
/* 802B1BC4 002A7944  EC 26 10 7A */	fmadds f1, f6, f1, f2
/* 802B1BC8 002A7948  D0 3D 00 00 */	stfs f1, 0x0(r29)
/* 802B1BCC 002A794C  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 802B1BD0 002A7950  C0 43 00 04 */	lfs f2, 0x4(r3)
/* 802B1BD4 002A7954  EC 65 00 72 */	fmuls f3, f5, f1
/* 802B1BD8 002A7958  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 802B1BDC 002A795C  EC 44 18 BA */	fmadds f2, f4, f2, f3
/* 802B1BE0 002A7960  EC 26 10 7A */	fmadds f1, f6, f1, f2
/* 802B1BE4 002A7964  D0 3D 00 04 */	stfs f1, 0x4(r29)
/* 802B1BE8 002A7968  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 802B1BEC 002A796C  C0 43 00 08 */	lfs f2, 0x8(r3)
/* 802B1BF0 002A7970  EC 65 00 72 */	fmuls f3, f5, f1
/* 802B1BF4 002A7974  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 802B1BF8 002A7978  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 802B1BFC 002A797C  EC 04 18 BA */	fmadds f0, f4, f2, f3
/* 802B1C00 002A7980  EC 06 00 7A */	fmadds f0, f6, f1, f0
/* 802B1C04 002A7984  D0 1D 00 08 */	stfs f0, 0x8(r29)
/* 802B1C08 002A7988  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 802B1C0C 002A798C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 802B1C10 002A7990  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 802B1C14 002A7994  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B1C18 002A7998  EC 00 10 28 */	fsubs f0, f0, f2
/* 802B1C1C 002A799C  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 802B1C20 002A79A0  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802B1C24 002A79A4  7D 4B 53 78 */	mr r11, r10
/* 802B1C28 002A79A8  48 13 F7 45 */	bl _restgpr_27
/* 802B1C2C 002A79AC  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 802B1C30 002A79B0  7C 08 03 A6 */	mtlr r0
/* 802B1C34 002A79B4  7D 41 53 78 */	mr r1, r10
/* 802B1C38 002A79B8  4E 80 00 20 */	blr
.endfn fn_802B1B3C
