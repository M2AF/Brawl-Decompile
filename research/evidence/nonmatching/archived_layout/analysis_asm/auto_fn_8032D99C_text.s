.include "macros.inc"
.file "auto_fn_8032D99C_text"

# 0x80009160..0x80009168 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009160 | size: 0x8
.obj "@etb_80009160", local
.hidden "@etb_80009160"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_80009160"

# 0x8000BFE0..0x8000BFEC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BFE0 | size: 0xC
.obj "@eti_8000BFE0", local
.hidden "@eti_8000BFE0"
	.4byte fn_8032D99C
	.4byte 0x000000A4
	.4byte "@etb_80009160"
.endobj "@eti_8000BFE0"

# 0x8032D99C..0x8032DA40 | size: 0xA4
.text
.balign 4

# .text:0x0 | 0x8032D99C | size: 0xA4
.fn fn_8032D99C, global
/* 8032D99C 0032371C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032D9A0 00323720  C0 82 B5 98 */	lfs f4, lbl_805A48B8@sda21(r0)
/* 8032D9A4 00323724  C0 03 00 04 */	lfs f0, 0x4(r3)
/* 8032D9A8 00323728  C0 43 00 00 */	lfs f2, 0x0(r3)
/* 8032D9AC 0032372C  EC 60 00 32 */	fmuls f3, f0, f0
/* 8032D9B0 00323730  C0 23 00 08 */	lfs f1, 0x8(r3)
/* 8032D9B4 00323734  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8032D9B8 00323738  EC 42 18 BA */	fmadds f2, f2, f2, f3
/* 8032D9BC 0032373C  EC 21 10 7A */	fmadds f1, f1, f1, f2
/* 8032D9C0 00323740  EC 20 08 3A */	fmadds f1, f0, f0, f1
/* 8032D9C4 00323744  FC 01 20 00 */	fcmpu cr0, f1, f4
/* 8032D9C8 00323748  41 82 00 40 */	beq .L_8032DA08
/* 8032D9CC 0032374C  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 8032D9D0 00323750  4C 40 13 82 */	cror eq, lt, eq
/* 8032D9D4 00323754  40 82 00 14 */	bne .L_8032D9E8
/* 8032D9D8 00323758  3C 00 7F 80 */	lis r0, 0x7f80
/* 8032D9DC 0032375C  90 01 00 08 */	stw r0, 0x8(r1)
/* 8032D9E0 00323760  C0 81 00 08 */	lfs f4, 0x8(r1)
/* 8032D9E4 00323764  48 00 00 24 */	b .L_8032DA08
.L_8032D9E8:
/* 8032D9E8 00323768  FC 60 08 34 */	frsqrte f3, f1
/* 8032D9EC 0032376C  C0 42 B5 9C */	lfs f2, lbl_805A48BC@sda21(r0)
/* 8032D9F0 00323770  C0 02 B5 A0 */	lfs f0, lbl_805A48C0@sda21(r0)
/* 8032D9F4 00323774  FC 60 18 18 */	frsp f3, f3
/* 8032D9F8 00323778  EC 21 00 F2 */	fmuls f1, f1, f3
/* 8032D9FC 0032377C  EC 42 00 F2 */	fmuls f2, f2, f3
/* 8032DA00 00323780  EC 03 00 7C */	fnmsubs f0, f3, f1, f0
/* 8032DA04 00323784  EC 82 00 32 */	fmuls f4, f2, f0
.L_8032DA08:
/* 8032DA08 00323788  C0 03 00 00 */	lfs f0, 0x0(r3)
/* 8032DA0C 0032378C  C0 43 00 04 */	lfs f2, 0x4(r3)
/* 8032DA10 00323790  EC 60 01 32 */	fmuls f3, f0, f4
/* 8032DA14 00323794  C0 23 00 08 */	lfs f1, 0x8(r3)
/* 8032DA18 00323798  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8032DA1C 0032379C  EC 42 01 32 */	fmuls f2, f2, f4
/* 8032DA20 003237A0  EC 21 01 32 */	fmuls f1, f1, f4
/* 8032DA24 003237A4  EC 00 01 32 */	fmuls f0, f0, f4
/* 8032DA28 003237A8  D0 63 00 00 */	stfs f3, 0x0(r3)
/* 8032DA2C 003237AC  D0 43 00 04 */	stfs f2, 0x4(r3)
/* 8032DA30 003237B0  D0 23 00 08 */	stfs f1, 0x8(r3)
/* 8032DA34 003237B4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8032DA38 003237B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8032DA3C 003237BC  4E 80 00 20 */	blr
.endfn fn_8032D99C
