.include "macros.inc"
.file "auto_fn_802A0E7C_text"

# 0x8000681C..0x80006824 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000681C | size: 0x8
.obj "@etb_8000681C", local
.hidden "@etb_8000681C"
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
.endobj "@etb_8000681C"

# 0x80009C10..0x80009C1C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009C10 | size: 0xC
.obj "@eti_80009C10", local
.hidden "@eti_80009C10"
	.4byte fn_802A0E7C
	.4byte 0x00000090
	.4byte "@etb_8000681C"
.endobj "@eti_80009C10"

# 0x802A0E7C..0x802A0F0C | size: 0x90
.text
.balign 4

# .text:0x0 | 0x802A0E7C | size: 0x90
.fn fn_802A0E7C, global
/* 802A0E7C 00296BFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A0E80 00296C00  7C 08 02 A6 */	mflr r0
/* 802A0E84 00296C04  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A0E88 00296C08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A0E8C 00296C0C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A0E90 00296C10  3B C0 00 00 */	li r30, 0x0
/* 802A0E94 00296C14  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802A0E98 00296C18  7C 7D 1B 78 */	mr r29, r3
/* 802A0E9C 00296C1C  7F BF EB 78 */	mr r31, r29
/* 802A0EA0 00296C20  48 00 00 24 */	b .L_802A0EC4
.L_802A0EA4:
/* 802A0EA4 00296C24  80 7D 00 08 */	lwz r3, 0x8(r29)
/* 802A0EA8 00296C28  A0 9F 00 12 */	lhz r4, 0x12(r31)
/* 802A0EAC 00296C2C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A0EB0 00296C30  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802A0EB4 00296C34  7D 89 03 A6 */	mtctr r12
/* 802A0EB8 00296C38  4E 80 04 21 */	bctrl
/* 802A0EBC 00296C3C  3B FF 00 04 */	addi r31, r31, 0x4
/* 802A0EC0 00296C40  3B DE 00 01 */	addi r30, r30, 0x1
.L_802A0EC4:
/* 802A0EC4 00296C44  88 1D 00 31 */	lbz r0, 0x31(r29)
/* 802A0EC8 00296C48  7C 1E 00 00 */	cmpw r30, r0
/* 802A0ECC 00296C4C  41 80 FF D8 */	blt .L_802A0EA4
/* 802A0ED0 00296C50  2C 1D 00 00 */	cmpwi r29, 0x0
/* 802A0ED4 00296C54  41 82 00 1C */	beq .L_802A0EF0
/* 802A0ED8 00296C58  81 9D 00 00 */	lwz r12, 0x0(r29)
/* 802A0EDC 00296C5C  7F A3 EB 78 */	mr r3, r29
/* 802A0EE0 00296C60  38 80 00 01 */	li r4, 0x1
/* 802A0EE4 00296C64  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802A0EE8 00296C68  7D 89 03 A6 */	mtctr r12
/* 802A0EEC 00296C6C  4E 80 04 21 */	bctrl
.L_802A0EF0:
/* 802A0EF0 00296C70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A0EF4 00296C74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A0EF8 00296C78  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A0EFC 00296C7C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802A0F00 00296C80  7C 08 03 A6 */	mtlr r0
/* 802A0F04 00296C84  38 21 00 20 */	addi r1, r1, 0x20
/* 802A0F08 00296C88  4E 80 00 20 */	blr
.endfn fn_802A0E7C
