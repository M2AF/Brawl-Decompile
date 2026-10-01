.include "macros.inc"
.file "auto_fn_803F0E84_text"

# 0x80009514..0x8000951C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009514 | size: 0x8
.obj "@etb_80009514", local
.hidden "@etb_80009514"
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
.endobj "@etb_80009514"

# 0x8000C508..0x8000C514 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C508 | size: 0xC
.obj "@eti_8000C508", local
.hidden "@eti_8000C508"
	.4byte fn_803F0E84
	.4byte 0x00000080
	.4byte "@etb_80009514"
.endobj "@eti_8000C508"

# 0x803F0E84..0x803F0F04 | size: 0x80
.text
.balign 4

# .text:0x0 | 0x803F0E84 | size: 0x80
.fn fn_803F0E84, global
/* 803F0E84 003E6C04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F0E88 003E6C08  7C 08 02 A6 */	mflr r0
/* 803F0E8C 003E6C0C  2C 03 00 00 */	cmpwi r3, 0x0
/* 803F0E90 003E6C10  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F0E94 003E6C14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F0E98 003E6C18  7C 9F 23 78 */	mr r31, r4
/* 803F0E9C 003E6C1C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803F0EA0 003E6C20  7C 7E 1B 78 */	mr r30, r3
/* 803F0EA4 003E6C24  40 82 00 2C */	bne .L_803F0ED0
/* 803F0EA8 003E6C28  3C 80 80 49 */	lis r4, lbl_80493D38@ha
/* 803F0EAC 003E6C2C  3C 60 80 42 */	lis r3, lbl_8041F418@ha
/* 803F0EB0 003E6C30  38 84 3D 38 */	addi r4, r4, lbl_80493D38@l
/* 803F0EB4 003E6C34  3C A0 80 3F */	lis r5, fn_803F0F04@ha
/* 803F0EB8 003E6C38  38 63 F4 18 */	addi r3, r3, lbl_8041F418@l
/* 803F0EBC 003E6C3C  90 81 00 08 */	stw r4, 0x8(r1)
/* 803F0EC0 003E6C40  38 63 00 04 */	addi r3, r3, 0x4
/* 803F0EC4 003E6C44  38 81 00 08 */	addi r4, r1, 0x8
/* 803F0EC8 003E6C48  38 A5 0F 04 */	addi r5, r5, fn_803F0F04@l
/* 803F0ECC 003E6C4C  48 00 1F 81 */	bl fn_803F2E4C
.L_803F0ED0:
/* 803F0ED0 003E6C50  7C 7E F8 2E */	lwzx r3, r30, r31
/* 803F0ED4 003E6C54  83 C3 00 00 */	lwz r30, 0x0(r3)
/* 803F0ED8 003E6C58  2C 1E 00 00 */	cmpwi r30, 0x0
/* 803F0EDC 003E6C5C  40 82 00 0C */	bne .L_803F0EE8
/* 803F0EE0 003E6C60  38 6D BB 10 */	li r3, lbl_8059FF30@sda21
/* 803F0EE4 003E6C64  48 00 00 08 */	b .L_803F0EEC
.L_803F0EE8:
/* 803F0EE8 003E6C68  7F C3 F3 78 */	mr r3, r30
.L_803F0EEC:
/* 803F0EEC 003E6C6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F0EF0 003E6C70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F0EF4 003E6C74  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803F0EF8 003E6C78  7C 08 03 A6 */	mtlr r0
/* 803F0EFC 003E6C7C  38 21 00 20 */	addi r1, r1, 0x20
/* 803F0F00 003E6C80  4E 80 00 20 */	blr
.endfn fn_803F0E84
