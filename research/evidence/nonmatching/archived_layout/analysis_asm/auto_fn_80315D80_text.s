.include "macros.inc"
.file "auto_fn_80315D80_text"

# 0x80008BA4..0x80008BAC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008BA4 | size: 0x8
.obj "@etb_80008BA4", local
.hidden "@etb_80008BA4"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_80008BA4"

# 0x8000BAAC..0x8000BAB8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BAAC | size: 0xC
.obj "@eti_8000BAAC", local
.hidden "@eti_8000BAAC"
	.4byte fn_80315D80
	.4byte 0x000000D0
	.4byte "@etb_80008BA4"
.endobj "@eti_8000BAAC"

# 0x80315D80..0x80315E50 | size: 0xD0
.text
.balign 4

# .text:0x0 | 0x80315D80 | size: 0xD0
.fn fn_80315D80, global
/* 80315D80 0030BB00  54 2B 07 3E */	clrlwi r11, r1, 28
/* 80315D84 0030BB04  7C 2C 0B 78 */	mr r12, r1
/* 80315D88 0030BB08  21 6B FF E0 */	subfic r11, r11, -0x20
/* 80315D8C 0030BB0C  C0 03 01 1C */	lfs f0, 0x11c(r3)
/* 80315D90 0030BB10  7C 21 59 6E */	stwux r1, r1, r11
/* 80315D94 0030BB14  88 04 00 04 */	lbz r0, 0x4(r4)
/* 80315D98 0030BB18  88 84 00 05 */	lbz r4, 0x5(r4)
/* 80315D9C 0030BB1C  7C C3 02 14 */	add r6, r3, r0
/* 80315DA0 0030BB20  7D 63 04 2E */	lfsx f11, r3, r0
/* 80315DA4 0030BB24  7C 83 22 14 */	add r4, r3, r4
/* 80315DA8 0030BB28  C1 26 00 04 */	lfs f9, 0x4(r6)
/* 80315DAC 0030BB2C  C0 24 00 04 */	lfs f1, 0x4(r4)
/* 80315DB0 0030BB30  C0 E6 00 08 */	lfs f7, 0x8(r6)
/* 80315DB4 0030BB34  ED 09 08 28 */	fsubs f8, f9, f1
/* 80315DB8 0030BB38  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 80315DBC 0030BB3C  C0 44 00 08 */	lfs f2, 0x8(r4)
/* 80315DC0 0030BB40  ED 4B 08 28 */	fsubs f10, f11, f1
/* 80315DC4 0030BB44  C0 A6 00 0C */	lfs f5, 0xc(r6)
/* 80315DC8 0030BB48  EC 28 02 32 */	fmuls f1, f8, f8
/* 80315DCC 0030BB4C  EC C7 10 28 */	fsubs f6, f7, f2
/* 80315DD0 0030BB50  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 80315DD4 0030BB54  D1 41 00 10 */	stfs f10, 0x10(r1)
/* 80315DD8 0030BB58  EC 2A 0A BA */	fmadds f1, f10, f10, f1
/* 80315DDC 0030BB5C  EC 85 10 28 */	fsubs f4, f5, f2
/* 80315DE0 0030BB60  D1 01 00 14 */	stfs f8, 0x14(r1)
/* 80315DE4 0030BB64  EC 26 09 BA */	fmadds f1, f6, f6, f1
/* 80315DE8 0030BB68  D0 C1 00 18 */	stfs f6, 0x18(r1)
/* 80315DEC 0030BB6C  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 80315DF0 0030BB70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80315DF4 0030BB74  40 81 00 0C */	ble .L_80315E00
/* 80315DF8 0030BB78  38 60 00 01 */	li r3, 0x1
/* 80315DFC 0030BB7C  48 00 00 48 */	b .L_80315E44
.L_80315E00:
/* 80315E00 0030BB80  C0 63 01 00 */	lfs f3, 0x100(r3)
/* 80315E04 0030BB84  C0 43 01 04 */	lfs f2, 0x104(r3)
/* 80315E08 0030BB88  C0 23 01 08 */	lfs f1, 0x108(r3)
/* 80315E0C 0030BB8C  C0 03 01 0C */	lfs f0, 0x10c(r3)
/* 80315E10 0030BB90  38 60 00 00 */	li r3, 0x0
/* 80315E14 0030BB94  D1 45 00 10 */	stfs f10, 0x10(r5)
/* 80315E18 0030BB98  D1 05 00 14 */	stfs f8, 0x14(r5)
/* 80315E1C 0030BB9C  D0 C5 00 18 */	stfs f6, 0x18(r5)
/* 80315E20 0030BBA0  D0 85 00 1C */	stfs f4, 0x1c(r5)
/* 80315E24 0030BBA4  D0 65 00 20 */	stfs f3, 0x20(r5)
/* 80315E28 0030BBA8  D0 45 00 24 */	stfs f2, 0x24(r5)
/* 80315E2C 0030BBAC  D0 25 00 28 */	stfs f1, 0x28(r5)
/* 80315E30 0030BBB0  D0 05 00 2C */	stfs f0, 0x2c(r5)
/* 80315E34 0030BBB4  D1 65 00 00 */	stfs f11, 0x0(r5)
/* 80315E38 0030BBB8  D1 25 00 04 */	stfs f9, 0x4(r5)
/* 80315E3C 0030BBBC  D0 E5 00 08 */	stfs f7, 0x8(r5)
/* 80315E40 0030BBC0  D0 A5 00 0C */	stfs f5, 0xc(r5)
.L_80315E44:
/* 80315E44 0030BBC4  81 41 00 00 */	lwz r10, 0x0(r1)
/* 80315E48 0030BBC8  7D 41 53 78 */	mr r1, r10
/* 80315E4C 0030BBCC  4E 80 00 20 */	blr
.endfn fn_80315D80
