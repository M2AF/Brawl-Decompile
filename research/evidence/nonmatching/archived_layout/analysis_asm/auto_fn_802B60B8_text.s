.include "macros.inc"
.file "auto_fn_802B60B8_text"

# 0x80007524..0x8000752C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007524 | size: 0x8
.obj "@etb_80007524", local
.hidden "@etb_80007524"
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
.endobj "@etb_80007524"

# 0x8000A528..0x8000A534 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A528 | size: 0xC
.obj "@eti_8000A528", local
.hidden "@eti_8000A528"
	.4byte fn_802B60B8
	.4byte 0x00000158
	.4byte "@etb_80007524"
.endobj "@eti_8000A528"

# 0x802B60B8..0x802B6210 | size: 0x158
.text
.balign 4

# .text:0x0 | 0x802B60B8 | size: 0x158
.fn fn_802B60B8, global
/* 802B60B8 002ABE38  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802B60BC 002ABE3C  7C 2C 0B 78 */	mr r12, r1
/* 802B60C0 002ABE40  21 6B FF B0 */	subfic r11, r11, -0x50
/* 802B60C4 002ABE44  7C 21 59 6E */	stwux r1, r1, r11
/* 802B60C8 002ABE48  7C 08 02 A6 */	mflr r0
/* 802B60CC 002ABE4C  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 802B60D0 002ABE50  90 0C 00 04 */	stw r0, 0x4(r12)
/* 802B60D4 002ABE54  80 C4 00 08 */	lwz r6, 0x8(r4)
/* 802B60D8 002ABE58  93 EC FF FC */	stw r31, -0x4(r12)
/* 802B60DC 002ABE5C  7C 7F 1B 78 */	mr r31, r3
/* 802B60E0 002ABE60  C1 85 00 04 */	lfs f12, 0x4(r5)
/* 802B60E4 002ABE64  80 03 00 40 */	lwz r0, 0x40(r3)
/* 802B60E8 002ABE68  C0 A5 00 00 */	lfs f5, 0x0(r5)
/* 802B60EC 002ABE6C  90 81 00 34 */	stw r4, 0x34(r1)
/* 802B60F0 002ABE70  38 81 00 10 */	addi r4, r1, 0x10
/* 802B60F4 002ABE74  C1 A5 00 08 */	lfs f13, 0x8(r5)
/* 802B60F8 002ABE78  90 01 00 30 */	stw r0, 0x30(r1)
/* 802B60FC 002ABE7C  C0 82 AC 30 */	lfs f4, lbl_805A3F50@sda21(r0)
/* 802B6100 002ABE80  C0 43 00 30 */	lfs f2, 0x30(r3)
/* 802B6104 002ABE84  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 802B6108 002ABE88  ED 60 08 BA */	fmadds f11, f0, f2, f1
/* 802B610C 002ABE8C  D1 61 00 10 */	stfs f11, 0x10(r1)
/* 802B6110 002ABE90  C0 43 00 34 */	lfs f2, 0x34(r3)
/* 802B6114 002ABE94  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 802B6118 002ABE98  ED 40 08 BA */	fmadds f10, f0, f2, f1
/* 802B611C 002ABE9C  D1 41 00 14 */	stfs f10, 0x14(r1)
/* 802B6120 002ABEA0  C0 43 00 38 */	lfs f2, 0x38(r3)
/* 802B6124 002ABEA4  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 802B6128 002ABEA8  ED 20 08 BA */	fmadds f9, f0, f2, f1
/* 802B612C 002ABEAC  D1 21 00 18 */	stfs f9, 0x18(r1)
/* 802B6130 002ABEB0  C0 43 00 3C */	lfs f2, 0x3c(r3)
/* 802B6134 002ABEB4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 802B6138 002ABEB8  ED 00 08 BA */	fmadds f8, f0, f2, f1
/* 802B613C 002ABEBC  D1 01 00 1C */	stfs f8, 0x1c(r1)
/* 802B6140 002ABEC0  C0 26 00 10 */	lfs f1, 0x10(r6)
/* 802B6144 002ABEC4  C0 46 00 00 */	lfs f2, 0x0(r6)
/* 802B6148 002ABEC8  EC 6C 00 72 */	fmuls f3, f12, f1
/* 802B614C 002ABECC  C0 26 00 20 */	lfs f1, 0x20(r6)
/* 802B6150 002ABED0  EC 45 18 BA */	fmadds f2, f5, f2, f3
/* 802B6154 002ABED4  EC ED 10 7A */	fmadds f7, f13, f1, f2
/* 802B6158 002ABED8  D0 E1 00 20 */	stfs f7, 0x20(r1)
/* 802B615C 002ABEDC  C0 26 00 14 */	lfs f1, 0x14(r6)
/* 802B6160 002ABEE0  C0 46 00 04 */	lfs f2, 0x4(r6)
/* 802B6164 002ABEE4  EC 6C 00 72 */	fmuls f3, f12, f1
/* 802B6168 002ABEE8  C0 26 00 24 */	lfs f1, 0x24(r6)
/* 802B616C 002ABEEC  EC 45 18 BA */	fmadds f2, f5, f2, f3
/* 802B6170 002ABEF0  EC CD 10 7A */	fmadds f6, f13, f1, f2
/* 802B6174 002ABEF4  D0 C1 00 24 */	stfs f6, 0x24(r1)
/* 802B6178 002ABEF8  C0 26 00 18 */	lfs f1, 0x18(r6)
/* 802B617C 002ABEFC  C0 46 00 08 */	lfs f2, 0x8(r6)
/* 802B6180 002ABF00  EC 6C 00 72 */	fmuls f3, f12, f1
/* 802B6184 002ABF04  C0 26 00 28 */	lfs f1, 0x28(r6)
/* 802B6188 002ABF08  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 802B618C 002ABF0C  EC 45 18 BA */	fmadds f2, f5, f2, f3
/* 802B6190 002ABF10  EC AD 10 7A */	fmadds f5, f13, f1, f2
/* 802B6194 002ABF14  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 802B6198 002ABF18  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 802B619C 002ABF1C  FD 80 08 50 */	fneg f12, f1
/* 802B61A0 002ABF20  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 802B61A4 002ABF24  EC 6C 59 FA */	fmadds f3, f12, f7, f11
/* 802B61A8 002ABF28  EC 4C 51 BA */	fmadds f2, f12, f6, f10
/* 802B61AC 002ABF2C  EC 2C 49 7A */	fmadds f1, f12, f5, f9
/* 802B61B0 002ABF30  EC 0C 41 3A */	fmadds f0, f12, f4, f8
/* 802B61B4 002ABF34  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 802B61B8 002ABF38  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 802B61BC 002ABF3C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 802B61C0 002ABF40  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802B61C4 002ABF44  80 63 00 44 */	lwz r3, 0x44(r3)
/* 802B61C8 002ABF48  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B61CC 002ABF4C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802B61D0 002ABF50  7D 89 03 A6 */	mtctr r12
/* 802B61D4 002ABF54  4E 80 04 21 */	bctrl
/* 802B61D8 002ABF58  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802B61DC 002ABF5C  C0 1F 00 04 */	lfs f0, 0x4(r31)
/* 802B61E0 002ABF60  C0 23 00 04 */	lfs f1, 0x4(r3)
/* 802B61E4 002ABF64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802B61E8 002ABF68  40 80 00 08 */	bge .L_802B61F0
/* 802B61EC 002ABF6C  48 00 00 08 */	b .L_802B61F4
.L_802B61F0:
/* 802B61F0 002ABF70  FC 20 00 90 */	fmr f1, f0
.L_802B61F4:
/* 802B61F4 002ABF74  D0 3F 00 04 */	stfs f1, 0x4(r31)
/* 802B61F8 002ABF78  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802B61FC 002ABF7C  83 EA FF FC */	lwz r31, -0x4(r10)
/* 802B6200 002ABF80  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 802B6204 002ABF84  7C 08 03 A6 */	mtlr r0
/* 802B6208 002ABF88  7D 41 53 78 */	mr r1, r10
/* 802B620C 002ABF8C  4E 80 00 20 */	blr
.endfn fn_802B60B8
