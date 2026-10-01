.include "macros.inc"
.file "auto_fn_802D5CBC_text"

# 0x800085D4..0x800085DC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800085D4 | size: 0x8
.obj "@etb_800085D4", local
.hidden "@etb_800085D4"
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
.endobj "@etb_800085D4"

# 0x8000B410..0x8000B41C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B410 | size: 0xC
.obj "@eti_8000B410", local
.hidden "@eti_8000B410"
	.4byte fn_802D5CBC
	.4byte 0x000000CC
	.4byte "@etb_800085D4"
.endobj "@eti_8000B410"

# 0x802D5CBC..0x802D5D88 | size: 0xCC
.text
.balign 4

# .text:0x0 | 0x802D5CBC | size: 0xCC
.fn fn_802D5CBC, global
/* 802D5CBC 002CBA3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D5CC0 002CBA40  7C 08 02 A6 */	mflr r0
/* 802D5CC4 002CBA44  3D 20 80 48 */	lis r9, lbl_804876E0@ha
/* 802D5CC8 002CBA48  3C 60 80 53 */	lis r3, lbl_805328C0@ha
/* 802D5CCC 002CBA4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D5CD0 002CBA50  39 29 76 E0 */	addi r9, r9, lbl_804876E0@l
/* 802D5CD4 002CBA54  38 00 00 0D */	li r0, 0xd
/* 802D5CD8 002CBA58  38 63 28 C0 */	addi r3, r3, lbl_805328C0@l
/* 802D5CDC 002CBA5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D5CE0 002CBA60  3F E0 80 41 */	lis r31, lbl_80410F40@ha
/* 802D5CE4 002CBA64  38 9F 0F 40 */	addi r4, r31, lbl_80410F40@l
/* 802D5CE8 002CBA68  38 A0 00 00 */	li r5, 0x0
/* 802D5CEC 002CBA6C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D5CF0 002CBA70  3B C0 00 00 */	li r30, 0x0
/* 802D5CF4 002CBA74  38 C0 00 30 */	li r6, 0x30
/* 802D5CF8 002CBA78  38 E0 00 00 */	li r7, 0x0
/* 802D5CFC 002CBA7C  81 4D AB A0 */	lwz r10, lbl_8059EFC0@sda21(r0)
/* 802D5D00 002CBA80  39 00 00 00 */	li r8, 0x0
/* 802D5D04 002CBA84  91 21 00 08 */	stw r9, 0x8(r1)
/* 802D5D08 002CBA88  90 01 00 0C */	stw r0, 0xc(r1)
/* 802D5D0C 002CBA8C  91 49 00 58 */	stw r10, 0x58(r9)
/* 802D5D10 002CBA90  91 49 00 6C */	stw r10, 0x6c(r9)
/* 802D5D14 002CBA94  39 20 00 00 */	li r9, 0x0
/* 802D5D18 002CBA98  39 40 00 00 */	li r10, 0x0
/* 802D5D1C 002CBA9C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802D5D20 002CBAA0  4B FA 6A E9 */	bl fn_8027C808
/* 802D5D24 002CBAA4  3C A0 80 41 */	lis r5, lbl_80410EDC@ha
/* 802D5D28 002CBAA8  38 9F 0F 40 */	addi r4, r31, lbl_80410F40@l
/* 802D5D2C 002CBAAC  38 A5 0E DC */	addi r5, r5, lbl_80410EDC@l
/* 802D5D30 002CBAB0  3C 60 80 53 */	lis r3, lbl_805328E4@ha
/* 802D5D34 002CBAB4  90 A1 00 08 */	stw r5, 0x8(r1)
/* 802D5D38 002CBAB8  38 00 00 05 */	li r0, 0x5
/* 802D5D3C 002CBABC  3C A0 80 53 */	lis r5, lbl_80532708@ha
/* 802D5D40 002CBAC0  3D 20 80 41 */	lis r9, lbl_80410DC0@ha
/* 802D5D44 002CBAC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 802D5D48 002CBAC8  38 63 28 E4 */	addi r3, r3, lbl_805328E4@l
/* 802D5D4C 002CBACC  38 84 00 13 */	addi r4, r4, 0x13
/* 802D5D50 002CBAD0  38 A5 27 08 */	addi r5, r5, lbl_80532708@l
/* 802D5D54 002CBAD4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802D5D58 002CBAD8  39 29 0D C0 */	addi r9, r9, lbl_80410DC0@l
/* 802D5D5C 002CBADC  38 C0 00 50 */	li r6, 0x50
/* 802D5D60 002CBAE0  38 E0 00 00 */	li r7, 0x0
/* 802D5D64 002CBAE4  39 00 00 00 */	li r8, 0x0
/* 802D5D68 002CBAE8  39 40 00 02 */	li r10, 0x2
/* 802D5D6C 002CBAEC  4B FA 6A 9D */	bl fn_8027C808
/* 802D5D70 002CBAF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D5D74 002CBAF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D5D78 002CBAF8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D5D7C 002CBAFC  7C 08 03 A6 */	mtlr r0
/* 802D5D80 002CBB00  38 21 00 20 */	addi r1, r1, 0x20
/* 802D5D84 002CBB04  4E 80 00 20 */	blr
.endfn fn_802D5CBC

# 0x80406694..0x80406698 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802D5CBC
