.include "macros.inc"
.file "auto_fn_8028A7A8_text"

# 0x80006538..0x80006540 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006538 | size: 0x8
.obj "@etb_80006538", local
.hidden "@etb_80006538"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_80006538"

# 0x800097E4..0x800097F0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x800097E4 | size: 0xC
.obj "@eti_800097E4", local
.hidden "@eti_800097E4"
	.4byte fn_8028A7A8
	.4byte 0x000000B8
	.4byte "@etb_80006538"
.endobj "@eti_800097E4"

# 0x8028A7A8..0x8028A860 | size: 0xB8
.text
.balign 4

# .text:0x0 | 0x8028A7A8 | size: 0xB8
.fn fn_8028A7A8, global
/* 8028A7A8 00280528  54 2B 07 3E */	clrlwi r11, r1, 28
/* 8028A7AC 0028052C  7C 2C 0B 78 */	mr r12, r1
/* 8028A7B0 00280530  21 6B FF B0 */	subfic r11, r11, -0x50
/* 8028A7B4 00280534  7C 21 59 6E */	stwux r1, r1, r11
/* 8028A7B8 00280538  7C 08 02 A6 */	mflr r0
/* 8028A7BC 0028053C  7C A8 2B 78 */	mr r8, r5
/* 8028A7C0 00280540  C1 A5 00 30 */	lfs f13, 0x30(r5)
/* 8028A7C4 00280544  90 0C 00 04 */	stw r0, 0x4(r12)
/* 8028A7C8 00280548  7C E5 3B 78 */	mr r5, r7
/* 8028A7CC 0028054C  88 03 00 02 */	lbz r0, 0x2(r3)
/* 8028A7D0 00280550  C1 88 00 34 */	lfs f12, 0x34(r8)
/* 8028A7D4 00280554  54 00 20 36 */	slwi r0, r0, 4
/* 8028A7D8 00280558  C1 68 00 38 */	lfs f11, 0x38(r8)
/* 8028A7DC 0028055C  7C E6 02 14 */	add r7, r6, r0
/* 8028A7E0 00280560  C1 48 00 3C */	lfs f10, 0x3c(r8)
/* 8028A7E4 00280564  C1 26 00 30 */	lfs f9, 0x30(r6)
/* 8028A7E8 00280568  C1 06 00 34 */	lfs f8, 0x34(r6)
/* 8028A7EC 0028056C  C0 E6 00 38 */	lfs f7, 0x38(r6)
/* 8028A7F0 00280570  C0 C6 00 3C */	lfs f6, 0x3c(r6)
/* 8028A7F4 00280574  7C A6 04 2E */	lfsx f5, r6, r0
/* 8028A7F8 00280578  C0 87 00 04 */	lfs f4, 0x4(r7)
/* 8028A7FC 0028057C  C0 67 00 08 */	lfs f3, 0x8(r7)
/* 8028A800 00280580  C0 47 00 0C */	lfs f2, 0xc(r7)
/* 8028A804 00280584  C0 23 00 04 */	lfs f1, 0x4(r3)
/* 8028A808 00280588  C0 03 00 08 */	lfs f0, 0x8(r3)
/* 8028A80C 0028058C  38 61 00 10 */	addi r3, r1, 0x10
/* 8028A810 00280590  D1 A1 00 10 */	stfs f13, 0x10(r1)
/* 8028A814 00280594  D1 81 00 14 */	stfs f12, 0x14(r1)
/* 8028A818 00280598  D1 61 00 18 */	stfs f11, 0x18(r1)
/* 8028A81C 0028059C  D1 41 00 1C */	stfs f10, 0x1c(r1)
/* 8028A820 002805A0  D1 21 00 20 */	stfs f9, 0x20(r1)
/* 8028A824 002805A4  D1 01 00 24 */	stfs f8, 0x24(r1)
/* 8028A828 002805A8  D0 E1 00 28 */	stfs f7, 0x28(r1)
/* 8028A82C 002805AC  D0 C1 00 2C */	stfs f6, 0x2c(r1)
/* 8028A830 002805B0  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 8028A834 002805B4  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 8028A838 002805B8  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 8028A83C 002805BC  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8028A840 002805C0  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8028A844 002805C4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8028A848 002805C8  48 00 40 A1 */	bl fn_8028E8E8
/* 8028A84C 002805CC  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8028A850 002805D0  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8028A854 002805D4  7C 08 03 A6 */	mtlr r0
/* 8028A858 002805D8  7D 41 53 78 */	mr r1, r10
/* 8028A85C 002805DC  4E 80 00 20 */	blr
.endfn fn_8028A7A8
