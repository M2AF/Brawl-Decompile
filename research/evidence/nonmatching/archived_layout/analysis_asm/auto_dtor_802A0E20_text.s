.include "macros.inc"
.file "auto_dtor_802A0E20_text"

# 0x80006814..0x8000681C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006814 | size: 0x8
.obj "@etb_80006814", local
.hidden "@etb_80006814"
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
.endobj "@etb_80006814"

# 0x80009C04..0x80009C10 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009C04 | size: 0xC
.obj "@eti_80009C04", local
.hidden "@eti_80009C04"
	.4byte dtor_802A0E20
	.4byte 0x0000005C
	.4byte "@etb_80006814"
.endobj "@eti_80009C04"

# 0x802A0E20..0x802A0E7C | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802A0E20 | size: 0x5C
.fn dtor_802A0E20, global
/* 802A0E20 00296BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A0E24 00296BA4  7C 08 02 A6 */	mflr r0
/* 802A0E28 00296BA8  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A0E2C 00296BAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A0E30 00296BB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A0E34 00296BB4  7C 7F 1B 78 */	mr r31, r3
/* 802A0E38 00296BB8  41 82 00 2C */	beq .L_802A0E64
/* 802A0E3C 00296BBC  2C 04 00 00 */	cmpwi r4, 0x0
/* 802A0E40 00296BC0  40 81 00 24 */	ble .L_802A0E64
/* 802A0E44 00296BC4  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A0E48 00296BC8  7F E4 FB 78 */	mr r4, r31
/* 802A0E4C 00296BCC  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802A0E50 00296BD0  38 C0 00 1D */	li r6, 0x1d
/* 802A0E54 00296BD4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A0E58 00296BD8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A0E5C 00296BDC  7D 89 03 A6 */	mtctr r12
/* 802A0E60 00296BE0  4E 80 04 21 */	bctrl
.L_802A0E64:
/* 802A0E64 00296BE4  7F E3 FB 78 */	mr r3, r31
/* 802A0E68 00296BE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A0E6C 00296BEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A0E70 00296BF0  7C 08 03 A6 */	mtlr r0
/* 802A0E74 00296BF4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A0E78 00296BF8  4E 80 00 20 */	blr
.endfn dtor_802A0E20
