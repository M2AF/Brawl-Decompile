.include "macros.inc"
.file "auto_fn_802D5F28_text"

# 0x800085E4..0x800085EC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800085E4 | size: 0x8
.obj "@etb_800085E4", local
.hidden "@etb_800085E4"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_800085E4"

# 0x8000B428..0x8000B434 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B428 | size: 0xC
.obj "@eti_8000B428", local
.hidden "@eti_8000B428"
	.4byte fn_802D5F28
	.4byte 0x00000084
	.4byte "@etb_800085E4"
.endobj "@eti_8000B428"

# 0x802D5F28..0x802D5FAC | size: 0x84
.text
.balign 4

# .text:0x0 | 0x802D5F28 | size: 0x84
.fn fn_802D5F28, global
/* 802D5F28 002CBCA8  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802D5F2C 002CBCAC  7C 2C 0B 78 */	mr r12, r1
/* 802D5F30 002CBCB0  21 6B FF E0 */	subfic r11, r11, -0x20
/* 802D5F34 002CBCB4  C0 64 00 30 */	lfs f3, 0x30(r4)
/* 802D5F38 002CBCB8  7C 21 59 6E */	stwux r1, r1, r11
/* 802D5F3C 002CBCBC  C0 44 00 34 */	lfs f2, 0x34(r4)
/* 802D5F40 002CBCC0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 802D5F44 002CBCC4  ED 01 00 2A */	fadds f8, f1, f0
/* 802D5F48 002CBCC8  C0 24 00 38 */	lfs f1, 0x38(r4)
/* 802D5F4C 002CBCCC  C0 04 00 3C */	lfs f0, 0x3c(r4)
/* 802D5F50 002CBCD0  EC E3 40 28 */	fsubs f7, f3, f8
/* 802D5F54 002CBCD4  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 802D5F58 002CBCD8  EC C2 40 28 */	fsubs f6, f2, f8
/* 802D5F5C 002CBCDC  EC A1 40 28 */	fsubs f5, f1, f8
/* 802D5F60 002CBCE0  D1 01 00 14 */	stfs f8, 0x14(r1)
/* 802D5F64 002CBCE4  EC 80 40 28 */	fsubs f4, f0, f8
/* 802D5F68 002CBCE8  EC 63 40 2A */	fadds f3, f3, f8
/* 802D5F6C 002CBCEC  D0 E5 00 00 */	stfs f7, 0x0(r5)
/* 802D5F70 002CBCF0  EC 42 40 2A */	fadds f2, f2, f8
/* 802D5F74 002CBCF4  EC 21 40 2A */	fadds f1, f1, f8
/* 802D5F78 002CBCF8  D0 C5 00 04 */	stfs f6, 0x4(r5)
/* 802D5F7C 002CBCFC  EC 00 40 2A */	fadds f0, f0, f8
/* 802D5F80 002CBD00  D0 A5 00 08 */	stfs f5, 0x8(r5)
/* 802D5F84 002CBD04  D0 85 00 0C */	stfs f4, 0xc(r5)
/* 802D5F88 002CBD08  D0 65 00 10 */	stfs f3, 0x10(r5)
/* 802D5F8C 002CBD0C  D0 45 00 14 */	stfs f2, 0x14(r5)
/* 802D5F90 002CBD10  D0 25 00 18 */	stfs f1, 0x18(r5)
/* 802D5F94 002CBD14  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 802D5F98 002CBD18  D1 01 00 18 */	stfs f8, 0x18(r1)
/* 802D5F9C 002CBD1C  D1 01 00 1C */	stfs f8, 0x1c(r1)
/* 802D5FA0 002CBD20  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802D5FA4 002CBD24  7D 41 53 78 */	mr r1, r10
/* 802D5FA8 002CBD28  4E 80 00 20 */	blr
.endfn fn_802D5F28
