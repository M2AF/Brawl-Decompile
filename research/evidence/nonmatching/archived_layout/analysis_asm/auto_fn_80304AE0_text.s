.include "macros.inc"
.file "auto_fn_80304AE0_text"

# 0x800087FC..0x80008804 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800087FC | size: 0x8
.obj "@etb_800087FC", local
.hidden "@etb_800087FC"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_800087FC"

# 0x8000B734..0x8000B740 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B734 | size: 0xC
.obj "@eti_8000B734", local
.hidden "@eti_8000B734"
	.4byte fn_80304AE0
	.4byte 0x000000E4
	.4byte "@etb_800087FC"
.endobj "@eti_8000B734"

# 0x80304AE0..0x80304BC4 | size: 0xE4
.text
.balign 4

# .text:0x0 | 0x80304AE0 | size: 0xE4
.fn fn_80304AE0, global
/* 80304AE0 002FA860  54 2B 07 3E */	clrlwi r11, r1, 28
/* 80304AE4 002FA864  54 A0 20 36 */	slwi r0, r5, 4
/* 80304AE8 002FA868  21 6B FF D0 */	subfic r11, r11, -0x30
/* 80304AEC 002FA86C  7C 2C 0B 78 */	mr r12, r1
/* 80304AF0 002FA870  7D 24 02 14 */	add r9, r4, r0
/* 80304AF4 002FA874  7C 21 59 6E */	stwux r1, r1, r11
/* 80304AF8 002FA878  54 C8 10 3A */	slwi r8, r6, 2
/* 80304AFC 002FA87C  54 C0 20 36 */	slwi r0, r6, 4
/* 80304B00 002FA880  7C C4 02 14 */	add r6, r4, r0
/* 80304B04 002FA884  C0 29 00 04 */	lfs f1, 0x4(r9)
/* 80304B08 002FA888  7C 83 42 14 */	add r4, r3, r8
/* 80304B0C 002FA88C  54 A0 10 3A */	slwi r0, r5, 2
/* 80304B10 002FA890  C0 84 00 C0 */	lfs f4, 0xc0(r4)
/* 80304B14 002FA894  7C 63 02 14 */	add r3, r3, r0
/* 80304B18 002FA898  C0 09 00 08 */	lfs f0, 0x8(r9)
/* 80304B1C 002FA89C  ED 44 00 72 */	fmuls f10, f4, f1
/* 80304B20 002FA8A0  C0 49 00 00 */	lfs f2, 0x0(r9)
/* 80304B24 002FA8A4  ED 24 00 32 */	fmuls f9, f4, f0
/* 80304B28 002FA8A8  C1 63 00 C0 */	lfs f11, 0xc0(r3)
/* 80304B2C 002FA8AC  EC 64 00 B2 */	fmuls f3, f4, f2
/* 80304B30 002FA8B0  C0 26 00 00 */	lfs f1, 0x0(r6)
/* 80304B34 002FA8B4  EC EB 00 72 */	fmuls f7, f11, f1
/* 80304B38 002FA8B8  C0 06 00 04 */	lfs f0, 0x4(r6)
/* 80304B3C 002FA8BC  C0 49 00 0C */	lfs f2, 0xc(r9)
/* 80304B40 002FA8C0  EC CB 00 32 */	fmuls f6, f11, f0
/* 80304B44 002FA8C4  C0 26 00 08 */	lfs f1, 0x8(r6)
/* 80304B48 002FA8C8  ED 04 00 B2 */	fmuls f8, f4, f2
/* 80304B4C 002FA8CC  EC AB 00 72 */	fmuls f5, f11, f1
/* 80304B50 002FA8D0  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 80304B54 002FA8D4  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 80304B58 002FA8D8  EC 8B 00 32 */	fmuls f4, f11, f0
/* 80304B5C 002FA8DC  EC 63 38 28 */	fsubs f3, f3, f7
/* 80304B60 002FA8E0  D1 41 00 24 */	stfs f10, 0x24(r1)
/* 80304B64 002FA8E4  EC 4A 30 28 */	fsubs f2, f10, f6
/* 80304B68 002FA8E8  EC 29 28 28 */	fsubs f1, f9, f5
/* 80304B6C 002FA8EC  D1 21 00 28 */	stfs f9, 0x28(r1)
/* 80304B70 002FA8F0  EC 08 20 28 */	fsubs f0, f8, f4
/* 80304B74 002FA8F4  FC 60 1A 10 */	fabs f3, f3
/* 80304B78 002FA8F8  D1 01 00 2C */	stfs f8, 0x2c(r1)
/* 80304B7C 002FA8FC  FC 40 12 10 */	fabs f2, f2
/* 80304B80 002FA900  FC 20 0A 10 */	fabs f1, f1
/* 80304B84 002FA904  D0 E1 00 10 */	stfs f7, 0x10(r1)
/* 80304B88 002FA908  FC 00 02 10 */	fabs f0, f0
/* 80304B8C 002FA90C  FC 60 18 18 */	frsp f3, f3
/* 80304B90 002FA910  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 80304B94 002FA914  FC 40 10 18 */	frsp f2, f2
/* 80304B98 002FA918  FC 20 08 18 */	frsp f1, f1
/* 80304B9C 002FA91C  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 80304BA0 002FA920  FC 00 00 18 */	frsp f0, f0
/* 80304BA4 002FA924  D0 67 00 00 */	stfs f3, 0x0(r7)
/* 80304BA8 002FA928  D0 47 00 04 */	stfs f2, 0x4(r7)
/* 80304BAC 002FA92C  D0 27 00 08 */	stfs f1, 0x8(r7)
/* 80304BB0 002FA930  D0 07 00 0C */	stfs f0, 0xc(r7)
/* 80304BB4 002FA934  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 80304BB8 002FA938  81 41 00 00 */	lwz r10, 0x0(r1)
/* 80304BBC 002FA93C  7D 41 53 78 */	mr r1, r10
/* 80304BC0 002FA940  4E 80 00 20 */	blr
.endfn fn_80304AE0
