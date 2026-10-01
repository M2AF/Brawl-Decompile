.include "macros.inc"
.file "auto_fn_8031AAC4_text"

# 0x80008C2C..0x80008C34 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008C2C | size: 0x8
.obj "@etb_80008C2C", local
.hidden "@etb_80008C2C"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_80008C2C"

# 0x8000BB78..0x8000BB84 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BB78 | size: 0xC
.obj "@eti_8000BB78", local
.hidden "@eti_8000BB78"
	.4byte fn_8031AAC4
	.4byte 0x00000080
	.4byte "@etb_80008C2C"
.endobj "@eti_8000BB78"

# 0x8031AAC4..0x8031AB44 | size: 0x80
.text
.balign 4

# .text:0x0 | 0x8031AAC4 | size: 0x80
.fn fn_8031AAC4, global
/* 8031AAC4 00310844  C0 24 00 04 */	lfs f1, 0x4(r4)
/* 8031AAC8 00310848  54 2B 07 3E */	clrlwi r11, r1, 28
/* 8031AACC 0031084C  C0 05 00 04 */	lfs f0, 0x4(r5)
/* 8031AAD0 00310850  21 6B FF E0 */	subfic r11, r11, -0x20
/* 8031AAD4 00310854  7C 2C 0B 78 */	mr r12, r1
/* 8031AAD8 00310858  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 8031AADC 0031085C  EC A1 00 28 */	fsubs f5, f1, f0
/* 8031AAE0 00310860  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 8031AAE4 00310864  C0 03 00 04 */	lfs f0, 0x4(r3)
/* 8031AAE8 00310868  EC C2 08 28 */	fsubs f6, f2, f1
/* 8031AAEC 0031086C  7C 21 59 6E */	stwux r1, r1, r11
/* 8031AAF0 00310870  EC 45 00 32 */	fmuls f2, f5, f0
/* 8031AAF4 00310874  C0 23 00 00 */	lfs f1, 0x0(r3)
/* 8031AAF8 00310878  C0 84 00 08 */	lfs f4, 0x8(r4)
/* 8031AAFC 0031087C  C0 65 00 08 */	lfs f3, 0x8(r5)
/* 8031AB00 00310880  EC 26 10 7A */	fmadds f1, f6, f1, f2
/* 8031AB04 00310884  C0 03 00 08 */	lfs f0, 0x8(r3)
/* 8031AB08 00310888  EC 84 18 28 */	fsubs f4, f4, f3
/* 8031AB0C 0031088C  C0 64 00 0C */	lfs f3, 0xc(r4)
/* 8031AB10 00310890  C0 45 00 0C */	lfs f2, 0xc(r5)
/* 8031AB14 00310894  D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 8031AB18 00310898  EC 24 08 3A */	fmadds f1, f4, f0, f1
/* 8031AB1C 0031089C  EC 03 10 28 */	fsubs f0, f3, f2
/* 8031AB20 003108A0  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 8031AB24 003108A4  FC 40 0A 10 */	fabs f2, f1
/* 8031AB28 003108A8  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 8031AB2C 003108AC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8031AB30 003108B0  FC 40 10 18 */	frsp f2, f2
/* 8031AB34 003108B4  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8031AB38 003108B8  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8031AB3C 003108BC  7D 41 53 78 */	mr r1, r10
/* 8031AB40 003108C0  4E 80 00 20 */	blr
.endfn fn_8031AAC4
