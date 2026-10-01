.include "macros.inc"
.file "auto_fn_802D5BA4_text"

# 0x800085C4..0x800085CC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800085C4 | size: 0x8
.obj "@etb_800085C4", local
.hidden "@etb_800085C4"
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
.endobj "@etb_800085C4"

# 0x8000B3F8..0x8000B404 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B3F8 | size: 0xC
.obj "@eti_8000B3F8", local
.hidden "@eti_8000B3F8"
	.4byte fn_802D5BA4
	.4byte 0x000000B4
	.4byte "@etb_800085C4"
.endobj "@eti_8000B3F8"

# 0x802D5BA4..0x802D5C58 | size: 0xB4
.text
.balign 4

# .text:0x0 | 0x802D5BA4 | size: 0xB4
.fn fn_802D5BA4, global
/* 802D5BA4 002CB924  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D5BA8 002CB928  7C 08 02 A6 */	mflr r0
/* 802D5BAC 002CB92C  38 A0 00 01 */	li r5, 0x1
/* 802D5BB0 002CB930  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D5BB4 002CB934  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D5BB8 002CB938  3F E0 80 41 */	lis r31, lbl_80410C88@ha
/* 802D5BBC 002CB93C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D5BC0 002CB940  7C 9E 23 78 */	mr r30, r4
/* 802D5BC4 002CB944  38 9F 0C 88 */	addi r4, r31, lbl_80410C88@l
/* 802D5BC8 002CB948  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802D5BCC 002CB94C  7C 7D 1B 78 */	mr r29, r3
/* 802D5BD0 002CB950  7F C3 F3 78 */	mr r3, r30
/* 802D5BD4 002CB954  81 9E 00 00 */	lwz r12, 0x0(r30)
/* 802D5BD8 002CB958  7F A6 EB 78 */	mr r6, r29
/* 802D5BDC 002CB95C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802D5BE0 002CB960  7D 89 03 A6 */	mtctr r12
/* 802D5BE4 002CB964  4E 80 04 21 */	bctrl
/* 802D5BE8 002CB968  80 DD 00 3C */	lwz r6, 0x3c(r29)
/* 802D5BEC 002CB96C  38 7F 0C 88 */	addi r3, r31, lbl_80410C88@l
/* 802D5BF0 002CB970  38 83 00 0A */	addi r4, r3, 0xa
/* 802D5BF4 002CB974  54 C0 00 01 */	clrrwi. r0, r6, 31
/* 802D5BF8 002CB978  40 82 00 30 */	bne .L_802D5C28
/* 802D5BFC 002CB97C  81 9E 00 00 */	lwz r12, 0x0(r30)
/* 802D5C00 002CB980  54 C0 00 BE */	clrlwi r0, r6, 2
/* 802D5C04 002CB984  80 BD 00 38 */	lwz r5, 0x38(r29)
/* 802D5C08 002CB988  1D 00 00 30 */	mulli r8, r0, 0x30
/* 802D5C0C 002CB98C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802D5C10 002CB990  7F C3 F3 78 */	mr r3, r30
/* 802D5C14 002CB994  80 DD 00 34 */	lwz r6, 0x34(r29)
/* 802D5C18 002CB998  1C E5 00 30 */	mulli r7, r5, 0x30
/* 802D5C1C 002CB99C  38 A0 00 01 */	li r5, 0x1
/* 802D5C20 002CB9A0  7D 89 03 A6 */	mtctr r12
/* 802D5C24 002CB9A4  4E 80 04 21 */	bctrl
.L_802D5C28:
/* 802D5C28 002CB9A8  81 9E 00 00 */	lwz r12, 0x0(r30)
/* 802D5C2C 002CB9AC  7F C3 F3 78 */	mr r3, r30
/* 802D5C30 002CB9B0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802D5C34 002CB9B4  7D 89 03 A6 */	mtctr r12
/* 802D5C38 002CB9B8  4E 80 04 21 */	bctrl
/* 802D5C3C 002CB9BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D5C40 002CB9C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D5C44 002CB9C4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D5C48 002CB9C8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802D5C4C 002CB9CC  7C 08 03 A6 */	mtlr r0
/* 802D5C50 002CB9D0  38 21 00 20 */	addi r1, r1, 0x20
/* 802D5C54 002CB9D4  4E 80 00 20 */	blr
.endfn fn_802D5BA4
