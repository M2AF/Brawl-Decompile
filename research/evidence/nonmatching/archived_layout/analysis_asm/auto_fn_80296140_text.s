.include "macros.inc"
.file "auto_fn_80296140_text"

# 0x800066C0..0x800066C8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800066C0 | size: 0x8
.obj "@etb_800066C0", local
.hidden "@etb_800066C0"
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
.endobj "@etb_800066C0"

# 0x80009A30..0x80009A3C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009A30 | size: 0xC
.obj "@eti_80009A30", local
.hidden "@eti_80009A30"
	.4byte fn_80296140
	.4byte 0x00000200
	.4byte "@etb_800066C0"
.endobj "@eti_80009A30"

# 0x80296140..0x80296340 | size: 0x200
.text
.balign 4

# .text:0x0 | 0x80296140 | size: 0x200
.fn fn_80296140, global
/* 80296140 0028BEC0  54 2B 07 3E */	clrlwi r11, r1, 28
/* 80296144 0028BEC4  7C 2C 0B 78 */	mr r12, r1
/* 80296148 0028BEC8  21 6B FF 80 */	subfic r11, r11, -0x80
/* 8029614C 0028BECC  7C 21 59 6E */	stwux r1, r1, r11
/* 80296150 0028BED0  DB EC FF F0 */	stfd f31, -0x10(r12)
/* 80296154 0028BED4  F3 EC 0F F8 */	psq_st f31, -0x8(r12), 0, qr0
/* 80296158 0028BED8  DB CC FF E0 */	stfd f30, -0x20(r12)
/* 8029615C 0028BEDC  F3 CC 0F E8 */	psq_st f30, -0x18(r12), 0, qr0
/* 80296160 0028BEE0  DB AC FF D0 */	stfd f29, -0x30(r12)
/* 80296164 0028BEE4  F3 AC 0F D8 */	psq_st f29, -0x28(r12), 0, qr0
/* 80296168 0028BEE8  DB 8C FF C0 */	stfd f28, -0x40(r12)
/* 8029616C 0028BEEC  F3 8C 0F C8 */	psq_st f28, -0x38(r12), 0, qr0
/* 80296170 0028BEF0  C0 64 00 14 */	lfs f3, 0x14(r4)
/* 80296174 0028BEF4  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 80296178 0028BEF8  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 8029617C 0028BEFC  ED 63 00 B2 */	fmuls f11, f3, f2
/* 80296180 0028BF00  C0 85 00 14 */	lfs f4, 0x14(r5)
/* 80296184 0028BF04  ED 23 00 72 */	fmuls f9, f3, f1
/* 80296188 0028BF08  C0 43 00 80 */	lfs f2, 0x80(r3)
/* 8029618C 0028BF0C  C0 23 00 88 */	lfs f1, 0x88(r3)
/* 80296190 0028BF10  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80296194 0028BF14  ED 04 00 B2 */	fmuls f8, f4, f2
/* 80296198 0028BF18  C0 44 00 04 */	lfs f2, 0x4(r4)
/* 8029619C 0028BF1C  EC C4 00 72 */	fmuls f6, f4, f1
/* 802961A0 0028BF20  C0 25 00 04 */	lfs f1, 0x4(r5)
/* 802961A4 0028BF24  EC 63 00 32 */	fmuls f3, f3, f0
/* 802961A8 0028BF28  C0 03 00 84 */	lfs f0, 0x84(r3)
/* 802961AC 0028BF2C  ED 42 08 28 */	fsubs f10, f2, f1
/* 802961B0 0028BF30  C3 84 00 10 */	lfs f28, 0x10(r4)
/* 802961B4 0028BF34  EC E4 00 32 */	fmuls f7, f4, f0
/* 802961B8 0028BF38  C0 23 00 00 */	lfs f1, 0x0(r3)
/* 802961BC 0028BF3C  C0 83 00 04 */	lfs f4, 0x4(r3)
/* 802961C0 0028BF40  ED BC 58 7A */	fmadds f13, f28, f1, f11
/* 802961C4 0028BF44  ED 9C 49 3A */	fmadds f12, f28, f4, f9
/* 802961C8 0028BF48  C0 43 00 08 */	lfs f2, 0x8(r3)
/* 802961CC 0028BF4C  C0 23 00 E4 */	lfs f1, 0xe4(r3)
/* 802961D0 0028BF50  ED 3C 18 BA */	fmadds f9, f28, f2, f3
/* 802961D4 0028BF54  C1 65 00 10 */	lfs f11, 0x10(r5)
/* 802961D8 0028BF58  C0 63 00 70 */	lfs f3, 0x70(r3)
/* 802961DC 0028BF5C  EC 4A 00 72 */	fmuls f2, f10, f1
/* 802961E0 0028BF60  C0 23 00 74 */	lfs f1, 0x74(r3)
/* 802961E4 0028BF64  C0 83 00 78 */	lfs f4, 0x78(r3)
/* 802961E8 0028BF68  ED 0B 40 FA */	fmadds f8, f11, f3, f8
/* 802961EC 0028BF6C  C0 64 00 00 */	lfs f3, 0x0(r4)
/* 802961F0 0028BF70  EC EB 38 7A */	fmadds f7, f11, f1, f7
/* 802961F4 0028BF74  C0 02 AB 38 */	lfs f0, lbl_805A3E58@sda21(r0)
/* 802961F8 0028BF78  EC 8B 31 3A */	fmadds f4, f11, f4, f6
/* 802961FC 0028BF7C  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 80296200 0028BF80  C3 C4 00 18 */	lfs f30, 0x18(r4)
/* 80296204 0028BF84  EC A0 00 28 */	fsubs f5, f0, f0
/* 80296208 0028BF88  ED 63 08 28 */	fsubs f11, f3, f1
/* 8029620C 0028BF8C  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 80296210 0028BF90  C0 C3 00 24 */	lfs f6, 0x24(r3)
/* 80296214 0028BF94  EF 9E 68 7A */	fmadds f28, f30, f1, f13
/* 80296218 0028BF98  C0 23 00 E0 */	lfs f1, 0xe0(r3)
/* 8029621C 0028BF9C  EF BE 61 BA */	fmadds f29, f30, f6, f12
/* 80296220 0028BFA0  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 80296224 0028BFA4  EC 4B 10 7A */	fmadds f2, f11, f1, f2
/* 80296228 0028BFA8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8029622C 0028BFAC  EF DE 48 FA */	fmadds f30, f30, f3, f9
/* 80296230 0028BFB0  C1 85 00 18 */	lfs f12, 0x18(r5)
/* 80296234 0028BFB4  C0 C3 00 90 */	lfs f6, 0x90(r3)
/* 80296238 0028BFB8  C0 63 00 94 */	lfs f3, 0x94(r3)
/* 8029623C 0028BFBC  EF EC 41 BA */	fmadds f31, f12, f6, f8
/* 80296240 0028BFC0  C0 23 00 98 */	lfs f1, 0x98(r3)
/* 80296244 0028BFC4  ED AC 38 FA */	fmadds f13, f12, f3, f7
/* 80296248 0028BFC8  C0 64 00 08 */	lfs f3, 0x8(r4)
/* 8029624C 0028BFCC  ED 8C 20 7A */	fmadds f12, f12, f1, f4
/* 80296250 0028BFD0  C0 25 00 08 */	lfs f1, 0x8(r5)
/* 80296254 0028BFD4  ED 23 08 28 */	fsubs f9, f3, f1
/* 80296258 0028BFD8  C0 23 00 E8 */	lfs f1, 0xe8(r3)
/* 8029625C 0028BFDC  EC 7C F8 28 */	fsubs f3, f28, f31
/* 80296260 0028BFE0  C0 C4 00 0C */	lfs f6, 0xc(r4)
/* 80296264 0028BFE4  C0 85 00 0C */	lfs f4, 0xc(r5)
/* 80296268 0028BFE8  ED 1D 68 28 */	fsubs f8, f29, f13
/* 8029626C 0028BFEC  EC 86 20 28 */	fsubs f4, f6, f4
/* 80296270 0028BFF0  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 80296274 0028BFF4  EC FE 60 28 */	fsubs f7, f30, f12
/* 80296278 0028BFF8  EC 29 10 7A */	fmadds f1, f9, f1, f2
/* 8029627C 0028BFFC  D1 A1 00 24 */	stfs f13, 0x24(r1)
/* 80296280 0028C000  D1 81 00 28 */	stfs f12, 0x28(r1)
/* 80296284 0028C004  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80296288 0028C008  D1 41 00 14 */	stfs f10, 0x14(r1)
/* 8029628C 0028C00C  D1 21 00 18 */	stfs f9, 0x18(r1)
/* 80296290 0028C010  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 80296294 0028C014  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 80296298 0028C018  D1 01 00 34 */	stfs f8, 0x34(r1)
/* 8029629C 0028C01C  D0 E1 00 38 */	stfs f7, 0x38(r1)
/* 802962A0 0028C020  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 802962A4 0028C024  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 802962A8 0028C028  EC 43 08 2A */	fadds f2, f3, f1
/* 802962AC 0028C02C  C0 83 00 F4 */	lfs f4, 0xf4(r3)
/* 802962B0 0028C030  C0 63 01 04 */	lfs f3, 0x104(r3)
/* 802962B4 0028C034  EC 25 00 2A */	fadds f1, f5, f0
/* 802962B8 0028C038  EC CA 01 32 */	fmuls f6, f10, f4
/* 802962BC 0028C03C  C0 A3 00 F0 */	lfs f5, 0xf0(r3)
/* 802962C0 0028C040  EC 8A 00 F2 */	fmuls f4, f10, f3
/* 802962C4 0028C044  C0 63 01 00 */	lfs f3, 0x100(r3)
/* 802962C8 0028C048  EC CB 31 7A */	fmadds f6, f11, f5, f6
/* 802962CC 0028C04C  C0 A3 00 F8 */	lfs f5, 0xf8(r3)
/* 802962D0 0028C050  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802962D4 0028C054  EC 8B 20 FA */	fmadds f4, f11, f3, f4
/* 802962D8 0028C058  C0 63 01 08 */	lfs f3, 0x108(r3)
/* 802962DC 0028C05C  EC 09 31 7A */	fmadds f0, f9, f5, f6
/* 802962E0 0028C060  D0 46 00 00 */	stfs f2, 0x0(r6)
/* 802962E4 0028C064  EC 69 20 FA */	fmadds f3, f9, f3, f4
/* 802962E8 0028C068  EC 48 00 2A */	fadds f2, f8, f0
/* 802962EC 0028C06C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802962F0 0028C070  EC 07 18 2A */	fadds f0, f7, f3
/* 802962F4 0028C074  D0 26 00 0C */	stfs f1, 0xc(r6)
/* 802962F8 0028C078  D0 46 00 04 */	stfs f2, 0x4(r6)
/* 802962FC 0028C07C  D0 06 00 08 */	stfs f0, 0x8(r6)
/* 80296300 0028C080  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 80296304 0028C084  81 41 00 00 */	lwz r10, 0x0(r1)
/* 80296308 0028C088  38 00 FF F8 */	li r0, -0x8
/* 8029630C 0028C08C  13 EA 00 0C */	psq_lx f31, r10, r0, 0, qr0
/* 80296310 0028C090  CB EA FF F0 */	lfd f31, -0x10(r10)
/* 80296314 0028C094  38 00 FF E8 */	li r0, -0x18
/* 80296318 0028C098  13 CA 00 0C */	psq_lx f30, r10, r0, 0, qr0
/* 8029631C 0028C09C  CB CA FF E0 */	lfd f30, -0x20(r10)
/* 80296320 0028C0A0  38 00 FF D8 */	li r0, -0x28
/* 80296324 0028C0A4  13 AA 00 0C */	psq_lx f29, r10, r0, 0, qr0
/* 80296328 0028C0A8  CB AA FF D0 */	lfd f29, -0x30(r10)
/* 8029632C 0028C0AC  38 00 FF C8 */	li r0, -0x38
/* 80296330 0028C0B0  13 8A 00 0C */	psq_lx f28, r10, r0, 0, qr0
/* 80296334 0028C0B4  CB 8A FF C0 */	lfd f28, -0x40(r10)
/* 80296338 0028C0B8  7D 41 53 78 */	mr r1, r10
/* 8029633C 0028C0BC  4E 80 00 20 */	blr
.endfn fn_80296140
