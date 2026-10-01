.include "macros.inc"
.file "auto_03_803063A4_text"

# 0x803063A4..0x80306424 | size: 0x80
.text
.balign 4

# .text:0x0 | 0x803063A4 | size: 0x80
.fn fn_803063A4, global
/* 803063A4 002FC124  C0 E3 00 54 */	lfs f7, 0x54(r3)
/* 803063A8 002FC128  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 803063AC 002FC12C  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 803063B0 002FC130  EC A7 00 B2 */	fmuls f5, f7, f2
/* 803063B4 002FC134  C1 03 00 50 */	lfs f8, 0x50(r3)
/* 803063B8 002FC138  C0 83 00 20 */	lfs f4, 0x20(r3)
/* 803063BC 002FC13C  EC 67 00 72 */	fmuls f3, f7, f1
/* 803063C0 002FC140  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 803063C4 002FC144  C0 43 00 30 */	lfs f2, 0x30(r3)
/* 803063C8 002FC148  EC 27 00 32 */	fmuls f1, f7, f0
/* 803063CC 002FC14C  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 803063D0 002FC150  EC A8 29 3A */	fmadds f5, f8, f4, f5
/* 803063D4 002FC154  C0 C3 00 58 */	lfs f6, 0x58(r3)
/* 803063D8 002FC158  EC 68 18 BA */	fmadds f3, f8, f2, f3
/* 803063DC 002FC15C  C0 83 00 28 */	lfs f4, 0x28(r3)
/* 803063E0 002FC160  EC 28 08 3A */	fmadds f1, f8, f0, f1
/* 803063E4 002FC164  C0 43 00 38 */	lfs f2, 0x38(r3)
/* 803063E8 002FC168  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 803063EC 002FC16C  EC 86 29 3A */	fmadds f4, f6, f4, f5
/* 803063F0 002FC170  EC 46 18 BA */	fmadds f2, f6, f2, f3
/* 803063F4 002FC174  C0 63 00 5C */	lfs f3, 0x5c(r3)
/* 803063F8 002FC178  EC 26 08 3A */	fmadds f1, f6, f0, f1
/* 803063FC 002FC17C  C0 02 B2 A4 */	lfs f0, lbl_805A45C4@sda21(r0)
/* 80306400 002FC180  D1 03 00 C0 */	stfs f8, 0xc0(r3)
/* 80306404 002FC184  D0 E3 00 C4 */	stfs f7, 0xc4(r3)
/* 80306408 002FC188  D0 C3 00 C8 */	stfs f6, 0xc8(r3)
/* 8030640C 002FC18C  D0 63 00 CC */	stfs f3, 0xcc(r3)
/* 80306410 002FC190  D0 83 00 D0 */	stfs f4, 0xd0(r3)
/* 80306414 002FC194  D0 43 00 D4 */	stfs f2, 0xd4(r3)
/* 80306418 002FC198  D0 23 00 D8 */	stfs f1, 0xd8(r3)
/* 8030641C 002FC19C  D0 03 00 DC */	stfs f0, 0xdc(r3)
/* 80306420 002FC1A0  4E 80 00 20 */	blr
.endfn fn_803063A4
