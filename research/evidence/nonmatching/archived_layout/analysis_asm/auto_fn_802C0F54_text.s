.include "macros.inc"
.file "auto_fn_802C0F54_text"

# 0x80007C40..0x80007C48 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007C40 | size: 0x8
.obj "@etb_80007C40", local
.hidden "@etb_80007C40"
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
.endobj "@etb_80007C40"

# 0x8000A9A8..0x8000A9B4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A9A8 | size: 0xC
.obj "@eti_8000A9A8", local
.hidden "@eti_8000A9A8"
	.4byte fn_802C0F54
	.4byte 0x00000094
	.4byte "@etb_80007C40"
.endobj "@eti_8000A9A8"

# 0x802C0F54..0x802C0FE8 | size: 0x94
.text
.balign 4

# .text:0x0 | 0x802C0F54 | size: 0x94
.fn fn_802C0F54, global
/* 802C0F54 002B6CD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C0F58 002B6CD8  7C 08 02 A6 */	mflr r0
/* 802C0F5C 002B6CDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C0F60 002B6CE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C0F64 002B6CE4  3B E0 00 00 */	li r31, 0x0
/* 802C0F68 002B6CE8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802C0F6C 002B6CEC  3B C0 00 00 */	li r30, 0x0
/* 802C0F70 002B6CF0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802C0F74 002B6CF4  7C 7D 1B 78 */	mr r29, r3
/* 802C0F78 002B6CF8  48 00 00 28 */	b .L_802C0FA0
.L_802C0F7C:
/* 802C0F7C 002B6CFC  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802C0F80 002B6D00  7C 60 FA 14 */	add r3, r0, r31
/* 802C0F84 002B6D04  80 63 00 04 */	lwz r3, 0x4(r3)
/* 802C0F88 002B6D08  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C0F8C 002B6D0C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802C0F90 002B6D10  7D 89 03 A6 */	mtctr r12
/* 802C0F94 002B6D14  4E 80 04 21 */	bctrl
/* 802C0F98 002B6D18  3B FF 00 08 */	addi r31, r31, 0x8
/* 802C0F9C 002B6D1C  3B DE 00 01 */	addi r30, r30, 0x1
.L_802C0FA0:
/* 802C0FA0 002B6D20  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 802C0FA4 002B6D24  7C 1E 00 00 */	cmpw r30, r0
/* 802C0FA8 002B6D28  41 80 FF D4 */	blt .L_802C0F7C
/* 802C0FAC 002B6D2C  2C 1D 00 00 */	cmpwi r29, 0x0
/* 802C0FB0 002B6D30  41 82 00 1C */	beq .L_802C0FCC
/* 802C0FB4 002B6D34  81 9D 00 00 */	lwz r12, 0x0(r29)
/* 802C0FB8 002B6D38  7F A3 EB 78 */	mr r3, r29
/* 802C0FBC 002B6D3C  38 80 00 01 */	li r4, 0x1
/* 802C0FC0 002B6D40  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802C0FC4 002B6D44  7D 89 03 A6 */	mtctr r12
/* 802C0FC8 002B6D48  4E 80 04 21 */	bctrl
.L_802C0FCC:
/* 802C0FCC 002B6D4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C0FD0 002B6D50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C0FD4 002B6D54  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802C0FD8 002B6D58  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802C0FDC 002B6D5C  7C 08 03 A6 */	mtlr r0
/* 802C0FE0 002B6D60  38 21 00 20 */	addi r1, r1, 0x20
/* 802C0FE4 002B6D64  4E 80 00 20 */	blr
.endfn fn_802C0F54
