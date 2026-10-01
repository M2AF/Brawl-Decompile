.include "macros.inc"
.file "auto_fn_80325034_text"

# 0x80008DA4..0x80008DAC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008DA4 | size: 0x8
.obj "@etb_80008DA4", local
.hidden "@etb_80008DA4"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved FPR range: fp30-fp31
 */
	.4byte 0x008A0000
	.4byte 0x00000000
.endobj "@etb_80008DA4"

# 0x8000BD64..0x8000BD70 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BD64 | size: 0xC
.obj "@eti_8000BD64", local
.hidden "@eti_8000BD64"
	.4byte fn_80325034
	.4byte 0x00000150
	.4byte "@etb_80008DA4"
.endobj "@eti_8000BD64"

# 0x80325034..0x80325184 | size: 0x150
.text
.balign 4

# .text:0x0 | 0x80325034 | size: 0x150
.fn fn_80325034, global
/* 80325034 0031ADB4  54 2B 07 3E */	clrlwi r11, r1, 28
/* 80325038 0031ADB8  7C 2C 0B 78 */	mr r12, r1
/* 8032503C 0031ADBC  21 6B FF B0 */	subfic r11, r11, -0x50
/* 80325040 0031ADC0  7C 21 59 6E */	stwux r1, r1, r11
/* 80325044 0031ADC4  DB EC FF F0 */	stfd f31, -0x10(r12)
/* 80325048 0031ADC8  F3 EC 0F F8 */	psq_st f31, -0x8(r12), 0, qr0
/* 8032504C 0031ADCC  DB CC FF E0 */	stfd f30, -0x20(r12)
/* 80325050 0031ADD0  F3 CC 0F E8 */	psq_st f30, -0x18(r12), 0, qr0
/* 80325054 0031ADD4  C0 23 00 04 */	lfs f1, 0x4(r3)
/* 80325058 0031ADD8  C1 A4 00 04 */	lfs f13, 0x4(r4)
/* 8032505C 0031ADDC  C0 05 00 04 */	lfs f0, 0x4(r5)
/* 80325060 0031ADE0  ED 81 68 28 */	fsubs f12, f1, f13
/* 80325064 0031ADE4  C0 23 00 00 */	lfs f1, 0x0(r3)
/* 80325068 0031ADE8  EC C0 68 28 */	fsubs f6, f0, f13
/* 8032506C 0031ADEC  C3 C4 00 00 */	lfs f30, 0x0(r4)
/* 80325070 0031ADF0  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 80325074 0031ADF4  EF E1 F0 28 */	fsubs f31, f1, f30
/* 80325078 0031ADF8  EC E0 F0 28 */	fsubs f7, f0, f30
/* 8032507C 0031ADFC  C0 43 00 08 */	lfs f2, 0x8(r3)
/* 80325080 0031AE00  C1 64 00 08 */	lfs f11, 0x8(r4)
/* 80325084 0031AE04  EC 06 03 32 */	fmuls f0, f6, f12
/* 80325088 0031AE08  C0 25 00 08 */	lfs f1, 0x8(r5)
/* 8032508C 0031AE0C  ED 42 58 28 */	fsubs f10, f2, f11
/* 80325090 0031AE10  EC A1 58 28 */	fsubs f5, f1, f11
/* 80325094 0031AE14  C0 83 00 0C */	lfs f4, 0xc(r3)
/* 80325098 0031AE18  EC 47 07 FA */	fmadds f2, f7, f31, f0
/* 8032509C 0031AE1C  C1 24 00 0C */	lfs f9, 0xc(r4)
/* 803250A0 0031AE20  EC 26 01 B2 */	fmuls f1, f6, f6
/* 803250A4 0031AE24  ED 04 48 28 */	fsubs f8, f4, f9
/* 803250A8 0031AE28  C0 65 00 0C */	lfs f3, 0xc(r5)
/* 803250AC 0031AE2C  EC 45 12 BA */	fmadds f2, f5, f10, f2
/* 803250B0 0031AE30  C0 02 B4 A8 */	lfs f0, lbl_805A47C8@sda21(r0)
/* 803250B4 0031AE34  EC 27 09 FA */	fmadds f1, f7, f7, f1
/* 803250B8 0031AE38  EC 83 48 28 */	fsubs f4, f3, f9
/* 803250BC 0031AE3C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 803250C0 0031AE40  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 803250C4 0031AE44  EC 05 09 7A */	fmadds f0, f5, f5, f1
/* 803250C8 0031AE48  D1 81 00 24 */	stfs f12, 0x24(r1)
/* 803250CC 0031AE4C  D1 41 00 28 */	stfs f10, 0x28(r1)
/* 803250D0 0031AE50  D1 01 00 2C */	stfs f8, 0x2c(r1)
/* 803250D4 0031AE54  D0 E1 00 10 */	stfs f7, 0x10(r1)
/* 803250D8 0031AE58  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 803250DC 0031AE5C  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 803250E0 0031AE60  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 803250E4 0031AE64  4C 40 13 82 */	cror eq, lt, eq
/* 803250E8 0031AE68  40 82 00 1C */	bne .L_80325104
/* 803250EC 0031AE6C  D3 C6 00 00 */	stfs f30, 0x0(r6)
/* 803250F0 0031AE70  38 60 00 08 */	li r3, 0x8
/* 803250F4 0031AE74  D1 A6 00 04 */	stfs f13, 0x4(r6)
/* 803250F8 0031AE78  D1 66 00 08 */	stfs f11, 0x8(r6)
/* 803250FC 0031AE7C  D1 26 00 0C */	stfs f9, 0xc(r6)
/* 80325100 0031AE80  48 00 00 60 */	b .L_80325160
.L_80325104:
/* 80325104 0031AE84  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80325108 0031AE88  4C 41 13 82 */	cror eq, gt, eq
/* 8032510C 0031AE8C  40 82 00 2C */	bne .L_80325138
/* 80325110 0031AE90  EC 7E 38 2A */	fadds f3, f30, f7
/* 80325114 0031AE94  38 60 00 04 */	li r3, 0x4
/* 80325118 0031AE98  EC 4D 30 2A */	fadds f2, f13, f6
/* 8032511C 0031AE9C  EC 2B 28 2A */	fadds f1, f11, f5
/* 80325120 0031AEA0  EC 09 20 2A */	fadds f0, f9, f4
/* 80325124 0031AEA4  D0 66 00 00 */	stfs f3, 0x0(r6)
/* 80325128 0031AEA8  D0 46 00 04 */	stfs f2, 0x4(r6)
/* 8032512C 0031AEAC  D0 26 00 08 */	stfs f1, 0x8(r6)
/* 80325130 0031AEB0  D0 06 00 0C */	stfs f0, 0xc(r6)
/* 80325134 0031AEB4  48 00 00 2C */	b .L_80325160
.L_80325138:
/* 80325138 0031AEB8  EC 02 00 24 */	fdivs f0, f2, f0
/* 8032513C 0031AEBC  38 60 00 00 */	li r3, 0x0
/* 80325140 0031AEC0  EC 60 F1 FA */	fmadds f3, f0, f7, f30
/* 80325144 0031AEC4  EC 40 69 BA */	fmadds f2, f0, f6, f13
/* 80325148 0031AEC8  EC 20 59 7A */	fmadds f1, f0, f5, f11
/* 8032514C 0031AECC  EC 00 49 3A */	fmadds f0, f0, f4, f9
/* 80325150 0031AED0  D0 66 00 00 */	stfs f3, 0x0(r6)
/* 80325154 0031AED4  D0 46 00 04 */	stfs f2, 0x4(r6)
/* 80325158 0031AED8  D0 26 00 08 */	stfs f1, 0x8(r6)
/* 8032515C 0031AEDC  D0 06 00 0C */	stfs f0, 0xc(r6)
.L_80325160:
/* 80325160 0031AEE0  81 41 00 00 */	lwz r10, 0x0(r1)
/* 80325164 0031AEE4  38 00 FF F8 */	li r0, -0x8
/* 80325168 0031AEE8  13 EA 00 0C */	psq_lx f31, r10, r0, 0, qr0
/* 8032516C 0031AEEC  CB EA FF F0 */	lfd f31, -0x10(r10)
/* 80325170 0031AEF0  38 00 FF E8 */	li r0, -0x18
/* 80325174 0031AEF4  13 CA 00 0C */	psq_lx f30, r10, r0, 0, qr0
/* 80325178 0031AEF8  CB CA FF E0 */	lfd f30, -0x20(r10)
/* 8032517C 0031AEFC  7D 41 53 78 */	mr r1, r10
/* 80325180 0031AF00  4E 80 00 20 */	blr
.endfn fn_80325034
