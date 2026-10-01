.include "macros.inc"
.file "auto_fn_80295098_text"

# 0x800066A0..0x800066A8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800066A0 | size: 0x8
.obj "@etb_800066A0", local
.hidden "@etb_800066A0"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_800066A0"

# 0x80009A00..0x80009A0C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009A00 | size: 0xC
.obj "@eti_80009A00", local
.hidden "@eti_80009A00"
	.4byte fn_80295098
	.4byte 0x0000006C
	.4byte "@etb_800066A0"
.endobj "@eti_80009A00"

# 0x80295098..0x80295104 | size: 0x6C
.text
.balign 4

# .text:0x0 | 0x80295098 | size: 0x6C
.fn fn_80295098, global
/* 80295098 0028AE18  C0 03 00 04 */	lfs f0, 0x4(r3)
/* 8029509C 0028AE1C  C0 43 00 00 */	lfs f2, 0x0(r3)
/* 802950A0 0028AE20  EC 60 00 32 */	fmuls f3, f0, f0
/* 802950A4 0028AE24  C0 23 00 08 */	lfs f1, 0x8(r3)
/* 802950A8 0028AE28  C0 02 AA F0 */	lfs f0, lbl_805A3E10@sda21(r0)
/* 802950AC 0028AE2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802950B0 0028AE30  EC 42 18 BA */	fmadds f2, f2, f2, f3
/* 802950B4 0028AE34  EC 21 10 7A */	fmadds f1, f1, f1, f2
/* 802950B8 0028AE38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802950BC 0028AE3C  4C 40 13 82 */	cror eq, lt, eq
/* 802950C0 0028AE40  40 82 00 14 */	bne .L_802950D4
/* 802950C4 0028AE44  3C 00 7F 80 */	lis r0, 0x7f80
/* 802950C8 0028AE48  90 01 00 08 */	stw r0, 0x8(r1)
/* 802950CC 0028AE4C  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 802950D0 0028AE50  48 00 00 24 */	b .L_802950F4
.L_802950D4:
/* 802950D4 0028AE54  FC 60 08 34 */	frsqrte f3, f1
/* 802950D8 0028AE58  C0 42 AB 20 */	lfs f2, lbl_805A3E40@sda21(r0)
/* 802950DC 0028AE5C  C0 02 AB 24 */	lfs f0, lbl_805A3E44@sda21(r0)
/* 802950E0 0028AE60  FC 60 18 18 */	frsp f3, f3
/* 802950E4 0028AE64  EC 21 00 F2 */	fmuls f1, f1, f3
/* 802950E8 0028AE68  EC 42 00 F2 */	fmuls f2, f2, f3
/* 802950EC 0028AE6C  EC 03 00 7C */	fnmsubs f0, f3, f1, f0
/* 802950F0 0028AE70  EC 22 00 32 */	fmuls f1, f2, f0
.L_802950F4:
/* 802950F4 0028AE74  C0 02 AA F4 */	lfs f0, lbl_805A3E14@sda21(r0)
/* 802950F8 0028AE78  EC 20 08 24 */	fdivs f1, f0, f1
/* 802950FC 0028AE7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80295100 0028AE80  4E 80 00 20 */	blr
.endfn fn_80295098
