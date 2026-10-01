.include "macros.inc"
.file "auto_fn_802D4AB4_text"

# 0x8000854C..0x80008554 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000854C | size: 0x8
.obj "@etb_8000854C", local
.hidden "@etb_8000854C"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_8000854C"

# 0x8000B344..0x8000B350 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B344 | size: 0xC
.obj "@eti_8000B344", local
.hidden "@eti_8000B344"
	.4byte fn_802D4AB4
	.4byte 0x000001C8
	.4byte "@etb_8000854C"
.endobj "@eti_8000B344"

# 0x802D4AB4..0x802D4C7C | size: 0x1C8
.text
.balign 4

# .text:0x0 | 0x802D4AB4 | size: 0x1C8
.fn fn_802D4AB4, global
/* 802D4AB4 002CA834  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802D4AB8 002CA838  7C 2C 0B 78 */	mr r12, r1
/* 802D4ABC 002CA83C  21 6B FF 50 */	subfic r11, r11, -0xb0
/* 802D4AC0 002CA840  7C 21 59 6E */	stwux r1, r1, r11
/* 802D4AC4 002CA844  7C 08 02 A6 */	mflr r0
/* 802D4AC8 002CA848  C0 22 AE 08 */	lfs f1, lbl_805A4128@sda21(r0)
/* 802D4ACC 002CA84C  90 0C 00 04 */	stw r0, 0x4(r12)
/* 802D4AD0 002CA850  38 01 00 60 */	addi r0, r1, 0x60
/* 802D4AD4 002CA854  C0 02 AE 0C */	lfs f0, lbl_805A412C@sda21(r0)
/* 802D4AD8 002CA858  38 A1 00 40 */	addi r5, r1, 0x40
/* 802D4ADC 002CA85C  93 EC FF FC */	stw r31, -0x4(r12)
/* 802D4AE0 002CA860  7C 9F 23 78 */	mr r31, r4
/* 802D4AE4 002CA864  7C 04 03 78 */	mr r4, r0
/* 802D4AE8 002CA868  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 802D4AEC 002CA86C  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 802D4AF0 002CA870  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 802D4AF4 002CA874  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 802D4AF8 002CA878  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 802D4AFC 002CA87C  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 802D4B00 002CA880  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 802D4B04 002CA884  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 802D4B08 002CA888  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 802D4B0C 002CA88C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 802D4B10 002CA890  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 802D4B14 002CA894  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 802D4B18 002CA898  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 802D4B1C 002CA89C  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 802D4B20 002CA8A0  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 802D4B24 002CA8A4  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 802D4B28 002CA8A8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D4B2C 002CA8AC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 802D4B30 002CA8B0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802D4B34 002CA8B4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 802D4B38 002CA8B8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 802D4B3C 002CA8BC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 802D4B40 002CA8C0  7D 89 03 A6 */	mtctr r12
/* 802D4B44 002CA8C4  4E 80 04 21 */	bctrl
/* 802D4B48 002CA8C8  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 802D4B4C 002CA8CC  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 802D4B50 002CA8D0  80 1F 00 04 */	lwz r0, 0x4(r31)
/* 802D4B54 002CA8D4  EC 22 00 28 */	fsubs f1, f2, f0
/* 802D4B58 002CA8D8  C1 42 AE 10 */	lfs f10, lbl_805A4130@sda21(r0)
/* 802D4B5C 002CA8DC  EC 02 00 2A */	fadds f0, f2, f0
/* 802D4B60 002CA8E0  C0 61 00 50 */	lfs f3, 0x50(r1)
/* 802D4B64 002CA8E4  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 802D4B68 002CA8E8  54 00 00 00 */	clrrwi r0, r0, 31
/* 802D4B6C 002CA8EC  EC A3 10 28 */	fsubs f5, f3, f2
/* 802D4B70 002CA8F0  C0 E1 00 58 */	lfs f7, 0x58(r1)
/* 802D4B74 002CA8F4  EC 21 02 B2 */	fmuls f1, f1, f10
/* 802D4B78 002CA8F8  C0 81 00 48 */	lfs f4, 0x48(r1)
/* 802D4B7C 002CA8FC  EC 43 10 2A */	fadds f2, f3, f2
/* 802D4B80 002CA900  C0 C1 00 5C */	lfs f6, 0x5c(r1)
/* 802D4B84 002CA904  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 802D4B88 002CA908  EC 25 02 B2 */	fmuls f1, f5, f10
/* 802D4B8C 002CA90C  ED 00 02 B2 */	fmuls f8, f0, f10
/* 802D4B90 002CA910  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 802D4B94 002CA914  EC 67 20 28 */	fsubs f3, f7, f4
/* 802D4B98 002CA918  80 61 00 34 */	lwz r3, 0x34(r1)
/* 802D4B9C 002CA91C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 802D4BA0 002CA920  7C 60 02 78 */	xor r0, r3, r0
/* 802D4BA4 002CA924  EC 03 02 B2 */	fmuls f0, f3, f10
/* 802D4BA8 002CA928  C0 A1 00 4C */	lfs f5, 0x4c(r1)
/* 802D4BAC 002CA92C  EC 27 20 2A */	fadds f1, f7, f4
/* 802D4BB0 002CA930  90 01 00 34 */	stw r0, 0x34(r1)
/* 802D4BB4 002CA934  EC 66 28 28 */	fsubs f3, f6, f5
/* 802D4BB8 002CA938  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 802D4BBC 002CA93C  EC E1 02 B2 */	fmuls f7, f1, f10
/* 802D4BC0 002CA940  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 802D4BC4 002CA944  EC 63 02 B2 */	fmuls f3, f3, f10
/* 802D4BC8 002CA948  54 85 00 00 */	clrrwi r5, r4, 31
/* 802D4BCC 002CA94C  80 C1 00 30 */	lwz r6, 0x30(r1)
/* 802D4BD0 002CA950  EC 26 28 2A */	fadds f1, f6, f5
/* 802D4BD4 002CA954  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 802D4BD8 002CA958  7C C5 2A 78 */	xor r5, r6, r5
/* 802D4BDC 002CA95C  ED 22 02 B2 */	fmuls f9, f2, f10
/* 802D4BE0 002CA960  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 802D4BE4 002CA964  EC 80 40 2A */	fadds f4, f0, f8
/* 802D4BE8 002CA968  C0 1F 00 04 */	lfs f0, 0x4(r31)
/* 802D4BEC 002CA96C  EC C1 02 B2 */	fmuls f6, f1, f10
/* 802D4BF0 002CA970  90 A1 00 30 */	stw r5, 0x30(r1)
/* 802D4BF4 002CA974  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 802D4BF8 002CA978  54 63 00 00 */	clrrwi r3, r3, 31
/* 802D4BFC 002CA97C  80 81 00 38 */	lwz r4, 0x38(r1)
/* 802D4C00 002CA980  54 00 00 00 */	clrrwi r0, r0, 31
/* 802D4C04 002CA984  EC A1 48 2A */	fadds f5, f1, f9
/* 802D4C08 002CA988  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 802D4C0C 002CA98C  7C 83 1A 78 */	xor r3, r4, r3
/* 802D4C10 002CA990  EC 44 00 32 */	fmuls f2, f4, f0
/* 802D4C14 002CA994  90 61 00 38 */	stw r3, 0x38(r1)
/* 802D4C18 002CA998  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 802D4C1C 002CA99C  C0 3F 00 00 */	lfs f1, 0x0(r31)
/* 802D4C20 002CA9A0  7C 60 02 78 */	xor r0, r3, r0
/* 802D4C24 002CA9A4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 802D4C28 002CA9A8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802D4C2C 002CA9AC  EC 25 10 7A */	fmadds f1, f5, f1, f2
/* 802D4C30 002CA9B0  EC 60 38 2A */	fadds f3, f0, f7
/* 802D4C34 002CA9B4  C0 1F 00 08 */	lfs f0, 0x8(r31)
/* 802D4C38 002CA9B8  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 802D4C3C 002CA9BC  D1 21 00 20 */	stfs f9, 0x20(r1)
/* 802D4C40 002CA9C0  EC 42 30 2A */	fadds f2, f2, f6
/* 802D4C44 002CA9C4  EC 23 08 3A */	fmadds f1, f3, f0, f1
/* 802D4C48 002CA9C8  D1 01 00 24 */	stfs f8, 0x24(r1)
/* 802D4C4C 002CA9CC  D0 E1 00 28 */	stfs f7, 0x28(r1)
/* 802D4C50 002CA9D0  D0 C1 00 2C */	stfs f6, 0x2c(r1)
/* 802D4C54 002CA9D4  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 802D4C58 002CA9D8  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 802D4C5C 002CA9DC  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 802D4C60 002CA9E0  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 802D4C64 002CA9E4  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802D4C68 002CA9E8  83 EA FF FC */	lwz r31, -0x4(r10)
/* 802D4C6C 002CA9EC  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 802D4C70 002CA9F0  7C 08 03 A6 */	mtlr r0
/* 802D4C74 002CA9F4  7D 41 53 78 */	mr r1, r10
/* 802D4C78 002CA9F8  4E 80 00 20 */	blr
.endfn fn_802D4AB4
