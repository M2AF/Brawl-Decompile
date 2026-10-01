.include "macros.inc"
.file "auto_fn_803151F4_text"

# 0x80008B7C..0x80008B84 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008B7C | size: 0x8
.obj "@etb_80008B7C", local
.hidden "@etb_80008B7C"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_80008B7C"

# 0x8000BA70..0x8000BA7C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BA70 | size: 0xC
.obj "@eti_8000BA70", local
.hidden "@eti_8000BA70"
	.4byte fn_803151F4
	.4byte 0x00000184
	.4byte "@etb_80008B7C"
.endobj "@eti_8000BA70"

# 0x803151F4..0x80315378 | size: 0x184
.text
.balign 4

# .text:0x0 | 0x803151F4 | size: 0x184
.fn fn_803151F4, global
/* 803151F4 0030AF74  C1 25 00 08 */	lfs f9, 0x8(r5)
/* 803151F8 0030AF78  54 2B 07 3E */	clrlwi r11, r1, 28
/* 803151FC 0030AF7C  C0 47 00 00 */	lfs f2, 0x0(r7)
/* 80315200 0030AF80  21 6B FF C0 */	subfic r11, r11, -0x40
/* 80315204 0030AF84  7C 2C 0B 78 */	mr r12, r1
/* 80315208 0030AF88  C0 27 00 08 */	lfs f1, 0x8(r7)
/* 8031520C 0030AF8C  C1 45 00 04 */	lfs f10, 0x4(r5)
/* 80315210 0030AF90  EC 02 02 72 */	fmuls f0, f2, f9
/* 80315214 0030AF94  C1 05 00 00 */	lfs f8, 0x0(r5)
/* 80315218 0030AF98  EC A1 02 B2 */	fmuls f5, f1, f10
/* 8031521C 0030AF9C  C0 67 00 04 */	lfs f3, 0x4(r7)
/* 80315220 0030AFA0  ED 81 02 38 */	fmsubs f12, f1, f8, f0
/* 80315224 0030AFA4  7C 21 59 6E */	stwux r1, r1, r11
/* 80315228 0030AFA8  C0 E2 B3 30 */	lfs f7, lbl_805A4650@sda21(r0)
/* 8031522C 0030AFAC  EC 23 02 32 */	fmuls f1, f3, f8
/* 80315230 0030AFB0  ED A3 2A 78 */	fmsubs f13, f3, f9, f5
/* 80315234 0030AFB4  C0 C7 00 18 */	lfs f6, 0x18(r7)
/* 80315238 0030AFB8  EC 0C 03 32 */	fmuls f0, f12, f12
/* 8031523C 0030AFBC  C0 87 00 14 */	lfs f4, 0x14(r7)
/* 80315240 0030AFC0  ED 62 0A B8 */	fmsubs f11, f2, f10, f1
/* 80315244 0030AFC4  C0 67 00 10 */	lfs f3, 0x10(r7)
/* 80315248 0030AFC8  EC 43 02 72 */	fmuls f2, f3, f9
/* 8031524C 0030AFCC  D1 81 00 34 */	stfs f12, 0x34(r1)
/* 80315250 0030AFD0  EC 0D 03 7A */	fmadds f0, f13, f13, f0
/* 80315254 0030AFD4  EC A6 02 B2 */	fmuls f5, f6, f10
/* 80315258 0030AFD8  D1 A1 00 30 */	stfs f13, 0x30(r1)
/* 8031525C 0030AFDC  EC 24 02 32 */	fmuls f1, f4, f8
/* 80315260 0030AFE0  ED 8B 02 FA */	fmadds f12, f11, f11, f0
/* 80315264 0030AFE4  D1 61 00 38 */	stfs f11, 0x38(r1)
/* 80315268 0030AFE8  EC 84 2A 78 */	fmsubs f4, f4, f9, f5
/* 8031526C 0030AFEC  EC 46 12 38 */	fmsubs f2, f6, f8, f2
/* 80315270 0030AFF0  D0 E1 00 3C */	stfs f7, 0x3c(r1)
/* 80315274 0030AFF4  EC 03 0A B8 */	fmsubs f0, f3, f10, f1
/* 80315278 0030AFF8  FC 0C 38 40 */	fcmpo cr0, f12, f7
/* 8031527C 0030AFFC  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 80315280 0030B000  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80315284 0030B004  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80315288 0030B008  D0 E1 00 2C */	stfs f7, 0x2c(r1)
/* 8031528C 0030B00C  4C 40 13 82 */	cror eq, lt, eq
/* 80315290 0030B010  40 82 00 14 */	bne .L_803152A4
/* 80315294 0030B014  3C 00 7F 80 */	lis r0, 0x7f80
/* 80315298 0030B018  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031529C 0030B01C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 803152A0 0030B020  48 00 00 24 */	b .L_803152C4
.L_803152A4:
/* 803152A4 0030B024  FC 20 60 34 */	frsqrte f1, f12
/* 803152A8 0030B028  C0 42 B3 44 */	lfs f2, lbl_805A4664@sda21(r0)
/* 803152AC 0030B02C  C0 02 B3 4C */	lfs f0, lbl_805A466C@sda21(r0)
/* 803152B0 0030B030  FC 60 08 18 */	frsp f3, f1
/* 803152B4 0030B034  EC 2C 00 F2 */	fmuls f1, f12, f3
/* 803152B8 0030B038  EC 42 00 F2 */	fmuls f2, f2, f3
/* 803152BC 0030B03C  EC 03 00 7C */	fnmsubs f0, f3, f1, f0
/* 803152C0 0030B040  EC 22 00 32 */	fmuls f1, f2, f0
.L_803152C4:
/* 803152C4 0030B044  C0 02 B3 40 */	lfs f0, lbl_805A4660@sda21(r0)
/* 803152C8 0030B048  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 803152CC 0030B04C  EC A0 08 24 */	fdivs f5, f0, f1
/* 803152D0 0030B050  C0 83 00 A0 */	lfs f4, 0xa0(r3)
/* 803152D4 0030B054  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 803152D8 0030B058  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 803152DC 0030B05C  C0 02 B3 30 */	lfs f0, lbl_805A4650@sda21(r0)
/* 803152E0 0030B060  EC 63 00 F2 */	fmuls f3, f3, f3
/* 803152E4 0030B064  EC E4 01 72 */	fmuls f7, f4, f5
/* 803152E8 0030B068  EC 42 18 BA */	fmadds f2, f2, f2, f3
/* 803152EC 0030B06C  EC 81 10 7A */	fmadds f4, f1, f1, f2
/* 803152F0 0030B070  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 803152F4 0030B074  4C 40 13 82 */	cror eq, lt, eq
/* 803152F8 0030B078  40 82 00 14 */	bne .L_8031530C
/* 803152FC 0030B07C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80315300 0030B080  90 01 00 10 */	stw r0, 0x10(r1)
/* 80315304 0030B084  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80315308 0030B088  48 00 00 24 */	b .L_8031532C
.L_8031530C:
/* 8031530C 0030B08C  FC 20 20 34 */	frsqrte f1, f4
/* 80315310 0030B090  C0 42 B3 44 */	lfs f2, lbl_805A4664@sda21(r0)
/* 80315314 0030B094  C0 02 B3 4C */	lfs f0, lbl_805A466C@sda21(r0)
/* 80315318 0030B098  FC 60 08 18 */	frsp f3, f1
/* 8031531C 0030B09C  EC 24 00 F2 */	fmuls f1, f4, f3
/* 80315320 0030B0A0  EC 42 00 F2 */	fmuls f2, f2, f3
/* 80315324 0030B0A4  EC 03 00 7C */	fnmsubs f0, f3, f1, f0
/* 80315328 0030B0A8  EC 22 00 32 */	fmuls f1, f2, f0
.L_8031532C:
/* 8031532C 0030B0AC  C0 02 B3 40 */	lfs f0, lbl_805A4660@sda21(r0)
/* 80315330 0030B0B0  C0 86 00 04 */	lfs f4, 0x4(r6)
/* 80315334 0030B0B4  EC C0 08 24 */	fdivs f6, f0, f1
/* 80315338 0030B0B8  C0 05 00 04 */	lfs f0, 0x4(r5)
/* 8031533C 0030B0BC  C0 A4 00 A0 */	lfs f5, 0xa0(r4)
/* 80315340 0030B0C0  C0 66 00 00 */	lfs f3, 0x0(r6)
/* 80315344 0030B0C4  C0 45 00 00 */	lfs f2, 0x0(r5)
/* 80315348 0030B0C8  C0 26 00 08 */	lfs f1, 0x8(r6)
/* 8031534C 0030B0CC  EC 84 00 32 */	fmuls f4, f4, f0
/* 80315350 0030B0D0  C0 05 00 08 */	lfs f0, 0x8(r5)
/* 80315354 0030B0D4  EC A5 01 B2 */	fmuls f5, f5, f6
/* 80315358 0030B0D8  EC 43 20 BA */	fmadds f2, f3, f2, f4
/* 8031535C 0030B0DC  EC 67 28 2A */	fadds f3, f7, f5
/* 80315360 0030B0E0  EC 01 10 3A */	fmadds f0, f1, f0, f2
/* 80315364 0030B0E4  D0 69 00 00 */	stfs f3, 0x0(r9)
/* 80315368 0030B0E8  D0 08 00 00 */	stfs f0, 0x0(r8)
/* 8031536C 0030B0EC  81 41 00 00 */	lwz r10, 0x0(r1)
/* 80315370 0030B0F0  7D 41 53 78 */	mr r1, r10
/* 80315374 0030B0F4  4E 80 00 20 */	blr
.endfn fn_803151F4
