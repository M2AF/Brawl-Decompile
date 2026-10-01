.include "macros.inc"
.file "auto_fn_802C8FC4_text"

# 0x80008048..0x80008050 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008048 | size: 0x8
.obj "@etb_80008048", local
.hidden "@etb_80008048"
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
.endobj "@etb_80008048"

# 0x8000AD50..0x8000AD5C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AD50 | size: 0xC
.obj "@eti_8000AD50", local
.hidden "@eti_8000AD50"
	.4byte fn_802C8FC4
	.4byte 0x0000005C
	.4byte "@etb_80008048"
.endobj "@eti_8000AD50"

# 0x802C8FC4..0x802C9020 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802C8FC4 | size: 0x5C
.fn fn_802C8FC4, global
/* 802C8FC4 002BED44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C8FC8 002BED48  7C 08 02 A6 */	mflr r0
/* 802C8FCC 002BED4C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C8FD0 002BED50  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C8FD4 002BED54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C8FD8 002BED58  7C 7F 1B 78 */	mr r31, r3
/* 802C8FDC 002BED5C  41 82 00 2C */	beq .L_802C9008
/* 802C8FE0 002BED60  2C 04 00 00 */	cmpwi r4, 0x0
/* 802C8FE4 002BED64  40 81 00 24 */	ble .L_802C9008
/* 802C8FE8 002BED68  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802C8FEC 002BED6C  7F E4 FB 78 */	mr r4, r31
/* 802C8FF0 002BED70  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802C8FF4 002BED74  38 C0 00 1D */	li r6, 0x1d
/* 802C8FF8 002BED78  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C8FFC 002BED7C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C9000 002BED80  7D 89 03 A6 */	mtctr r12
/* 802C9004 002BED84  4E 80 04 21 */	bctrl
.L_802C9008:
/* 802C9008 002BED88  7F E3 FB 78 */	mr r3, r31
/* 802C900C 002BED8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C9010 002BED90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C9014 002BED94  7C 08 03 A6 */	mtlr r0
/* 802C9018 002BED98  38 21 00 10 */	addi r1, r1, 0x10
/* 802C901C 002BED9C  4E 80 00 20 */	blr
.endfn fn_802C8FC4
