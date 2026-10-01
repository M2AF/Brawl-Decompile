.include "macros.inc"
.file "auto_fn_80325184_text"

# 0x80008DAC..0x80008DB4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008DAC | size: 0x8
.obj "@etb_80008DAC", local
.hidden "@etb_80008DAC"
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
.endobj "@etb_80008DAC"

# 0x8000BD70..0x8000BD7C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BD70 | size: 0xC
.obj "@eti_8000BD70", local
.hidden "@eti_8000BD70"
	.4byte fn_80325184
	.4byte 0x000001B0
	.4byte "@etb_80008DAC"
.endobj "@eti_8000BD70"

# 0x80325184..0x80325334 | size: 0x1B0
.text
.balign 4

# .text:0x0 | 0x80325184 | size: 0x1B0
.fn fn_80325184, global
/* 80325184 0031AF04  54 2B 07 3E */	clrlwi r11, r1, 28
/* 80325188 0031AF08  7C 2C 0B 78 */	mr r12, r1
/* 8032518C 0031AF0C  21 6B FF 70 */	subfic r11, r11, -0x90
/* 80325190 0031AF10  7C 21 59 6E */	stwux r1, r1, r11
/* 80325194 0031AF14  DB EC FF F0 */	stfd f31, -0x10(r12)
/* 80325198 0031AF18  F3 EC 0F F8 */	psq_st f31, -0x8(r12), 0, qr0
/* 8032519C 0031AF1C  DB CC FF E0 */	stfd f30, -0x20(r12)
/* 803251A0 0031AF20  F3 CC 0F E8 */	psq_st f30, -0x18(r12), 0, qr0
/* 803251A4 0031AF24  DB AC FF D0 */	stfd f29, -0x30(r12)
/* 803251A8 0031AF28  F3 AC 0F D8 */	psq_st f29, -0x28(r12), 0, qr0
/* 803251AC 0031AF2C  DB 8C FF C0 */	stfd f28, -0x40(r12)
/* 803251B0 0031AF30  F3 8C 0F C8 */	psq_st f28, -0x38(r12), 0, qr0
/* 803251B4 0031AF34  C0 43 00 04 */	lfs f2, 0x4(r3)
/* 803251B8 0031AF38  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 803251BC 0031AF3C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 803251C0 0031AF40  ED 62 08 28 */	fsubs f11, f2, f1
/* 803251C4 0031AF44  C0 43 00 00 */	lfs f2, 0x0(r3)
/* 803251C8 0031AF48  EC C0 08 28 */	fsubs f6, f0, f1
/* 803251CC 0031AF4C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 803251D0 0031AF50  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 803251D4 0031AF54  ED 82 08 28 */	fsubs f12, f2, f1
/* 803251D8 0031AF58  EC E0 08 28 */	fsubs f7, f0, f1
/* 803251DC 0031AF5C  C0 03 00 08 */	lfs f0, 0x8(r3)
/* 803251E0 0031AF60  C0 A3 00 18 */	lfs f5, 0x18(r3)
/* 803251E4 0031AF64  EC 2B 02 F2 */	fmuls f1, f11, f11
/* 803251E8 0031AF68  EC 46 01 B2 */	fmuls f2, f6, f6
/* 803251EC 0031AF6C  ED 40 28 28 */	fsubs f10, f0, f5
/* 803251F0 0031AF70  EC 8C 0B 3A */	fmadds f4, f12, f12, f1
/* 803251F4 0031AF74  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 803251F8 0031AF78  EC 06 02 F2 */	fmuls f0, f6, f11
/* 803251FC 0031AF7C  C0 22 B4 A8 */	lfs f1, lbl_805A47C8@sda21(r0)
/* 80325200 0031AF80  EC A3 28 28 */	fsubs f5, f3, f5
/* 80325204 0031AF84  EC 47 11 FA */	fmadds f2, f7, f7, f2
/* 80325208 0031AF88  EC 07 03 3A */	fmadds f0, f7, f12, f0
/* 8032520C 0031AF8C  C0 62 B4 AC */	lfs f3, lbl_805A47CC@sda21(r0)
/* 80325210 0031AF90  EF EA 22 BA */	fmadds f31, f10, f10, f4
/* 80325214 0031AF94  D1 61 00 44 */	stfs f11, 0x44(r1)
/* 80325218 0031AF98  EF C5 11 7A */	fmadds f30, f5, f5, f2
/* 8032521C 0031AF9C  EF A5 02 BA */	fmadds f29, f5, f10, f0
/* 80325220 0031AFA0  EC 0C 01 72 */	fmuls f0, f12, f5
/* 80325224 0031AFA4  C1 23 00 0C */	lfs f9, 0xc(r3)
/* 80325228 0031AFA8  EC 5F 07 B2 */	fmuls f2, f31, f30
/* 8032522C 0031AFAC  C1 03 00 1C */	lfs f8, 0x1c(r3)
/* 80325230 0031AFB0  EF 9D 07 72 */	fmuls f28, f29, f29
/* 80325234 0031AFB4  ED AA 01 F8 */	fmsubs f13, f10, f7, f0
/* 80325238 0031AFB8  C0 83 00 2C */	lfs f4, 0x2c(r3)
/* 8032523C 0031AFBC  EC 0A 01 B2 */	fmuls f0, f10, f6
/* 80325240 0031AFC0  EF 82 E0 28 */	fsubs f28, f2, f28
/* 80325244 0031AFC4  D0 A1 00 38 */	stfs f5, 0x38(r1)
/* 80325248 0031AFC8  EC 4B 01 F2 */	fmuls f2, f11, f7
/* 8032524C 0031AFCC  ED 6B 01 78 */	fmsubs f11, f11, f5, f0
/* 80325250 0031AFD0  D1 81 00 40 */	stfs f12, 0x40(r1)
/* 80325254 0031AFD4  EF 83 E0 24 */	fdivs f28, f3, f28
/* 80325258 0031AFD8  D1 41 00 48 */	stfs f10, 0x48(r1)
/* 8032525C 0031AFDC  D0 E1 00 30 */	stfs f7, 0x30(r1)
/* 80325260 0031AFE0  D0 C1 00 34 */	stfs f6, 0x34(r1)
/* 80325264 0031AFE4  D1 61 00 20 */	stfs f11, 0x20(r1)
/* 80325268 0031AFE8  D1 A1 00 24 */	stfs f13, 0x24(r1)
/* 8032526C 0031AFEC  EC AC 11 B8 */	fmsubs f5, f12, f6, f2
/* 80325270 0031AFF0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80325274 0031AFF4  EC 0D 03 72 */	fmuls f0, f13, f13
/* 80325278 0031AFF8  EC 49 40 28 */	fsubs f2, f9, f8
/* 8032527C 0031AFFC  EC 84 40 28 */	fsubs f4, f4, f8
/* 80325280 0031B000  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 80325284 0031B004  EC 0B 02 FA */	fmadds f0, f11, f11, f0
/* 80325288 0031B008  EC 7F 07 32 */	fmuls f3, f31, f28
/* 8032528C 0031B00C  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80325290 0031B010  EC 5E 07 32 */	fmuls f2, f30, f28
/* 80325294 0031B014  EC A5 01 7A */	fmadds f5, f5, f5, f0
/* 80325298 0031B018  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 8032529C 0031B01C  EC 1D 07 32 */	fmuls f0, f29, f28
/* 803252A0 0031B020  D0 64 00 00 */	stfs f3, 0x0(r4)
/* 803252A4 0031B024  FC 05 08 40 */	fcmpo cr0, f5, f1
/* 803252A8 0031B028  D0 44 00 04 */	stfs f2, 0x4(r4)
/* 803252AC 0031B02C  D0 04 00 08 */	stfs f0, 0x8(r4)
/* 803252B0 0031B030  4C 40 13 82 */	cror eq, lt, eq
/* 803252B4 0031B034  40 82 00 14 */	bne .L_803252C8
/* 803252B8 0031B038  3C 00 7F 80 */	lis r0, 0x7f80
/* 803252BC 0031B03C  90 01 00 10 */	stw r0, 0x10(r1)
/* 803252C0 0031B040  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 803252C4 0031B044  48 00 00 24 */	b .L_803252E8
.L_803252C8:
/* 803252C8 0031B048  FC 20 28 34 */	frsqrte f1, f5
/* 803252CC 0031B04C  C0 42 B4 B4 */	lfs f2, lbl_805A47D4@sda21(r0)
/* 803252D0 0031B050  C0 02 B4 B8 */	lfs f0, lbl_805A47D8@sda21(r0)
/* 803252D4 0031B054  FC 60 08 18 */	frsp f3, f1
/* 803252D8 0031B058  EC 25 00 F2 */	fmuls f1, f5, f3
/* 803252DC 0031B05C  EC 42 00 F2 */	fmuls f2, f2, f3
/* 803252E0 0031B060  EC 03 00 7C */	fnmsubs f0, f3, f1, f0
/* 803252E4 0031B064  EC 22 00 32 */	fmuls f1, f2, f0
.L_803252E8:
/* 803252E8 0031B068  C0 02 B4 AC */	lfs f0, lbl_805A47CC@sda21(r0)
/* 803252EC 0031B06C  EC 20 08 24 */	fdivs f1, f0, f1
/* 803252F0 0031B070  EC 00 08 24 */	fdivs f0, f0, f1
/* 803252F4 0031B074  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 803252F8 0031B078  81 41 00 00 */	lwz r10, 0x0(r1)
/* 803252FC 0031B07C  38 00 FF F8 */	li r0, -0x8
/* 80325300 0031B080  13 EA 00 0C */	psq_lx f31, r10, r0, 0, qr0
/* 80325304 0031B084  CB EA FF F0 */	lfd f31, -0x10(r10)
/* 80325308 0031B088  38 00 FF E8 */	li r0, -0x18
/* 8032530C 0031B08C  13 CA 00 0C */	psq_lx f30, r10, r0, 0, qr0
/* 80325310 0031B090  CB CA FF E0 */	lfd f30, -0x20(r10)
/* 80325314 0031B094  38 00 FF D8 */	li r0, -0x28
/* 80325318 0031B098  13 AA 00 0C */	psq_lx f29, r10, r0, 0, qr0
/* 8032531C 0031B09C  CB AA FF D0 */	lfd f29, -0x30(r10)
/* 80325320 0031B0A0  38 00 FF C8 */	li r0, -0x38
/* 80325324 0031B0A4  13 8A 00 0C */	psq_lx f28, r10, r0, 0, qr0
/* 80325328 0031B0A8  CB 8A FF C0 */	lfd f28, -0x40(r10)
/* 8032532C 0031B0AC  7D 41 53 78 */	mr r1, r10
/* 80325330 0031B0B0  4E 80 00 20 */	blr
.endfn fn_80325184
