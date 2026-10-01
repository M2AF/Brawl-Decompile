.include "macros.inc"
.file "auto_03_80294D1C_text"

# 0x80294D1C..0x80294DD4 | size: 0xB8
.text
.balign 4

# .text:0x0 | 0x80294D1C | size: 0x34
.fn fn_80294D1C, global
/* 80294D1C 0028AA9C  C0 03 00 00 */	lfs f0, 0x0(r3)
/* 80294D20 0028AAA0  C0 63 00 04 */	lfs f3, 0x4(r3)
/* 80294D24 0028AAA4  EC 80 00 72 */	fmuls f4, f0, f1
/* 80294D28 0028AAA8  C0 43 00 08 */	lfs f2, 0x8(r3)
/* 80294D2C 0028AAAC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80294D30 0028AAB0  EC 63 00 72 */	fmuls f3, f3, f1
/* 80294D34 0028AAB4  EC 42 00 72 */	fmuls f2, f2, f1
/* 80294D38 0028AAB8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80294D3C 0028AABC  D0 83 00 00 */	stfs f4, 0x0(r3)
/* 80294D40 0028AAC0  D0 63 00 04 */	stfs f3, 0x4(r3)
/* 80294D44 0028AAC4  D0 43 00 08 */	stfs f2, 0x8(r3)
/* 80294D48 0028AAC8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80294D4C 0028AACC  4E 80 00 20 */	blr
.endfn fn_80294D1C

# .text:0x34 | 0x80294D50 | size: 0xC
.fn fn_80294D50, global
/* 80294D50 0028AAD0  54 80 20 36 */	slwi r0, r4, 4
/* 80294D54 0028AAD4  7C 63 02 14 */	add r3, r3, r0
/* 80294D58 0028AAD8  4E 80 00 20 */	blr
.endfn fn_80294D50

# .text:0x40 | 0x80294D5C | size: 0xC
.fn fn_80294D5C, global
/* 80294D5C 0028AADC  3C 60 80 48 */	lis r3, lbl_804864F0@ha
/* 80294D60 0028AAE0  38 63 64 F0 */	addi r3, r3, lbl_804864F0@l
/* 80294D64 0028AAE4  4E 80 00 20 */	blr
.endfn fn_80294D5C

# .text:0x4C | 0x80294D68 | size: 0x44
.fn fn_80294D68, global
/* 80294D68 0028AAE8  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 80294D6C 0028AAEC  C0 24 00 04 */	lfs f1, 0x4(r4)
/* 80294D70 0028AAF0  FC 60 02 10 */	fabs f3, f0
/* 80294D74 0028AAF4  C0 44 00 08 */	lfs f2, 0x8(r4)
/* 80294D78 0028AAF8  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80294D7C 0028AAFC  FC 20 0A 10 */	fabs f1, f1
/* 80294D80 0028AB00  FC 40 12 10 */	fabs f2, f2
/* 80294D84 0028AB04  FC 00 02 10 */	fabs f0, f0
/* 80294D88 0028AB08  FC 60 18 18 */	frsp f3, f3
/* 80294D8C 0028AB0C  FC 20 08 18 */	frsp f1, f1
/* 80294D90 0028AB10  FC 40 10 18 */	frsp f2, f2
/* 80294D94 0028AB14  FC 00 00 18 */	frsp f0, f0
/* 80294D98 0028AB18  D0 63 00 00 */	stfs f3, 0x0(r3)
/* 80294D9C 0028AB1C  D0 23 00 04 */	stfs f1, 0x4(r3)
/* 80294DA0 0028AB20  D0 43 00 08 */	stfs f2, 0x8(r3)
/* 80294DA4 0028AB24  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80294DA8 0028AB28  4E 80 00 20 */	blr
.endfn fn_80294D68

# .text:0x90 | 0x80294DAC | size: 0x28
.fn fn_80294DAC, global
/* 80294DAC 0028AB2C  C0 02 AA F4 */	lfs f0, lbl_805A3E14@sda21(r0)
/* 80294DB0 0028AB30  3C C0 08 0C */	lis r6, 0x80c
/* 80294DB4 0028AB34  38 06 00 18 */	addi r0, r6, 0x18
/* 80294DB8 0028AB38  D0 43 00 08 */	stfs f2, 0x8(r3)
/* 80294DBC 0028AB3C  90 03 00 00 */	stw r0, 0x0(r3)
/* 80294DC0 0028AB40  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 80294DC4 0028AB44  90 83 00 04 */	stw r4, 0x4(r3)
/* 80294DC8 0028AB48  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80294DCC 0028AB4C  90 A3 00 14 */	stw r5, 0x14(r3)
/* 80294DD0 0028AB50  4E 80 00 20 */	blr
.endfn fn_80294DAC
