.include "macros.inc"
.file "auto_fn_802A3E74_text"

# 0x80006A60..0x80006A68 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006A60 | size: 0x8
.obj "@etb_80006A60", local
.hidden "@etb_80006A60"
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
.endobj "@etb_80006A60"

# 0x80009DF0..0x80009DFC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009DF0 | size: 0xC
.obj "@eti_80009DF0", local
.hidden "@eti_80009DF0"
	.4byte fn_802A3E74
	.4byte 0x00000094
	.4byte "@etb_80006A60"
.endobj "@eti_80009DF0"

# 0x802A3E74..0x802A3F08 | size: 0x94
.text
.balign 4

# .text:0x0 | 0x802A3E74 | size: 0x94
.fn fn_802A3E74, global
/* 802A3E74 00299BF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A3E78 00299BF8  7C 08 02 A6 */	mflr r0
/* 802A3E7C 00299BFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A3E80 00299C00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A3E84 00299C04  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A3E88 00299C08  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802A3E8C 00299C0C  7C 7D 1B 78 */	mr r29, r3
/* 802A3E90 00299C10  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802A3E94 00299C14  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 802A3E98 00299C18  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802A3E9C 00299C1C  7F DF 02 14 */	add r30, r31, r0
/* 802A3EA0 00299C20  48 00 00 24 */	b .L_802A3EC4
.L_802A3EA4:
/* 802A3EA4 00299C24  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 802A3EA8 00299C28  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A3EAC 00299C2C  41 82 00 14 */	beq .L_802A3EC0
/* 802A3EB0 00299C30  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A3EB4 00299C34  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802A3EB8 00299C38  7D 89 03 A6 */	mtctr r12
/* 802A3EBC 00299C3C  4E 80 04 21 */	bctrl
.L_802A3EC0:
/* 802A3EC0 00299C40  3B FF 00 0C */	addi r31, r31, 0xc
.L_802A3EC4:
/* 802A3EC4 00299C44  7C 1F F0 40 */	cmplw r31, r30
/* 802A3EC8 00299C48  40 82 FF DC */	bne .L_802A3EA4
/* 802A3ECC 00299C4C  2C 1D 00 00 */	cmpwi r29, 0x0
/* 802A3ED0 00299C50  41 82 00 1C */	beq .L_802A3EEC
/* 802A3ED4 00299C54  81 9D 00 00 */	lwz r12, 0x0(r29)
/* 802A3ED8 00299C58  7F A3 EB 78 */	mr r3, r29
/* 802A3EDC 00299C5C  38 80 00 01 */	li r4, 0x1
/* 802A3EE0 00299C60  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802A3EE4 00299C64  7D 89 03 A6 */	mtctr r12
/* 802A3EE8 00299C68  4E 80 04 21 */	bctrl
.L_802A3EEC:
/* 802A3EEC 00299C6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A3EF0 00299C70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A3EF4 00299C74  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A3EF8 00299C78  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802A3EFC 00299C7C  7C 08 03 A6 */	mtlr r0
/* 802A3F00 00299C80  38 21 00 20 */	addi r1, r1, 0x20
/* 802A3F04 00299C84  4E 80 00 20 */	blr
.endfn fn_802A3E74
