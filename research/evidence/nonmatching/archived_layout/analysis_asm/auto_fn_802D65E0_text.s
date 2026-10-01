.include "macros.inc"
.file "auto_fn_802D65E0_text"

# 0x8000862C..0x80008634 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000862C | size: 0x8
.obj "@etb_8000862C", local
.hidden "@etb_8000862C"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_8000862C"

# 0x8000B494..0x8000B4A0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B494 | size: 0xC
.obj "@eti_8000B494", local
.hidden "@eti_8000B494"
	.4byte fn_802D65E0
	.4byte 0x000000D8
	.4byte "@etb_8000862C"
.endobj "@eti_8000B494"

# 0x802D65E0..0x802D66B8 | size: 0xD8
.text
.balign 4

# .text:0x0 | 0x802D65E0 | size: 0xD8
.fn fn_802D65E0, global
/* 802D65E0 002CC360  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802D65E4 002CC364  7C 2C 0B 78 */	mr r12, r1
/* 802D65E8 002CC368  21 6B FF E0 */	subfic r11, r11, -0x20
/* 802D65EC 002CC36C  C0 A4 00 04 */	lfs f5, 0x4(r4)
/* 802D65F0 002CC370  7C 21 59 6E */	stwux r1, r1, r11
/* 802D65F4 002CC374  C0 E4 00 00 */	lfs f7, 0x0(r4)
/* 802D65F8 002CC378  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 802D65FC 002CC37C  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 802D6600 002CC380  EC 65 00 72 */	fmuls f3, f5, f1
/* 802D6604 002CC384  C0 83 00 14 */	lfs f4, 0x14(r3)
/* 802D6608 002CC388  EC 25 00 32 */	fmuls f1, f5, f0
/* 802D660C 002CC38C  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 802D6610 002CC390  EC A5 01 32 */	fmuls f5, f5, f4
/* 802D6614 002CC394  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 802D6618 002CC398  C0 83 00 10 */	lfs f4, 0x10(r3)
/* 802D661C 002CC39C  EC 67 18 BA */	fmadds f3, f7, f2, f3
/* 802D6620 002CC3A0  EC 27 08 3A */	fmadds f1, f7, f0, f1
/* 802D6624 002CC3A4  C0 C4 00 08 */	lfs f6, 0x8(r4)
/* 802D6628 002CC3A8  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 802D662C 002CC3AC  EC A7 29 3A */	fmadds f5, f7, f4, f5
/* 802D6630 002CC3B0  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 802D6634 002CC3B4  EC 46 18 BA */	fmadds f2, f6, f2, f3
/* 802D6638 002CC3B8  EC 66 08 3A */	fmadds f3, f6, f0, f1
/* 802D663C 002CC3BC  C0 83 00 18 */	lfs f4, 0x18(r3)
/* 802D6640 002CC3C0  C0 02 AE 58 */	lfs f0, lbl_805A4178@sda21(r0)
/* 802D6644 002CC3C4  EC 26 29 3A */	fmadds f1, f6, f4, f5
/* 802D6648 002CC3C8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 802D664C 002CC3CC  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 802D6650 002CC3D0  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 802D6654 002CC3D4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 802D6658 002CC3D8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802D665C 002CC3DC  40 81 00 0C */	ble .L_802D6668
/* 802D6660 002CC3E0  38 80 00 20 */	li r4, 0x20
/* 802D6664 002CC3E4  48 00 00 0C */	b .L_802D6670
.L_802D6668:
/* 802D6668 002CC3E8  38 80 00 10 */	li r4, 0x10
/* 802D666C 002CC3EC  FC 60 10 90 */	fmr f3, f2
.L_802D6670:
/* 802D6670 002CC3F0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 802D6674 002CC3F4  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 802D6678 002CC3F8  40 81 00 08 */	ble .L_802D6680
/* 802D667C 002CC3FC  38 80 00 00 */	li r4, 0x0
.L_802D6680:
/* 802D6680 002CC400  38 03 00 10 */	addi r0, r3, 0x10
/* 802D6684 002CC404  7C 04 04 2E */	lfsx f0, r4, r0
/* 802D6688 002CC408  7C 60 22 14 */	add r3, r0, r4
/* 802D668C 002CC40C  D0 05 00 00 */	stfs f0, 0x0(r5)
/* 802D6690 002CC410  C0 03 00 04 */	lfs f0, 0x4(r3)
/* 802D6694 002CC414  D0 05 00 04 */	stfs f0, 0x4(r5)
/* 802D6698 002CC418  C0 03 00 08 */	lfs f0, 0x8(r3)
/* 802D669C 002CC41C  D0 05 00 08 */	stfs f0, 0x8(r5)
/* 802D66A0 002CC420  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 802D66A4 002CC424  D0 05 00 0C */	stfs f0, 0xc(r5)
/* 802D66A8 002CC428  90 85 00 0C */	stw r4, 0xc(r5)
/* 802D66AC 002CC42C  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802D66B0 002CC430  7D 41 53 78 */	mr r1, r10
/* 802D66B4 002CC434  4E 80 00 20 */	blr
.endfn fn_802D65E0
