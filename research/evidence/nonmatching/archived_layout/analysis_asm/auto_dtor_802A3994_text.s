.include "macros.inc"
.file "auto_dtor_802A3994_text"

# 0x80006A20..0x80006A28 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006A20 | size: 0x8
.obj "@etb_80006A20", local
.hidden "@etb_80006A20"
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
.endobj "@etb_80006A20"

# 0x80009D90..0x80009D9C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009D90 | size: 0xC
.obj "@eti_80009D90", local
.hidden "@eti_80009D90"
	.4byte dtor_802A3994
	.4byte 0x0000005C
	.4byte "@etb_80006A20"
.endobj "@eti_80009D90"

# 0x802A3994..0x802A39F0 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802A3994 | size: 0x5C
.fn dtor_802A3994, global
/* 802A3994 00299714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A3998 00299718  7C 08 02 A6 */	mflr r0
/* 802A399C 0029971C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A39A0 00299720  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A39A4 00299724  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A39A8 00299728  7C 7F 1B 78 */	mr r31, r3
/* 802A39AC 0029972C  41 82 00 2C */	beq .L_802A39D8
/* 802A39B0 00299730  2C 04 00 00 */	cmpwi r4, 0x0
/* 802A39B4 00299734  40 81 00 24 */	ble .L_802A39D8
/* 802A39B8 00299738  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A39BC 0029973C  7F E4 FB 78 */	mr r4, r31
/* 802A39C0 00299740  38 A0 00 30 */	li r5, 0x30
/* 802A39C4 00299744  38 C0 00 1D */	li r6, 0x1d
/* 802A39C8 00299748  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A39CC 0029974C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A39D0 00299750  7D 89 03 A6 */	mtctr r12
/* 802A39D4 00299754  4E 80 04 21 */	bctrl
.L_802A39D8:
/* 802A39D8 00299758  7F E3 FB 78 */	mr r3, r31
/* 802A39DC 0029975C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A39E0 00299760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A39E4 00299764  7C 08 03 A6 */	mtlr r0
/* 802A39E8 00299768  38 21 00 10 */	addi r1, r1, 0x10
/* 802A39EC 0029976C  4E 80 00 20 */	blr
.endfn dtor_802A3994
