.include "macros.inc"
.file "auto_fn_802D2714_text"

# 0x800084C0..0x800084C8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800084C0 | size: 0x8
.obj "@etb_800084C0", local
.hidden "@etb_800084C0"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved FPR range: fp29-fp31
 */
	.4byte 0x00CA0000
	.4byte 0x00000000
.endobj "@etb_800084C0"

# 0x8000B290..0x8000B29C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B290 | size: 0xC
.obj "@eti_8000B290", local
.hidden "@eti_8000B290"
	.4byte fn_802D2714
	.4byte 0x00000084
	.4byte "@etb_800084C0"
.endobj "@eti_8000B290"

# 0x802D2714..0x802D2798 | size: 0x84
.text
.balign 4

# .text:0x0 | 0x802D2714 | size: 0x84
.fn fn_802D2714, global
/* 802D2714 002C8494  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802D2718 002C8498  7C 08 02 A6 */	mflr r0
/* 802D271C 002C849C  90 01 00 44 */	stw r0, 0x44(r1)
/* 802D2720 002C84A0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802D2724 002C84A4  F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 802D2728 002C84A8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 802D272C 002C84AC  F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 802D2730 002C84B0  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 802D2734 002C84B4  F3 A1 00 18 */	psq_st f29, 0x18(r1), 0, qr0
/* 802D2738 002C84B8  C3 A2 AD B8 */	lfs f29, lbl_805A40D8@sda21(r0)
/* 802D273C 002C84BC  C3 C2 AD BC */	lfs f30, lbl_805A40DC@sda21(r0)
/* 802D2740 002C84C0  C3 E2 AD C0 */	lfs f31, lbl_805A40E0@sda21(r0)
/* 802D2744 002C84C4  48 00 00 20 */	b .L_802D2764
.L_802D2748:
/* 802D2748 002C84C8  FC 20 E8 90 */	fmr f1, f29
/* 802D274C 002C84CC  4B FA F9 FD */	bl fn_80282148
/* 802D2750 002C84D0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D2754 002C84D4  41 82 00 0C */	beq .L_802D2760
/* 802D2758 002C84D8  FC 20 E8 90 */	fmr f1, f29
/* 802D275C 002C84DC  48 00 00 14 */	b .L_802D2770
.L_802D2760:
/* 802D2760 002C84E0  EF BD F0 2A */	fadds f29, f29, f30
.L_802D2764:
/* 802D2764 002C84E4  FC 1D F8 40 */	fcmpo cr0, f29, f31
/* 802D2768 002C84E8  41 80 FF E0 */	blt .L_802D2748
/* 802D276C 002C84EC  C0 22 AD C4 */	lfs f1, lbl_805A40E4@sda21(r0)
.L_802D2770:
/* 802D2770 002C84F0  E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 802D2774 002C84F4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802D2778 002C84F8  E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 802D277C 002C84FC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 802D2780 002C8500  E3 A1 00 18 */	psq_l f29, 0x18(r1), 0, qr0
/* 802D2784 002C8504  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802D2788 002C8508  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 802D278C 002C850C  7C 08 03 A6 */	mtlr r0
/* 802D2790 002C8510  38 21 00 40 */	addi r1, r1, 0x40
/* 802D2794 002C8514  4E 80 00 20 */	blr
.endfn fn_802D2714
