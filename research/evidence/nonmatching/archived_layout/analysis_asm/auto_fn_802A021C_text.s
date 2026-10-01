.include "macros.inc"
.file "auto_fn_802A021C_text"

# 0x800067B8..0x800067C0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800067B8 | size: 0x8
.obj "@etb_800067B8", local
.hidden "@etb_800067B8"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_800067B8"

# 0x80009BA4..0x80009BB0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009BA4 | size: 0xC
.obj "@eti_80009BA4", local
.hidden "@eti_80009BA4"
	.4byte fn_802A021C
	.4byte 0x000000BC
	.4byte "@etb_800067B8"
.endobj "@eti_80009BA4"

# 0x802A021C..0x802A02D8 | size: 0xBC
.text
.balign 4

# .text:0x0 | 0x802A021C | size: 0xBC
.fn fn_802A021C, global
/* 802A021C 00295F9C  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 802A0220 00295FA0  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802A0224 00295FA4  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 802A0228 00295FA8  21 6B FF D0 */	subfic r11, r11, -0x30
/* 802A022C 00295FAC  C0 A3 00 54 */	lfs f5, 0x54(r3)
/* 802A0230 00295FB0  7C 2C 0B 78 */	mr r12, r1
/* 802A0234 00295FB4  EC C4 00 32 */	fmuls f6, f4, f0
/* 802A0238 00295FB8  C0 65 00 04 */	lfs f3, 0x4(r5)
/* 802A023C 00295FBC  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 802A0240 00295FC0  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 802A0244 00295FC4  EC A5 00 F2 */	fmuls f5, f5, f3
/* 802A0248 00295FC8  C0 64 00 54 */	lfs f3, 0x54(r4)
/* 802A024C 00295FCC  ED 64 00 32 */	fmuls f11, f4, f0
/* 802A0250 00295FD0  C0 05 00 14 */	lfs f0, 0x14(r5)
/* 802A0254 00295FD4  C0 83 00 58 */	lfs f4, 0x58(r3)
/* 802A0258 00295FD8  ED 43 00 32 */	fmuls f10, f3, f0
/* 802A025C 00295FDC  C0 05 00 08 */	lfs f0, 0x8(r5)
/* 802A0260 00295FE0  C0 65 00 18 */	lfs f3, 0x18(r5)
/* 802A0264 00295FE4  ED 84 00 32 */	fmuls f12, f4, f0
/* 802A0268 00295FE8  C0 84 00 58 */	lfs f4, 0x58(r4)
/* 802A026C 00295FEC  C1 05 00 1C */	lfs f8, 0x1c(r5)
/* 802A0270 00295FF0  ED 24 00 F2 */	fmuls f9, f4, f3
/* 802A0274 00295FF4  C0 04 00 5C */	lfs f0, 0x5c(r4)
/* 802A0278 00295FF8  EC C6 58 2A */	fadds f6, f6, f11
/* 802A027C 00295FFC  EC E0 02 32 */	fmuls f7, f0, f8
/* 802A0280 00296000  C0 63 00 5C */	lfs f3, 0x5c(r3)
/* 802A0284 00296004  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 802A0288 00296008  EC A5 50 2A */	fadds f5, f5, f10
/* 802A028C 0029600C  7C 21 59 6E */	stwux r1, r1, r11
/* 802A0290 00296010  EC 63 00 32 */	fmuls f3, f3, f0
/* 802A0294 00296014  EC 8C 48 2A */	fadds f4, f12, f9
/* 802A0298 00296018  D1 61 00 10 */	stfs f11, 0x10(r1)
/* 802A029C 0029601C  EC 06 28 2A */	fadds f0, f6, f5
/* 802A02A0 00296020  EC 63 38 2A */	fadds f3, f3, f7
/* 802A02A4 00296024  D1 41 00 14 */	stfs f10, 0x14(r1)
/* 802A02A8 00296028  EC 04 00 2A */	fadds f0, f4, f0
/* 802A02AC 0029602C  D1 21 00 18 */	stfs f9, 0x18(r1)
/* 802A02B0 00296030  D0 E1 00 1C */	stfs f7, 0x1c(r1)
/* 802A02B4 00296034  EC 00 00 B2 */	fmuls f0, f0, f2
/* 802A02B8 00296038  D0 C1 00 20 */	stfs f6, 0x20(r1)
/* 802A02BC 0029603C  EC 21 02 38 */	fmsubs f1, f1, f8, f0
/* 802A02C0 00296040  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 802A02C4 00296044  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 802A02C8 00296048  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 802A02CC 0029604C  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802A02D0 00296050  7D 41 53 78 */	mr r1, r10
/* 802A02D4 00296054  4E 80 00 20 */	blr
.endfn fn_802A021C
