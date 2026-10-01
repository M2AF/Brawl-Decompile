.include "macros.inc"
.file "auto_fn_802AA3D8_text"

# 0x80006EA4..0x80006EAC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006EA4 | size: 0x8
.obj "@etb_80006EA4", local
.hidden "@etb_80006EA4"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80006EA4"

# 0x8000A090..0x8000A09C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A090 | size: 0xC
.obj "@eti_8000A090", local
.hidden "@eti_8000A090"
	.4byte fn_802AA3D8
	.4byte 0x000000A8
	.4byte "@etb_80006EA4"
.endobj "@eti_8000A090"

# 0x802AA3D8..0x802AA480 | size: 0xA8
.text
.balign 4

# .text:0x0 | 0x802AA3D8 | size: 0xA8
.fn fn_802AA3D8, global
/* 802AA3D8 002A0158  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AA3DC 002A015C  7C 08 02 A6 */	mflr r0
/* 802AA3E0 002A0160  38 A0 00 08 */	li r5, 0x8
/* 802AA3E4 002A0164  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AA3E8 002A0168  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802AA3EC 002A016C  3F E0 80 41 */	lis r31, lbl_8040FBE8@ha
/* 802AA3F0 002A0170  3B FF FB E8 */	addi r31, r31, lbl_8040FBE8@l
/* 802AA3F4 002A0174  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802AA3F8 002A0178  7C 9E 23 78 */	mr r30, r4
/* 802AA3FC 002A017C  38 9F 00 22 */	addi r4, r31, 0x22
/* 802AA400 002A0180  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802AA404 002A0184  7C 7D 1B 78 */	mr r29, r3
/* 802AA408 002A0188  7F C3 F3 78 */	mr r3, r30
/* 802AA40C 002A018C  81 9E 00 00 */	lwz r12, 0x0(r30)
/* 802AA410 002A0190  7F A6 EB 78 */	mr r6, r29
/* 802AA414 002A0194  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802AA418 002A0198  7D 89 03 A6 */	mtctr r12
/* 802AA41C 002A019C  4E 80 04 21 */	bctrl
/* 802AA420 002A01A0  80 BD 00 38 */	lwz r5, 0x38(r29)
/* 802AA424 002A01A4  38 9F 00 2D */	addi r4, r31, 0x2d
/* 802AA428 002A01A8  54 A0 00 01 */	clrrwi. r0, r5, 31
/* 802AA42C 002A01AC  40 82 00 2C */	bne .L_802AA458
/* 802AA430 002A01B0  81 9E 00 00 */	lwz r12, 0x0(r30)
/* 802AA434 002A01B4  54 A8 10 3A */	slwi r8, r5, 2
/* 802AA438 002A01B8  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 802AA43C 002A01BC  7F C3 F3 78 */	mr r3, r30
/* 802AA440 002A01C0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802AA444 002A01C4  38 A0 00 08 */	li r5, 0x8
/* 802AA448 002A01C8  54 07 10 3A */	slwi r7, r0, 2
/* 802AA44C 002A01CC  80 DD 00 30 */	lwz r6, 0x30(r29)
/* 802AA450 002A01D0  7D 89 03 A6 */	mtctr r12
/* 802AA454 002A01D4  4E 80 04 21 */	bctrl
.L_802AA458:
/* 802AA458 002A01D8  7F C4 F3 78 */	mr r4, r30
/* 802AA45C 002A01DC  38 7D 00 30 */	addi r3, r29, 0x30
/* 802AA460 002A01E0  48 05 46 01 */	bl fn_802FEA60
/* 802AA464 002A01E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AA468 002A01E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802AA46C 002A01EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802AA470 002A01F0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802AA474 002A01F4  7C 08 03 A6 */	mtlr r0
/* 802AA478 002A01F8  38 21 00 20 */	addi r1, r1, 0x20
/* 802AA47C 002A01FC  4E 80 00 20 */	blr
.endfn fn_802AA3D8
