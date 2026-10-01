.include "macros.inc"
.file "auto_fn_80295EE4_text"

# 0x800066B8..0x800066C0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800066B8 | size: 0x8
.obj "@etb_800066B8", local
.hidden "@etb_800066B8"
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
.endobj "@etb_800066B8"

# 0x80009A24..0x80009A30 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009A24 | size: 0xC
.obj "@eti_80009A24", local
.hidden "@eti_80009A24"
	.4byte fn_80295EE4
	.4byte 0x0000025C
	.4byte "@etb_800066B8"
.endobj "@eti_80009A24"

# 0x80295EE4..0x80296140 | size: 0x25C
.text
.balign 4

# .text:0x0 | 0x80295EE4 | size: 0x25C
.fn fn_80295EE4, global
/* 80295EE4 0028BC64  54 2B 07 3E */	clrlwi r11, r1, 28
/* 80295EE8 0028BC68  7C 2C 0B 78 */	mr r12, r1
/* 80295EEC 0028BC6C  21 6B FF 80 */	subfic r11, r11, -0x80
/* 80295EF0 0028BC70  7C 21 59 6E */	stwux r1, r1, r11
/* 80295EF4 0028BC74  DB EC FF F0 */	stfd f31, -0x10(r12)
/* 80295EF8 0028BC78  F3 EC 0F F8 */	psq_st f31, -0x8(r12), 0, qr0
/* 80295EFC 0028BC7C  DB CC FF E0 */	stfd f30, -0x20(r12)
/* 80295F00 0028BC80  F3 CC 0F E8 */	psq_st f30, -0x18(r12), 0, qr0
/* 80295F04 0028BC84  DB AC FF D0 */	stfd f29, -0x30(r12)
/* 80295F08 0028BC88  F3 AC 0F D8 */	psq_st f29, -0x28(r12), 0, qr0
/* 80295F0C 0028BC8C  DB 8C FF C0 */	stfd f28, -0x40(r12)
/* 80295F10 0028BC90  F3 8C 0F C8 */	psq_st f28, -0x38(r12), 0, qr0
/* 80295F14 0028BC94  C0 A4 00 04 */	lfs f5, 0x4(r4)
/* 80295F18 0028BC98  C0 43 00 F0 */	lfs f2, 0xf0(r3)
/* 80295F1C 0028BC9C  C0 23 00 F4 */	lfs f1, 0xf4(r3)
/* 80295F20 0028BCA0  ED 05 00 B2 */	fmuls f8, f5, f2
/* 80295F24 0028BCA4  C0 03 00 F8 */	lfs f0, 0xf8(r3)
/* 80295F28 0028BCA8  EC E5 00 72 */	fmuls f7, f5, f1
/* 80295F2C 0028BCAC  C0 C4 00 00 */	lfs f6, 0x0(r4)
/* 80295F30 0028BCB0  C0 83 00 E0 */	lfs f4, 0xe0(r3)
/* 80295F34 0028BCB4  EC 45 00 32 */	fmuls f2, f5, f0
/* 80295F38 0028BCB8  ED 26 41 3A */	fmadds f9, f6, f4, f8
/* 80295F3C 0028BCBC  C0 63 00 E4 */	lfs f3, 0xe4(r3)
/* 80295F40 0028BCC0  C0 23 00 E8 */	lfs f1, 0xe8(r3)
/* 80295F44 0028BCC4  ED 06 38 FA */	fmadds f8, f6, f3, f7
/* 80295F48 0028BCC8  C0 84 00 08 */	lfs f4, 0x8(r4)
/* 80295F4C 0028BCCC  EC E6 10 7A */	fmadds f7, f6, f1, f2
/* 80295F50 0028BCD0  C0 63 01 00 */	lfs f3, 0x100(r3)
/* 80295F54 0028BCD4  C0 43 01 04 */	lfs f2, 0x104(r3)
/* 80295F58 0028BCD8  EC 64 48 FA */	fmadds f3, f4, f3, f9
/* 80295F5C 0028BCDC  C1 23 00 40 */	lfs f9, 0x40(r3)
/* 80295F60 0028BCE0  EC 44 40 BA */	fmadds f2, f4, f2, f8
/* 80295F64 0028BCE4  C0 23 01 08 */	lfs f1, 0x108(r3)
/* 80295F68 0028BCE8  ED 85 02 72 */	fmuls f12, f5, f9
/* 80295F6C 0028BCEC  C1 03 00 44 */	lfs f8, 0x44(r3)
/* 80295F70 0028BCF0  EC 24 38 7A */	fmadds f1, f4, f1, f7
/* 80295F74 0028BCF4  C0 02 AB 38 */	lfs f0, lbl_805A3E58@sda21(r0)
/* 80295F78 0028BCF8  C1 63 00 30 */	lfs f11, 0x30(r3)
/* 80295F7C 0028BCFC  ED 45 02 32 */	fmuls f10, f5, f8
/* 80295F80 0028BD00  C0 E3 00 48 */	lfs f7, 0x48(r3)
/* 80295F84 0028BD04  ED 86 62 FA */	fmadds f12, f6, f11, f12
/* 80295F88 0028BD08  ED 05 01 F2 */	fmuls f8, f5, f7
/* 80295F8C 0028BD0C  C1 23 00 34 */	lfs f9, 0x34(r3)
/* 80295F90 0028BD10  C0 E3 00 38 */	lfs f7, 0x38(r3)
/* 80295F94 0028BD14  C1 63 00 50 */	lfs f11, 0x50(r3)
/* 80295F98 0028BD18  ED 46 52 7A */	fmadds f10, f6, f9, f10
/* 80295F9C 0028BD1C  ED 06 41 FA */	fmadds f8, f6, f7, f8
/* 80295FA0 0028BD20  ED 84 62 FA */	fmadds f12, f4, f11, f12
/* 80295FA4 0028BD24  C3 83 00 60 */	lfs f28, 0x60(r3)
/* 80295FA8 0028BD28  C1 A5 00 00 */	lfs f13, 0x0(r5)
/* 80295FAC 0028BD2C  C1 25 00 04 */	lfs f9, 0x4(r5)
/* 80295FB0 0028BD30  C0 E5 00 08 */	lfs f7, 0x8(r5)
/* 80295FB4 0028BD34  EF BC 68 FA */	fmadds f29, f28, f3, f13
/* 80295FB8 0028BD38  EF DC 48 BA */	fmadds f30, f28, f2, f9
/* 80295FBC 0028BD3C  C1 65 00 0C */	lfs f11, 0xc(r5)
/* 80295FC0 0028BD40  EF FC 38 7A */	fmadds f31, f28, f1, f7
/* 80295FC4 0028BD44  C1 23 00 54 */	lfs f9, 0x54(r3)
/* 80295FC8 0028BD48  ED BC 58 3A */	fmadds f13, f28, f0, f11
/* 80295FCC 0028BD4C  ED 64 52 7A */	fmadds f11, f4, f9, f10
/* 80295FD0 0028BD50  C0 E3 00 58 */	lfs f7, 0x58(r3)
/* 80295FD4 0028BD54  D3 A5 00 00 */	stfs f29, 0x0(r5)
/* 80295FD8 0028BD58  ED 44 41 FA */	fmadds f10, f4, f7, f8
/* 80295FDC 0028BD5C  C3 83 00 D0 */	lfs f28, 0xd0(r3)
/* 80295FE0 0028BD60  D3 C5 00 04 */	stfs f30, 0x4(r5)
/* 80295FE4 0028BD64  D3 E5 00 08 */	stfs f31, 0x8(r5)
/* 80295FE8 0028BD68  D1 A5 00 0C */	stfs f13, 0xc(r5)
/* 80295FEC 0028BD6C  C0 E6 00 00 */	lfs f7, 0x0(r6)
/* 80295FF0 0028BD70  C1 26 00 04 */	lfs f9, 0x4(r6)
/* 80295FF4 0028BD74  ED BC 38 FC */	fnmsubs f13, f28, f3, f7
/* 80295FF8 0028BD78  C1 06 00 08 */	lfs f8, 0x8(r6)
/* 80295FFC 0028BD7C  ED 3C 48 BC */	fnmsubs f9, f28, f2, f9
/* 80296000 0028BD80  C0 E6 00 0C */	lfs f7, 0xc(r6)
/* 80296004 0028BD84  ED 1C 40 7C */	fnmsubs f8, f28, f1, f8
/* 80296008 0028BD88  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 8029600C 0028BD8C  EC 7C 38 3C */	fnmsubs f3, f28, f0, f7
/* 80296010 0028BD90  D1 A6 00 00 */	stfs f13, 0x0(r6)
/* 80296014 0028BD94  D1 26 00 04 */	stfs f9, 0x4(r6)
/* 80296018 0028BD98  D1 06 00 08 */	stfs f8, 0x8(r6)
/* 8029601C 0028BD9C  D0 66 00 0C */	stfs f3, 0xc(r6)
/* 80296020 0028BDA0  C0 65 00 10 */	lfs f3, 0x10(r5)
/* 80296024 0028BDA4  C1 05 00 14 */	lfs f8, 0x14(r5)
/* 80296028 0028BDA8  ED 23 60 2A */	fadds f9, f3, f12
/* 8029602C 0028BDAC  C0 E5 00 18 */	lfs f7, 0x18(r5)
/* 80296030 0028BDB0  ED 08 58 2A */	fadds f8, f8, f11
/* 80296034 0028BDB4  C0 65 00 1C */	lfs f3, 0x1c(r5)
/* 80296038 0028BDB8  EC E7 50 2A */	fadds f7, f7, f10
/* 8029603C 0028BDBC  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80296040 0028BDC0  EC 43 00 2A */	fadds f2, f3, f0
/* 80296044 0028BDC4  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80296048 0028BDC8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8029604C 0028BDCC  D1 81 00 20 */	stfs f12, 0x20(r1)
/* 80296050 0028BDD0  D1 61 00 24 */	stfs f11, 0x24(r1)
/* 80296054 0028BDD4  D1 41 00 28 */	stfs f10, 0x28(r1)
/* 80296058 0028BDD8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8029605C 0028BDDC  D1 25 00 10 */	stfs f9, 0x10(r5)
/* 80296060 0028BDE0  D1 05 00 14 */	stfs f8, 0x14(r5)
/* 80296064 0028BDE4  D0 E5 00 18 */	stfs f7, 0x18(r5)
/* 80296068 0028BDE8  D0 45 00 1C */	stfs f2, 0x1c(r5)
/* 8029606C 0028BDEC  C0 63 00 B0 */	lfs f3, 0xb0(r3)
/* 80296070 0028BDF0  C0 43 00 B4 */	lfs f2, 0xb4(r3)
/* 80296074 0028BDF4  ED 25 00 F2 */	fmuls f9, f5, f3
/* 80296078 0028BDF8  C0 23 00 B8 */	lfs f1, 0xb8(r3)
/* 8029607C 0028BDFC  EC E5 00 B2 */	fmuls f7, f5, f2
/* 80296080 0028BE00  C1 03 00 A0 */	lfs f8, 0xa0(r3)
/* 80296084 0028BE04  EC 45 00 72 */	fmuls f2, f5, f1
/* 80296088 0028BE08  C0 63 00 A4 */	lfs f3, 0xa4(r3)
/* 8029608C 0028BE0C  C0 23 00 A8 */	lfs f1, 0xa8(r3)
/* 80296090 0028BE10  EC E6 38 FA */	fmadds f7, f6, f3, f7
/* 80296094 0028BE14  C0 63 00 C4 */	lfs f3, 0xc4(r3)
/* 80296098 0028BE18  ED 06 4A 3A */	fmadds f8, f6, f8, f9
/* 8029609C 0028BE1C  EC 46 10 7A */	fmadds f2, f6, f1, f2
/* 802960A0 0028BE20  C0 A3 00 C0 */	lfs f5, 0xc0(r3)
/* 802960A4 0028BE24  EC E4 38 FA */	fmadds f7, f4, f3, f7
/* 802960A8 0028BE28  ED 04 41 7A */	fmadds f8, f4, f5, f8
/* 802960AC 0028BE2C  C0 23 00 C8 */	lfs f1, 0xc8(r3)
/* 802960B0 0028BE30  C0 66 00 14 */	lfs f3, 0x14(r6)
/* 802960B4 0028BE34  EC C4 10 7A */	fmadds f6, f4, f1, f2
/* 802960B8 0028BE38  C0 A6 00 10 */	lfs f5, 0x10(r6)
/* 802960BC 0028BE3C  C0 46 00 18 */	lfs f2, 0x18(r6)
/* 802960C0 0028BE40  C0 26 00 1C */	lfs f1, 0x1c(r6)
/* 802960C4 0028BE44  EC 85 40 28 */	fsubs f4, f5, f8
/* 802960C8 0028BE48  EC 63 38 28 */	fsubs f3, f3, f7
/* 802960CC 0028BE4C  EC 42 30 28 */	fsubs f2, f2, f6
/* 802960D0 0028BE50  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 802960D4 0028BE54  EC 21 00 28 */	fsubs f1, f1, f0
/* 802960D8 0028BE58  D0 86 00 10 */	stfs f4, 0x10(r6)
/* 802960DC 0028BE5C  D0 66 00 14 */	stfs f3, 0x14(r6)
/* 802960E0 0028BE60  D0 46 00 18 */	stfs f2, 0x18(r6)
/* 802960E4 0028BE64  D0 26 00 1C */	stfs f1, 0x1c(r6)
/* 802960E8 0028BE68  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 802960EC 0028BE6C  D0 06 00 1C */	stfs f0, 0x1c(r6)
/* 802960F0 0028BE70  D0 05 00 0C */	stfs f0, 0xc(r5)
/* 802960F4 0028BE74  D0 06 00 0C */	stfs f0, 0xc(r6)
/* 802960F8 0028BE78  D0 E1 00 14 */	stfs f7, 0x14(r1)
/* 802960FC 0028BE7C  D0 C1 00 18 */	stfs f6, 0x18(r1)
/* 80296100 0028BE80  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80296104 0028BE84  81 41 00 00 */	lwz r10, 0x0(r1)
/* 80296108 0028BE88  38 00 FF F8 */	li r0, -0x8
/* 8029610C 0028BE8C  13 EA 00 0C */	psq_lx f31, r10, r0, 0, qr0
/* 80296110 0028BE90  CB EA FF F0 */	lfd f31, -0x10(r10)
/* 80296114 0028BE94  38 00 FF E8 */	li r0, -0x18
/* 80296118 0028BE98  13 CA 00 0C */	psq_lx f30, r10, r0, 0, qr0
/* 8029611C 0028BE9C  CB CA FF E0 */	lfd f30, -0x20(r10)
/* 80296120 0028BEA0  38 00 FF D8 */	li r0, -0x28
/* 80296124 0028BEA4  13 AA 00 0C */	psq_lx f29, r10, r0, 0, qr0
/* 80296128 0028BEA8  CB AA FF D0 */	lfd f29, -0x30(r10)
/* 8029612C 0028BEAC  38 00 FF C8 */	li r0, -0x38
/* 80296130 0028BEB0  13 8A 00 0C */	psq_lx f28, r10, r0, 0, qr0
/* 80296134 0028BEB4  CB 8A FF C0 */	lfd f28, -0x40(r10)
/* 80296138 0028BEB8  7D 41 53 78 */	mr r1, r10
/* 8029613C 0028BEBC  4E 80 00 20 */	blr
.endfn fn_80295EE4
