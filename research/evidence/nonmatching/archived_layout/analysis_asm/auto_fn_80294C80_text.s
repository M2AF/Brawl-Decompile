.include "macros.inc"
.file "auto_fn_80294C80_text"

# 0x80006690..0x80006698 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006690 | size: 0x8
.obj "@etb_80006690", local
.hidden "@etb_80006690"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_80006690"

# 0x800099E8..0x800099F4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x800099E8 | size: 0xC
.obj "@eti_800099E8", local
.hidden "@eti_800099E8"
	.4byte fn_80294C80
	.4byte 0x0000009C
	.4byte "@etb_80006690"
.endobj "@eti_800099E8"

# 0x80294C80..0x80294D1C | size: 0x9C
.text
.balign 4

# .text:0x0 | 0x80294C80 | size: 0x9C
.fn fn_80294C80, global
/* 80294C80 0028AA00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80294C84 0028AA04  C0 82 AA F0 */	lfs f4, lbl_805A3E10@sda21(r0)
/* 80294C88 0028AA08  C0 03 00 04 */	lfs f0, 0x4(r3)
/* 80294C8C 0028AA0C  C0 23 00 00 */	lfs f1, 0x0(r3)
/* 80294C90 0028AA10  EC 40 00 32 */	fmuls f2, f0, f0
/* 80294C94 0028AA14  C0 03 00 08 */	lfs f0, 0x8(r3)
/* 80294C98 0028AA18  EC 21 10 7A */	fmadds f1, f1, f1, f2
/* 80294C9C 0028AA1C  EC A0 08 3A */	fmadds f5, f0, f0, f1
/* 80294CA0 0028AA20  FC 05 20 00 */	fcmpu cr0, f5, f4
/* 80294CA4 0028AA24  41 82 00 40 */	beq .L_80294CE4
/* 80294CA8 0028AA28  FC 05 20 40 */	fcmpo cr0, f5, f4
/* 80294CAC 0028AA2C  4C 40 13 82 */	cror eq, lt, eq
/* 80294CB0 0028AA30  40 82 00 14 */	bne .L_80294CC4
/* 80294CB4 0028AA34  3C 00 7F 80 */	lis r0, 0x7f80
/* 80294CB8 0028AA38  90 01 00 08 */	stw r0, 0x8(r1)
/* 80294CBC 0028AA3C  C0 81 00 08 */	lfs f4, 0x8(r1)
/* 80294CC0 0028AA40  48 00 00 24 */	b .L_80294CE4
.L_80294CC4:
/* 80294CC4 0028AA44  FC 20 28 34 */	frsqrte f1, f5
/* 80294CC8 0028AA48  C0 42 AB 20 */	lfs f2, lbl_805A3E40@sda21(r0)
/* 80294CCC 0028AA4C  C0 02 AB 24 */	lfs f0, lbl_805A3E44@sda21(r0)
/* 80294CD0 0028AA50  FC 60 08 18 */	frsp f3, f1
/* 80294CD4 0028AA54  EC 25 00 F2 */	fmuls f1, f5, f3
/* 80294CD8 0028AA58  EC 42 00 F2 */	fmuls f2, f2, f3
/* 80294CDC 0028AA5C  EC 03 00 7C */	fnmsubs f0, f3, f1, f0
/* 80294CE0 0028AA60  EC 82 00 32 */	fmuls f4, f2, f0
.L_80294CE4:
/* 80294CE4 0028AA64  C0 03 00 00 */	lfs f0, 0x0(r3)
/* 80294CE8 0028AA68  C0 43 00 04 */	lfs f2, 0x4(r3)
/* 80294CEC 0028AA6C  EC 60 01 32 */	fmuls f3, f0, f4
/* 80294CF0 0028AA70  C0 23 00 08 */	lfs f1, 0x8(r3)
/* 80294CF4 0028AA74  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80294CF8 0028AA78  EC 42 01 32 */	fmuls f2, f2, f4
/* 80294CFC 0028AA7C  EC 21 01 32 */	fmuls f1, f1, f4
/* 80294D00 0028AA80  EC 00 01 32 */	fmuls f0, f0, f4
/* 80294D04 0028AA84  D0 63 00 00 */	stfs f3, 0x0(r3)
/* 80294D08 0028AA88  D0 43 00 04 */	stfs f2, 0x4(r3)
/* 80294D0C 0028AA8C  D0 23 00 08 */	stfs f1, 0x8(r3)
/* 80294D10 0028AA90  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80294D14 0028AA94  38 21 00 10 */	addi r1, r1, 0x10
/* 80294D18 0028AA98  4E 80 00 20 */	blr
.endfn fn_80294C80
