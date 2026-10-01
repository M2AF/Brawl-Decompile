.include "macros.inc"
.file "auto_fn_802A0088_text"

# 0x800067B0..0x800067B8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800067B0 | size: 0x8
.obj "@etb_800067B0", local
.hidden "@etb_800067B0"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved FPR range: fp28-fp31
 */
	.4byte 0x010A0000
	.4byte 0x00000000
.endobj "@etb_800067B0"

# 0x80009B98..0x80009BA4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009B98 | size: 0xC
.obj "@eti_80009B98", local
.hidden "@eti_80009B98"
	.4byte fn_802A0088
	.4byte 0x00000194
	.4byte "@etb_800067B0"
.endobj "@eti_80009B98"

# 0x802A0088..0x802A021C | size: 0x194
.text
.balign 4

# .text:0x0 | 0x802A0088 | size: 0x194
.fn fn_802A0088, global
/* 802A0088 00295E08  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802A008C 00295E0C  7C 2C 0B 78 */	mr r12, r1
/* 802A0090 00295E10  21 6B FF 80 */	subfic r11, r11, -0x80
/* 802A0094 00295E14  7C 21 59 6E */	stwux r1, r1, r11
/* 802A0098 00295E18  DB EC FF F0 */	stfd f31, -0x10(r12)
/* 802A009C 00295E1C  F3 EC 0F F8 */	psq_st f31, -0x8(r12), 0, qr0
/* 802A00A0 00295E20  DB CC FF E0 */	stfd f30, -0x20(r12)
/* 802A00A4 00295E24  F3 CC 0F E8 */	psq_st f30, -0x18(r12), 0, qr0
/* 802A00A8 00295E28  DB AC FF D0 */	stfd f29, -0x30(r12)
/* 802A00AC 00295E2C  F3 AC 0F D8 */	psq_st f29, -0x28(r12), 0, qr0
/* 802A00B0 00295E30  DB 8C FF C0 */	stfd f28, -0x40(r12)
/* 802A00B4 00295E34  F3 8C 0F C8 */	psq_st f28, -0x38(r12), 0, qr0
/* 802A00B8 00295E38  C0 A3 00 50 */	lfs f5, 0x50(r3)
/* 802A00BC 00295E3C  C0 85 00 10 */	lfs f4, 0x10(r5)
/* 802A00C0 00295E40  C0 E3 00 40 */	lfs f7, 0x40(r3)
/* 802A00C4 00295E44  EC 85 01 32 */	fmuls f4, f5, f4
/* 802A00C8 00295E48  C0 A4 00 40 */	lfs f5, 0x40(r4)
/* 802A00CC 00295E4C  C0 63 00 54 */	lfs f3, 0x54(r3)
/* 802A00D0 00295E50  ED 67 28 28 */	fsubs f11, f7, f5
/* 802A00D4 00295E54  C0 05 00 14 */	lfs f0, 0x14(r5)
/* 802A00D8 00295E58  C0 A5 00 00 */	lfs f5, 0x0(r5)
/* 802A00DC 00295E5C  EC 63 00 32 */	fmuls f3, f3, f0
/* 802A00E0 00295E60  C0 C3 00 44 */	lfs f6, 0x44(r3)
/* 802A00E4 00295E64  C0 04 00 44 */	lfs f0, 0x44(r4)
/* 802A00E8 00295E68  ED 4B 01 72 */	fmuls f10, f11, f5
/* 802A00EC 00295E6C  C0 E4 00 50 */	lfs f7, 0x50(r4)
/* 802A00F0 00295E70  EF A6 00 28 */	fsubs f29, f6, f0
/* 802A00F4 00295E74  C0 A5 00 20 */	lfs f5, 0x20(r5)
/* 802A00F8 00295E78  D1 61 00 20 */	stfs f11, 0x20(r1)
/* 802A00FC 00295E7C  EF E7 01 72 */	fmuls f31, f7, f5
/* 802A0100 00295E80  C0 05 00 04 */	lfs f0, 0x4(r5)
/* 802A0104 00295E84  C0 C4 00 54 */	lfs f6, 0x54(r4)
/* 802A0108 00295E88  C0 A5 00 24 */	lfs f5, 0x24(r5)
/* 802A010C 00295E8C  ED 3D 00 32 */	fmuls f9, f29, f0
/* 802A0110 00295E90  C1 83 00 58 */	lfs f12, 0x58(r3)
/* 802A0114 00295E94  ED A6 01 72 */	fmuls f13, f6, f5
/* 802A0118 00295E98  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 802A011C 00295E9C  EC C4 F8 2A */	fadds f6, f4, f31
/* 802A0120 00295EA0  C1 03 00 48 */	lfs f8, 0x48(r3)
/* 802A0124 00295EA4  EC 0C 00 32 */	fmuls f0, f12, f0
/* 802A0128 00295EA8  C0 A4 00 48 */	lfs f5, 0x48(r4)
/* 802A012C 00295EAC  EF C8 28 28 */	fsubs f30, f8, f5
/* 802A0130 00295EB0  C1 05 00 08 */	lfs f8, 0x8(r5)
/* 802A0134 00295EB4  EC A3 68 2A */	fadds f5, f3, f13
/* 802A0138 00295EB8  C1 84 00 58 */	lfs f12, 0x58(r4)
/* 802A013C 00295EBC  C1 65 00 28 */	lfs f11, 0x28(r5)
/* 802A0140 00295EC0  EC C6 50 2A */	fadds f6, f6, f10
/* 802A0144 00295EC4  ED 8C 02 F2 */	fmuls f12, f12, f11
/* 802A0148 00295EC8  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 802A014C 00295ECC  ED 1E 02 32 */	fmuls f8, f30, f8
/* 802A0150 00295ED0  C0 E5 00 0C */	lfs f7, 0xc(r5)
/* 802A0154 00295ED4  D3 A1 00 24 */	stfs f29, 0x24(r1)
/* 802A0158 00295ED8  EC A5 48 2A */	fadds f5, f5, f9
/* 802A015C 00295EDC  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 802A0160 00295EE0  EC 80 60 2A */	fadds f4, f0, f12
/* 802A0164 00295EE4  C3 83 00 5C */	lfs f28, 0x5c(r3)
/* 802A0168 00295EE8  EC 66 28 2A */	fadds f3, f6, f5
/* 802A016C 00295EEC  C1 65 00 1C */	lfs f11, 0x1c(r5)
/* 802A0170 00295EF0  EC 21 01 F2 */	fmuls f1, f1, f7
/* 802A0174 00295EF4  EC 84 40 2A */	fadds f4, f4, f8
/* 802A0178 00295EF8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 802A017C 00295EFC  EF 9C 02 F2 */	fmuls f28, f28, f11
/* 802A0180 00295F00  C3 C3 00 4C */	lfs f30, 0x4c(r3)
/* 802A0184 00295F04  C1 64 00 4C */	lfs f11, 0x4c(r4)
/* 802A0188 00295F08  EF A4 18 2A */	fadds f29, f4, f3
/* 802A018C 00295F0C  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 802A0190 00295F10  EF DE 58 28 */	fsubs f30, f30, f11
/* 802A0194 00295F14  C1 64 00 5C */	lfs f11, 0x5c(r4)
/* 802A0198 00295F18  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 802A019C 00295F1C  EC 6B 00 32 */	fmuls f3, f11, f0
/* 802A01A0 00295F20  ED 7D 00 B2 */	fmuls f11, f29, f2
/* 802A01A4 00295F24  D1 A1 00 14 */	stfs f13, 0x14(r1)
/* 802A01A8 00295F28  EC 5E 01 F2 */	fmuls f2, f30, f7
/* 802A01AC 00295F2C  EC 1C 18 2A */	fadds f0, f28, f3
/* 802A01B0 00295F30  D1 81 00 18 */	stfs f12, 0x18(r1)
/* 802A01B4 00295F34  EC 21 58 28 */	fsubs f1, f1, f11
/* 802A01B8 00295F38  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 802A01BC 00295F3C  EC 00 10 2A */	fadds f0, f0, f2
/* 802A01C0 00295F40  D1 41 00 20 */	stfs f10, 0x20(r1)
/* 802A01C4 00295F44  D1 21 00 24 */	stfs f9, 0x24(r1)
/* 802A01C8 00295F48  D1 01 00 28 */	stfs f8, 0x28(r1)
/* 802A01CC 00295F4C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 802A01D0 00295F50  D0 C1 00 30 */	stfs f6, 0x30(r1)
/* 802A01D4 00295F54  D0 A1 00 34 */	stfs f5, 0x34(r1)
/* 802A01D8 00295F58  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 802A01DC 00295F5C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 802A01E0 00295F60  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802A01E4 00295F64  38 00 FF F8 */	li r0, -0x8
/* 802A01E8 00295F68  13 EA 00 0C */	psq_lx f31, r10, r0, 0, qr0
/* 802A01EC 00295F6C  CB EA FF F0 */	lfd f31, -0x10(r10)
/* 802A01F0 00295F70  38 00 FF E8 */	li r0, -0x18
/* 802A01F4 00295F74  13 CA 00 0C */	psq_lx f30, r10, r0, 0, qr0
/* 802A01F8 00295F78  CB CA FF E0 */	lfd f30, -0x20(r10)
/* 802A01FC 00295F7C  38 00 FF D8 */	li r0, -0x28
/* 802A0200 00295F80  13 AA 00 0C */	psq_lx f29, r10, r0, 0, qr0
/* 802A0204 00295F84  CB AA FF D0 */	lfd f29, -0x30(r10)
/* 802A0208 00295F88  38 00 FF C8 */	li r0, -0x38
/* 802A020C 00295F8C  13 8A 00 0C */	psq_lx f28, r10, r0, 0, qr0
/* 802A0210 00295F90  CB 8A FF C0 */	lfd f28, -0x40(r10)
/* 802A0214 00295F94  7D 41 53 78 */	mr r1, r10
/* 802A0218 00295F98  4E 80 00 20 */	blr
.endfn fn_802A0088
