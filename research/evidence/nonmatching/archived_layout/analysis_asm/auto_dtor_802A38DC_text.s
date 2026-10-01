.include "macros.inc"
.file "auto_dtor_802A38DC_text"

# 0x80006A10..0x80006A18 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006A10 | size: 0x8
.obj "@etb_80006A10", local
.hidden "@etb_80006A10"
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
.endobj "@etb_80006A10"

# 0x80009D78..0x80009D84 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009D78 | size: 0xC
.obj "@eti_80009D78", local
.hidden "@eti_80009D78"
	.4byte dtor_802A38DC
	.4byte 0x0000005C
	.4byte "@etb_80006A10"
.endobj "@eti_80009D78"

# 0x802A38DC..0x802A3938 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802A38DC | size: 0x5C
.fn dtor_802A38DC, global
/* 802A38DC 0029965C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A38E0 00299660  7C 08 02 A6 */	mflr r0
/* 802A38E4 00299664  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A38E8 00299668  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A38EC 0029966C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A38F0 00299670  7C 7F 1B 78 */	mr r31, r3
/* 802A38F4 00299674  41 82 00 2C */	beq .L_802A3920
/* 802A38F8 00299678  2C 04 00 00 */	cmpwi r4, 0x0
/* 802A38FC 0029967C  40 81 00 24 */	ble .L_802A3920
/* 802A3900 00299680  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A3904 00299684  7F E4 FB 78 */	mr r4, r31
/* 802A3908 00299688  38 A0 00 08 */	li r5, 0x8
/* 802A390C 0029968C  38 C0 00 1D */	li r6, 0x1d
/* 802A3910 00299690  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A3914 00299694  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A3918 00299698  7D 89 03 A6 */	mtctr r12
/* 802A391C 0029969C  4E 80 04 21 */	bctrl
.L_802A3920:
/* 802A3920 002996A0  7F E3 FB 78 */	mr r3, r31
/* 802A3924 002996A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A3928 002996A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A392C 002996AC  7C 08 03 A6 */	mtlr r0
/* 802A3930 002996B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802A3934 002996B4  4E 80 00 20 */	blr
.endfn dtor_802A38DC
