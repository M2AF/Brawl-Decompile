.include "macros.inc"
.file "auto_fn_802C7220_text"

# 0x80007F58..0x80007F60 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007F58 | size: 0x8
.obj "@etb_80007F58", local
.hidden "@etb_80007F58"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80007F58"

# 0x8000AC78..0x8000AC84 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AC78 | size: 0xC
.obj "@eti_8000AC78", local
.hidden "@eti_8000AC78"
	.4byte fn_802C7220
	.4byte 0x00000068
	.4byte "@etb_80007F58"
.endobj "@eti_8000AC78"

# 0x802C7220..0x802C7288 | size: 0x68
.text
.balign 4

# .text:0x0 | 0x802C7220 | size: 0x68
.fn fn_802C7220, global
/* 802C7220 002BCFA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C7224 002BCFA4  7C 08 02 A6 */	mflr r0
/* 802C7228 002BCFA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C722C 002BCFAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C7230 002BCFB0  7C 7F 1B 78 */	mr r31, r3
/* 802C7234 002BCFB4  A0 83 00 0C */	lhz r4, 0xc(r3)
/* 802C7238 002BCFB8  28 04 FF FF */	cmplwi r4, 0xffff
/* 802C723C 002BCFBC  41 82 00 18 */	beq .L_802C7254
/* 802C7240 002BCFC0  80 63 00 08 */	lwz r3, 0x8(r3)
/* 802C7244 002BCFC4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C7248 002BCFC8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802C724C 002BCFCC  7D 89 03 A6 */	mtctr r12
/* 802C7250 002BCFD0  4E 80 04 21 */	bctrl
.L_802C7254:
/* 802C7254 002BCFD4  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802C7258 002BCFD8  41 82 00 1C */	beq .L_802C7274
/* 802C725C 002BCFDC  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 802C7260 002BCFE0  7F E3 FB 78 */	mr r3, r31
/* 802C7264 002BCFE4  38 80 00 01 */	li r4, 0x1
/* 802C7268 002BCFE8  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802C726C 002BCFEC  7D 89 03 A6 */	mtctr r12
/* 802C7270 002BCFF0  4E 80 04 21 */	bctrl
.L_802C7274:
/* 802C7274 002BCFF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C7278 002BCFF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C727C 002BCFFC  7C 08 03 A6 */	mtlr r0
/* 802C7280 002BD000  38 21 00 10 */	addi r1, r1, 0x10
/* 802C7284 002BD004  4E 80 00 20 */	blr
.endfn fn_802C7220
