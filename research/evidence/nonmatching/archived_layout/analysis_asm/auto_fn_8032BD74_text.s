.include "macros.inc"
.file "auto_fn_8032BD74_text"

# 0x80009128..0x80009130 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009128 | size: 0x8
.obj "@etb_80009128", local
.hidden "@etb_80009128"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_80009128"

# 0x8000BF8C..0x8000BF98 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BF8C | size: 0xC
.obj "@eti_8000BF8C", local
.hidden "@eti_8000BF8C"
	.4byte fn_8032BD74
	.4byte 0x00000070
	.4byte "@etb_80009128"
.endobj "@eti_8000BF8C"

# 0x8032BD74..0x8032BDE4 | size: 0x70
.text
.balign 4

# .text:0x0 | 0x8032BD74 | size: 0x70
.fn fn_8032BD74, global
/* 8032BD74 00321AF4  54 2B 07 3E */	clrlwi r11, r1, 28
/* 8032BD78 00321AF8  7C 2C 0B 78 */	mr r12, r1
/* 8032BD7C 00321AFC  21 6B FF E0 */	subfic r11, r11, -0x20
/* 8032BD80 00321B00  C0 02 B5 20 */	lfs f0, lbl_805A4840@sda21(r0)
/* 8032BD84 00321B04  7C 21 59 6E */	stwux r1, r1, r11
/* 8032BD88 00321B08  C0 22 B5 24 */	lfs f1, lbl_805A4844@sda21(r0)
/* 8032BD8C 00321B0C  D0 03 00 00 */	stfs f0, 0x0(r3)
/* 8032BD90 00321B10  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8032BD94 00321B14  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8032BD98 00321B18  D0 03 00 04 */	stfs f0, 0x4(r3)
/* 8032BD9C 00321B1C  D0 03 00 08 */	stfs f0, 0x8(r3)
/* 8032BDA0 00321B20  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8032BDA4 00321B24  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8032BDA8 00321B28  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8032BDAC 00321B2C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8032BDB0 00321B30  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8032BDB4 00321B34  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8032BDB8 00321B38  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8032BDBC 00321B3C  D0 23 00 00 */	stfs f1, 0x0(r3)
/* 8032BDC0 00321B40  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 8032BDC4 00321B44  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 8032BDC8 00321B48  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8032BDCC 00321B4C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8032BDD0 00321B50  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8032BDD4 00321B54  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8032BDD8 00321B58  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8032BDDC 00321B5C  7D 41 53 78 */	mr r1, r10
/* 8032BDE0 00321B60  4E 80 00 20 */	blr
.endfn fn_8032BD74
