.include "macros.inc"
.file "auto_fn_802CAE60_text"

# 0x800081C8..0x800081D0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800081C8 | size: 0x8
.obj "@etb_800081C8", local
.hidden "@etb_800081C8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800081C8"

# 0x8000AE7C..0x8000AE88 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AE7C | size: 0xC
.obj "@eti_8000AE7C", local
.hidden "@eti_8000AE7C"
	.4byte fn_802CAE60
	.4byte 0x00000088
	.4byte "@etb_800081C8"
.endobj "@eti_8000AE7C"

# 0x802CAE60..0x802CAEE8 | size: 0x88
.text
.balign 4

# .text:0x0 | 0x802CAE60 | size: 0x88
.fn fn_802CAE60, global
/* 802CAE60 002C0BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CAE64 002C0BE4  7C 08 02 A6 */	mflr r0
/* 802CAE68 002C0BE8  2C 03 00 00 */	cmpwi r3, 0x0
/* 802CAE6C 002C0BEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CAE70 002C0BF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CAE74 002C0BF4  7C 9F 23 78 */	mr r31, r4
/* 802CAE78 002C0BF8  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802CAE7C 002C0BFC  7C 7E 1B 78 */	mr r30, r3
/* 802CAE80 002C0C00  41 82 00 4C */	beq .L_802CAECC
/* 802CAE84 002C0C04  80 63 01 00 */	lwz r3, 0x100(r3)
/* 802CAE88 002C0C08  2C 03 00 00 */	cmpwi r3, 0x0
/* 802CAE8C 002C0C0C  41 82 00 18 */	beq .L_802CAEA4
/* 802CAE90 002C0C10  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CAE94 002C0C14  38 80 00 01 */	li r4, 0x1
/* 802CAE98 002C0C18  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802CAE9C 002C0C1C  7D 89 03 A6 */	mtctr r12
/* 802CAEA0 002C0C20  4E 80 04 21 */	bctrl
.L_802CAEA4:
/* 802CAEA4 002C0C24  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802CAEA8 002C0C28  40 81 00 24 */	ble .L_802CAECC
/* 802CAEAC 002C0C2C  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802CAEB0 002C0C30  7F C4 F3 78 */	mr r4, r30
/* 802CAEB4 002C0C34  38 A0 01 04 */	li r5, 0x104
/* 802CAEB8 002C0C38  38 C0 00 25 */	li r6, 0x25
/* 802CAEBC 002C0C3C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CAEC0 002C0C40  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802CAEC4 002C0C44  7D 89 03 A6 */	mtctr r12
/* 802CAEC8 002C0C48  4E 80 04 21 */	bctrl
.L_802CAECC:
/* 802CAECC 002C0C4C  7F C3 F3 78 */	mr r3, r30
/* 802CAED0 002C0C50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CAED4 002C0C54  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802CAED8 002C0C58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CAEDC 002C0C5C  7C 08 03 A6 */	mtlr r0
/* 802CAEE0 002C0C60  38 21 00 10 */	addi r1, r1, 0x10
/* 802CAEE4 002C0C64  4E 80 00 20 */	blr
.endfn fn_802CAE60
