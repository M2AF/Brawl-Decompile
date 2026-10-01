.include "macros.inc"
.file "auto_fn_80306DA0_text"

# 0x8000883C..0x80008844 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000883C | size: 0x8
.obj "@etb_8000883C", local
.hidden "@etb_8000883C"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_8000883C"

# 0x8000B794..0x8000B7A0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B794 | size: 0xC
.obj "@eti_8000B794", local
.hidden "@eti_8000B794"
	.4byte fn_80306DA0
	.4byte 0x00000150
	.4byte "@etb_8000883C"
.endobj "@eti_8000B794"

# 0x80306DA0..0x80306EF0 | size: 0x150
.text
.balign 4

# .text:0x0 | 0x80306DA0 | size: 0x150
.fn fn_80306DA0, global
/* 80306DA0 002FCB20  54 2B 07 3E */	clrlwi r11, r1, 28
/* 80306DA4 002FCB24  7C 2C 0B 78 */	mr r12, r1
/* 80306DA8 002FCB28  21 6B FF E0 */	subfic r11, r11, -0x20
/* 80306DAC 002FCB2C  7C 21 59 6E */	stwux r1, r1, r11
/* 80306DB0 002FCB30  88 04 00 21 */	lbz r0, 0x21(r4)
/* 80306DB4 002FCB34  2C 00 00 02 */	cmpwi r0, 0x2
/* 80306DB8 002FCB38  40 80 00 14 */	bge .L_80306DCC
/* 80306DBC 002FCB3C  38 00 00 00 */	li r0, 0x0
/* 80306DC0 002FCB40  3C 60 01 00 */	lis r3, 0x100
/* 80306DC4 002FCB44  98 04 00 23 */	stb r0, 0x23(r4)
/* 80306DC8 002FCB48  48 00 01 1C */	b .L_80306EE4
.L_80306DCC:
/* 80306DCC 002FCB4C  88 04 00 23 */	lbz r0, 0x23(r4)
/* 80306DD0 002FCB50  7C 05 07 74 */	extsb r5, r0
/* 80306DD4 002FCB54  7C 05 00 D0 */	neg r0, r5
/* 80306DD8 002FCB58  7C 00 2B 78 */	or r0, r0, r5
/* 80306DDC 002FCB5C  54 00 0F FF */	srwi. r0, r0, 31
/* 80306DE0 002FCB60  40 82 00 74 */	bne .L_80306E54
/* 80306DE4 002FCB64  C0 A4 00 34 */	lfs f5, 0x34(r4)
/* 80306DE8 002FCB68  38 00 00 01 */	li r0, 0x1
/* 80306DEC 002FCB6C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80306DF0 002FCB70  C0 C4 00 30 */	lfs f6, 0x30(r4)
/* 80306DF4 002FCB74  EC 45 00 32 */	fmuls f2, f5, f0
/* 80306DF8 002FCB78  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80306DFC 002FCB7C  C0 84 00 38 */	lfs f4, 0x38(r4)
/* 80306E00 002FCB80  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80306E04 002FCB84  EC 46 10 3A */	fmadds f2, f6, f0, f2
/* 80306E08 002FCB88  C0 02 B2 A4 */	lfs f0, lbl_805A45C4@sda21(r0)
/* 80306E0C 002FCB8C  EC 24 10 7A */	fmadds f1, f4, f1, f2
/* 80306E10 002FCB90  D0 24 00 40 */	stfs f1, 0x40(r4)
/* 80306E14 002FCB94  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 80306E18 002FCB98  C0 43 00 30 */	lfs f2, 0x30(r3)
/* 80306E1C 002FCB9C  EC 65 00 72 */	fmuls f3, f5, f1
/* 80306E20 002FCBA0  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 80306E24 002FCBA4  EC 46 18 BA */	fmadds f2, f6, f2, f3
/* 80306E28 002FCBA8  EC 24 10 7A */	fmadds f1, f4, f1, f2
/* 80306E2C 002FCBAC  D0 24 00 44 */	stfs f1, 0x44(r4)
/* 80306E30 002FCBB0  C0 23 00 44 */	lfs f1, 0x44(r3)
/* 80306E34 002FCBB4  C0 43 00 40 */	lfs f2, 0x40(r3)
/* 80306E38 002FCBB8  EC 65 00 72 */	fmuls f3, f5, f1
/* 80306E3C 002FCBBC  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 80306E40 002FCBC0  D0 04 00 4C */	stfs f0, 0x4c(r4)
/* 80306E44 002FCBC4  EC 06 18 BA */	fmadds f0, f6, f2, f3
/* 80306E48 002FCBC8  98 04 00 23 */	stb r0, 0x23(r4)
/* 80306E4C 002FCBCC  EC 04 00 7A */	fmadds f0, f4, f1, f0
/* 80306E50 002FCBD0  D0 04 00 48 */	stfs f0, 0x48(r4)
.L_80306E54:
/* 80306E54 002FCBD4  C1 04 00 44 */	lfs f8, 0x44(r4)
/* 80306E58 002FCBD8  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80306E5C 002FCBDC  C0 63 00 30 */	lfs f3, 0x30(r3)
/* 80306E60 002FCBE0  EC 48 00 32 */	fmuls f2, f8, f0
/* 80306E64 002FCBE4  C0 E4 00 40 */	lfs f7, 0x40(r4)
/* 80306E68 002FCBE8  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80306E6C 002FCBEC  EC A8 00 F2 */	fmuls f5, f8, f3
/* 80306E70 002FCBF0  C0 83 00 20 */	lfs f4, 0x20(r3)
/* 80306E74 002FCBF4  EC 67 10 7A */	fmadds f3, f7, f1, f2
/* 80306E78 002FCBF8  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80306E7C 002FCBFC  EC C7 29 3A */	fmadds f6, f7, f4, f5
/* 80306E80 002FCC00  C1 24 00 48 */	lfs f9, 0x48(r4)
/* 80306E84 002FCC04  C0 23 00 44 */	lfs f1, 0x44(r3)
/* 80306E88 002FCC08  EC 48 00 32 */	fmuls f2, f8, f0
/* 80306E8C 002FCC0C  C0 83 00 40 */	lfs f4, 0x40(r3)
/* 80306E90 002FCC10  EC A9 18 7A */	fmadds f5, f9, f1, f3
/* 80306E94 002FCC14  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80306E98 002FCC18  EC C9 31 3A */	fmadds f6, f9, f4, f6
/* 80306E9C 002FCC1C  C0 04 00 34 */	lfs f0, 0x34(r4)
/* 80306EA0 002FCC20  EC 67 10 7A */	fmadds f3, f7, f1, f2
/* 80306EA4 002FCC24  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 80306EA8 002FCC28  EC 40 01 72 */	fmuls f2, f0, f5
/* 80306EAC 002FCC2C  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 80306EB0 002FCC30  EC 89 18 7A */	fmadds f4, f9, f1, f3
/* 80306EB4 002FCC34  C0 24 00 38 */	lfs f1, 0x38(r4)
/* 80306EB8 002FCC38  C0 62 B2 A4 */	lfs f3, lbl_805A45C4@sda21(r0)
/* 80306EBC 002FCC3C  EC 40 11 BA */	fmadds f2, f0, f6, f2
/* 80306EC0 002FCC40  C0 02 B2 DC */	lfs f0, lbl_805A45FC@sda21(r0)
/* 80306EC4 002FCC44  D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 80306EC8 002FCC48  EC 21 11 3A */	fmadds f1, f1, f4, f2
/* 80306ECC 002FCC4C  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 80306ED0 002FCC50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80306ED4 002FCC54  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 80306ED8 002FCC58  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 80306EDC 002FCC5C  7C 00 00 26 */	mfcr r0
/* 80306EE0 002FCC60  54 03 C9 CE */	rlwinm r3, r0, 25, 7, 7
.L_80306EE4:
/* 80306EE4 002FCC64  81 41 00 00 */	lwz r10, 0x0(r1)
/* 80306EE8 002FCC68  7D 41 53 78 */	mr r1, r10
/* 80306EEC 002FCC6C  4E 80 00 20 */	blr
.endfn fn_80306DA0
