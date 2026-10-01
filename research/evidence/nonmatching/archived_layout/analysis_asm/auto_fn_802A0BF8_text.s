.include "macros.inc"
.file "auto_fn_802A0BF8_text"

# 0x800067D8..0x800067E0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800067D8 | size: 0x8
.obj "@etb_800067D8", local
.hidden "@etb_800067D8"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_800067D8"

# 0x80009BD4..0x80009BE0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009BD4 | size: 0xC
.obj "@eti_80009BD4", local
.hidden "@eti_80009BD4"
	.4byte fn_802A0BF8
	.4byte 0x00000054
	.4byte "@etb_800067D8"
.endobj "@eti_80009BD4"

# 0x802A0BF8..0x802A0C4C | size: 0x54
.text
.balign 4

# .text:0x0 | 0x802A0BF8 | size: 0x54
.fn fn_802A0BF8, global
/* 802A0BF8 00296978  C0 02 AB 94 */	lfs f0, lbl_805A3EB4@sda21(r0)
/* 802A0BFC 0029697C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A0C00 00296980  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802A0C04 00296984  4C 40 13 82 */	cror eq, lt, eq
/* 802A0C08 00296988  40 82 00 14 */	bne .L_802A0C1C
/* 802A0C0C 0029698C  3C 00 7F 80 */	lis r0, 0x7f80
/* 802A0C10 00296990  90 01 00 08 */	stw r0, 0x8(r1)
/* 802A0C14 00296994  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 802A0C18 00296998  48 00 00 24 */	b .L_802A0C3C
.L_802A0C1C:
/* 802A0C1C 0029699C  FC 60 08 34 */	frsqrte f3, f1
/* 802A0C20 002969A0  C0 42 AB 98 */	lfs f2, lbl_805A3EB8@sda21(r0)
/* 802A0C24 002969A4  C0 02 AB 9C */	lfs f0, lbl_805A3EBC@sda21(r0)
/* 802A0C28 002969A8  FC 60 18 18 */	frsp f3, f3
/* 802A0C2C 002969AC  EC 21 00 F2 */	fmuls f1, f1, f3
/* 802A0C30 002969B0  EC 42 00 F2 */	fmuls f2, f2, f3
/* 802A0C34 002969B4  EC 03 00 7C */	fnmsubs f0, f3, f1, f0
/* 802A0C38 002969B8  EC 22 00 32 */	fmuls f1, f2, f0
.L_802A0C3C:
/* 802A0C3C 002969BC  C0 02 AB 90 */	lfs f0, lbl_805A3EB0@sda21(r0)
/* 802A0C40 002969C0  EC 20 08 24 */	fdivs f1, f0, f1
/* 802A0C44 002969C4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A0C48 002969C8  4E 80 00 20 */	blr
.endfn fn_802A0BF8
