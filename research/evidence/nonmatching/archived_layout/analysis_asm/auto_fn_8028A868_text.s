.include "macros.inc"
.file "auto_fn_8028A868_text"

# 0x80006540..0x80006548 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006540 | size: 0x8
.obj "@etb_80006540", local
.hidden "@etb_80006540"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_80006540"

# 0x800097F0..0x800097FC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x800097F0 | size: 0xC
.obj "@eti_800097F0", local
.hidden "@eti_800097F0"
	.4byte fn_8028A868
	.4byte 0x000000AC
	.4byte "@etb_80006540"
.endobj "@eti_800097F0"

# 0x8028A868..0x8028A914 | size: 0xAC
.text
.balign 4

# .text:0x0 | 0x8028A868 | size: 0xAC
.fn fn_8028A868, global
/* 8028A868 002805E8  54 2B 07 3E */	clrlwi r11, r1, 28
/* 8028A86C 002805EC  7C 2C 0B 78 */	mr r12, r1
/* 8028A870 002805F0  21 6B FF B0 */	subfic r11, r11, -0x50
/* 8028A874 002805F4  7C 21 59 6E */	stwux r1, r1, r11
/* 8028A878 002805F8  7C 08 02 A6 */	mflr r0
/* 8028A87C 002805FC  7C A8 2B 78 */	mr r8, r5
/* 8028A880 00280600  C1 A5 00 30 */	lfs f13, 0x30(r5)
/* 8028A884 00280604  90 0C 00 04 */	stw r0, 0x4(r12)
/* 8028A888 00280608  7C E5 3B 78 */	mr r5, r7
/* 8028A88C 0028060C  C1 26 00 30 */	lfs f9, 0x30(r6)
/* 8028A890 00280610  C1 88 00 34 */	lfs f12, 0x34(r8)
/* 8028A894 00280614  C1 68 00 38 */	lfs f11, 0x38(r8)
/* 8028A898 00280618  C1 48 00 3C */	lfs f10, 0x3c(r8)
/* 8028A89C 0028061C  C1 06 00 34 */	lfs f8, 0x34(r6)
/* 8028A8A0 00280620  C0 E6 00 38 */	lfs f7, 0x38(r6)
/* 8028A8A4 00280624  C0 C6 00 3C */	lfs f6, 0x3c(r6)
/* 8028A8A8 00280628  C0 A3 00 04 */	lfs f5, 0x4(r3)
/* 8028A8AC 0028062C  C0 83 00 08 */	lfs f4, 0x8(r3)
/* 8028A8B0 00280630  38 61 00 10 */	addi r3, r1, 0x10
/* 8028A8B4 00280634  C0 66 00 00 */	lfs f3, 0x0(r6)
/* 8028A8B8 00280638  C0 46 00 04 */	lfs f2, 0x4(r6)
/* 8028A8BC 0028063C  C0 26 00 08 */	lfs f1, 0x8(r6)
/* 8028A8C0 00280640  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 8028A8C4 00280644  D1 A1 00 10 */	stfs f13, 0x10(r1)
/* 8028A8C8 00280648  D1 81 00 14 */	stfs f12, 0x14(r1)
/* 8028A8CC 0028064C  D1 61 00 18 */	stfs f11, 0x18(r1)
/* 8028A8D0 00280650  D1 41 00 1C */	stfs f10, 0x1c(r1)
/* 8028A8D4 00280654  D1 21 00 20 */	stfs f9, 0x20(r1)
/* 8028A8D8 00280658  D1 01 00 24 */	stfs f8, 0x24(r1)
/* 8028A8DC 0028065C  D0 E1 00 28 */	stfs f7, 0x28(r1)
/* 8028A8E0 00280660  D0 C1 00 2C */	stfs f6, 0x2c(r1)
/* 8028A8E4 00280664  D0 A1 00 40 */	stfs f5, 0x40(r1)
/* 8028A8E8 00280668  D0 81 00 44 */	stfs f4, 0x44(r1)
/* 8028A8EC 0028066C  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 8028A8F0 00280670  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8028A8F4 00280674  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8028A8F8 00280678  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8028A8FC 0028067C  48 00 44 45 */	bl fn_8028ED40
/* 8028A900 00280680  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8028A904 00280684  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8028A908 00280688  7C 08 03 A6 */	mtlr r0
/* 8028A90C 0028068C  7D 41 53 78 */	mr r1, r10
/* 8028A910 00280690  4E 80 00 20 */	blr
.endfn fn_8028A868
