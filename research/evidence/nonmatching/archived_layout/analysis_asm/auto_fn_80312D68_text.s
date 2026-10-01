.include "macros.inc"
.file "auto_fn_80312D68_text"

# 0x80008AF8..0x80008B00 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008AF8 | size: 0x8
.obj "@etb_80008AF8", local
.hidden "@etb_80008AF8"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_80008AF8"

# 0x8000B9E0..0x8000B9EC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B9E0 | size: 0xC
.obj "@eti_8000B9E0", local
.hidden "@eti_8000B9E0"
	.4byte fn_80312D68
	.4byte 0x0000014C
	.4byte "@etb_80008AF8"
.endobj "@eti_8000B9E0"

# 0x80312D68..0x80312EB4 | size: 0x14C
.text
.balign 4

# .text:0x0 | 0x80312D68 | size: 0x14C
.fn fn_80312D68, global
/* 80312D68 00308AE8  54 2B 07 3E */	clrlwi r11, r1, 28
/* 80312D6C 00308AEC  7C 2C 0B 78 */	mr r12, r1
/* 80312D70 00308AF0  21 6B FF B0 */	subfic r11, r11, -0x50
/* 80312D74 00308AF4  7C 21 59 6E */	stwux r1, r1, r11
/* 80312D78 00308AF8  7C 08 02 A6 */	mflr r0
/* 80312D7C 00308AFC  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 80312D80 00308B00  90 0C 00 04 */	stw r0, 0x4(r12)
/* 80312D84 00308B04  C0 44 00 04 */	lfs f2, 0x4(r4)
/* 80312D88 00308B08  FC 60 00 50 */	fneg f3, f0
/* 80312D8C 00308B0C  93 EC FF FC */	stw r31, -0x4(r12)
/* 80312D90 00308B10  7C BF 2B 78 */	mr r31, r5
/* 80312D94 00308B14  C0 24 00 08 */	lfs f1, 0x8(r4)
/* 80312D98 00308B18  FC 40 10 50 */	fneg f2, f2
/* 80312D9C 00308B1C  93 CC FF F8 */	stw r30, -0x8(r12)
/* 80312DA0 00308B20  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80312DA4 00308B24  FC 20 08 50 */	fneg f1, f1
/* 80312DA8 00308B28  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 80312DAC 00308B2C  7C 7E 1B 78 */	mr r30, r3
/* 80312DB0 00308B30  FC 00 00 50 */	fneg f0, f0
/* 80312DB4 00308B34  38 81 00 30 */	addi r4, r1, 0x30
/* 80312DB8 00308B38  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80312DBC 00308B3C  38 A1 00 20 */	addi r5, r1, 0x20
/* 80312DC0 00308B40  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80312DC4 00308B44  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80312DC8 00308B48  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80312DCC 00308B4C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80312DD0 00308B50  7D 89 03 A6 */	mtctr r12
/* 80312DD4 00308B54  4E 80 04 21 */	bctrl
/* 80312DD8 00308B58  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80312DDC 00308B5C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80312DE0 00308B60  C0 62 B2 F0 */	lfs f3, lbl_805A4610@sda21(r0)
/* 80312DE4 00308B64  ED 01 00 2A */	fadds f8, f1, f0
/* 80312DE8 00308B68  C0 FE 00 44 */	lfs f7, 0x44(r30)
/* 80312DEC 00308B6C  C0 42 B2 F4 */	lfs f2, lbl_805A4614@sda21(r0)
/* 80312DF0 00308B70  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80312DF4 00308B74  D1 1E 00 40 */	stfs f8, 0x40(r30)
/* 80312DF8 00308B78  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80312DFC 00308B7C  ED 42 00 24 */	fdivs f10, f2, f0
/* 80312E00 00308B80  C0 C1 00 24 */	lfs f6, 0x24(r1)
/* 80312E04 00308B84  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80312E08 00308B88  C0 9E 00 48 */	lfs f4, 0x48(r30)
/* 80312E0C 00308B8C  C0 BE 00 4C */	lfs f5, 0x4c(r30)
/* 80312E10 00308B90  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 80312E14 00308B94  EC C7 30 2A */	fadds f6, f7, f6
/* 80312E18 00308B98  D1 41 00 18 */	stfs f10, 0x18(r1)
/* 80312E1C 00308B9C  EC E2 08 24 */	fdivs f7, f2, f1
/* 80312E20 00308BA0  D0 DE 00 44 */	stfs f6, 0x44(r30)
/* 80312E24 00308BA4  ED 22 00 24 */	fdivs f9, f2, f0
/* 80312E28 00308BA8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80312E2C 00308BAC  D0 E1 00 14 */	stfs f7, 0x14(r1)
/* 80312E30 00308BB0  EC 24 00 2A */	fadds f1, f4, f0
/* 80312E34 00308BB4  D1 21 00 10 */	stfs f9, 0x10(r1)
/* 80312E38 00308BB8  EC 06 38 2A */	fadds f0, f6, f7
/* 80312E3C 00308BBC  EC 48 48 2A */	fadds f2, f8, f9
/* 80312E40 00308BC0  D0 3E 00 48 */	stfs f1, 0x48(r30)
/* 80312E44 00308BC4  EC 21 50 2A */	fadds f1, f1, f10
/* 80312E48 00308BC8  C0 81 00 2C */	lfs f4, 0x2c(r1)
/* 80312E4C 00308BCC  EC 85 20 2A */	fadds f4, f5, f4
/* 80312E50 00308BD0  D0 1E 00 54 */	stfs f0, 0x54(r30)
/* 80312E54 00308BD4  D0 5E 00 50 */	stfs f2, 0x50(r30)
/* 80312E58 00308BD8  EC 04 18 2A */	fadds f0, f4, f3
/* 80312E5C 00308BDC  D0 9E 00 4C */	stfs f4, 0x4c(r30)
/* 80312E60 00308BE0  D0 3E 00 58 */	stfs f1, 0x58(r30)
/* 80312E64 00308BE4  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 80312E68 00308BE8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80312E6C 00308BEC  FC 00 00 50 */	fneg f0, f0
/* 80312E70 00308BF0  D0 1F 00 00 */	stfs f0, 0x0(r31)
/* 80312E74 00308BF4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80312E78 00308BF8  FC 00 00 50 */	fneg f0, f0
/* 80312E7C 00308BFC  D0 1F 00 04 */	stfs f0, 0x4(r31)
/* 80312E80 00308C00  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80312E84 00308C04  FC 00 00 50 */	fneg f0, f0
/* 80312E88 00308C08  D0 1F 00 08 */	stfs f0, 0x8(r31)
/* 80312E8C 00308C0C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80312E90 00308C10  FC 00 00 50 */	fneg f0, f0
/* 80312E94 00308C14  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80312E98 00308C18  81 41 00 00 */	lwz r10, 0x0(r1)
/* 80312E9C 00308C1C  83 EA FF FC */	lwz r31, -0x4(r10)
/* 80312EA0 00308C20  83 CA FF F8 */	lwz r30, -0x8(r10)
/* 80312EA4 00308C24  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 80312EA8 00308C28  7C 08 03 A6 */	mtlr r0
/* 80312EAC 00308C2C  7D 41 53 78 */	mr r1, r10
/* 80312EB0 00308C30  4E 80 00 20 */	blr
.endfn fn_80312D68
