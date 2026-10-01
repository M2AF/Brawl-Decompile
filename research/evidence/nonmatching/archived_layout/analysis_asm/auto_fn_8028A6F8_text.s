.include "macros.inc"
.file "auto_fn_8028A6F8_text"

# 0x80006530..0x80006538 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006530 | size: 0x8
.obj "@etb_80006530", local
.hidden "@etb_80006530"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_80006530"

# 0x800097D8..0x800097E4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x800097D8 | size: 0xC
.obj "@eti_800097D8", local
.hidden "@eti_800097D8"
	.4byte fn_8028A6F8
	.4byte 0x000000A8
	.4byte "@etb_80006530"
.endobj "@eti_800097D8"

# 0x8028A6F8..0x8028A7A0 | size: 0xA8
.text
.balign 4

# .text:0x0 | 0x8028A6F8 | size: 0xA8
.fn fn_8028A6F8, global
/* 8028A6F8 00280478  54 2B 07 3E */	clrlwi r11, r1, 28
/* 8028A6FC 0028047C  7C 2C 0B 78 */	mr r12, r1
/* 8028A700 00280480  21 6B FF C0 */	subfic r11, r11, -0x40
/* 8028A704 00280484  7C 21 59 6E */	stwux r1, r1, r11
/* 8028A708 00280488  7C 08 02 A6 */	mflr r0
/* 8028A70C 0028048C  C1 65 00 30 */	lfs f11, 0x30(r5)
/* 8028A710 00280490  90 0C 00 04 */	stw r0, 0x4(r12)
/* 8028A714 00280494  88 03 00 02 */	lbz r0, 0x2(r3)
/* 8028A718 00280498  7C A3 2B 78 */	mr r3, r5
/* 8028A71C 0028049C  C1 43 00 34 */	lfs f10, 0x34(r3)
/* 8028A720 002804A0  7C E5 3B 78 */	mr r5, r7
/* 8028A724 002804A4  54 00 20 36 */	slwi r0, r0, 4
/* 8028A728 002804A8  C1 23 00 38 */	lfs f9, 0x38(r3)
/* 8028A72C 002804AC  7C E6 02 14 */	add r7, r6, r0
/* 8028A730 002804B0  C1 03 00 3C */	lfs f8, 0x3c(r3)
/* 8028A734 002804B4  C0 E6 00 30 */	lfs f7, 0x30(r6)
/* 8028A738 002804B8  38 61 00 10 */	addi r3, r1, 0x10
/* 8028A73C 002804BC  C0 C6 00 34 */	lfs f6, 0x34(r6)
/* 8028A740 002804C0  C0 A6 00 38 */	lfs f5, 0x38(r6)
/* 8028A744 002804C4  C0 86 00 3C */	lfs f4, 0x3c(r6)
/* 8028A748 002804C8  7C 66 04 2E */	lfsx f3, r6, r0
/* 8028A74C 002804CC  C0 47 00 04 */	lfs f2, 0x4(r7)
/* 8028A750 002804D0  C0 27 00 08 */	lfs f1, 0x8(r7)
/* 8028A754 002804D4  C0 07 00 0C */	lfs f0, 0xc(r7)
/* 8028A758 002804D8  D1 61 00 10 */	stfs f11, 0x10(r1)
/* 8028A75C 002804DC  D1 41 00 14 */	stfs f10, 0x14(r1)
/* 8028A760 002804E0  D1 21 00 18 */	stfs f9, 0x18(r1)
/* 8028A764 002804E4  D1 01 00 1C */	stfs f8, 0x1c(r1)
/* 8028A768 002804E8  D0 E1 00 20 */	stfs f7, 0x20(r1)
/* 8028A76C 002804EC  D0 C1 00 24 */	stfs f6, 0x24(r1)
/* 8028A770 002804F0  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 8028A774 002804F4  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 8028A778 002804F8  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 8028A77C 002804FC  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8028A780 00280500  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8028A784 00280504  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8028A788 00280508  48 00 3D 1D */	bl fn_8028E4A4
/* 8028A78C 0028050C  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8028A790 00280510  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8028A794 00280514  7C 08 03 A6 */	mtlr r0
/* 8028A798 00280518  7D 41 53 78 */	mr r1, r10
/* 8028A79C 0028051C  4E 80 00 20 */	blr
.endfn fn_8028A6F8
