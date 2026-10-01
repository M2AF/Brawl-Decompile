.include "macros.inc"
.file "auto_fn_802A9BBC_text"

# 0x80006E2C..0x80006E34 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006E2C | size: 0x8
.obj "@etb_80006E2C", local
.hidden "@etb_80006E2C"
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
.endobj "@etb_80006E2C"

# 0x8000A030..0x8000A03C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A030 | size: 0xC
.obj "@eti_8000A030", local
.hidden "@eti_8000A030"
	.4byte fn_802A9BBC
	.4byte 0x000000CC
	.4byte "@etb_80006E2C"
.endobj "@eti_8000A030"

# 0x802A9BBC..0x802A9C88 | size: 0xCC
.text
.balign 4

# .text:0x0 | 0x802A9BBC | size: 0xCC
.fn fn_802A9BBC, global
/* 802A9BBC 0029F93C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802A9BC0 0029F940  7C 08 02 A6 */	mflr r0
/* 802A9BC4 0029F944  3C 80 80 2B */	lis r4, fn_802A9D54@ha
/* 802A9BC8 0029F948  3C A0 80 2B */	lis r5, fn_802A8984@ha
/* 802A9BCC 0029F94C  90 01 00 44 */	stw r0, 0x44(r1)
/* 802A9BD0 0029F950  3D 00 80 2B */	lis r8, fn_802A8A14@ha
/* 802A9BD4 0029F954  3C E0 80 2B */	lis r7, fn_802A8A5C@ha
/* 802A9BD8 0029F958  38 84 9D 54 */	addi r4, r4, fn_802A9D54@l
/* 802A9BDC 0029F95C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802A9BE0 0029F960  3B E0 00 01 */	li r31, 0x1
/* 802A9BE4 0029F964  38 A5 89 84 */	addi r5, r5, fn_802A8984@l
/* 802A9BE8 0029F968  39 08 8A 14 */	addi r8, r8, fn_802A8A14@l
/* 802A9BEC 0029F96C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802A9BF0 0029F970  38 E7 8A 5C */	addi r7, r7, fn_802A8A5C@l
/* 802A9BF4 0029F974  7C 7E 1B 78 */	mr r30, r3
/* 802A9BF8 0029F978  38 C0 00 0D */	li r6, 0xd
/* 802A9BFC 0029F97C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802A9C00 0029F980  38 81 00 1C */	addi r4, r1, 0x1c
/* 802A9C04 0029F984  90 A1 00 20 */	stw r5, 0x20(r1)
/* 802A9C08 0029F988  38 A0 00 03 */	li r5, 0x3
/* 802A9C0C 0029F98C  91 01 00 24 */	stw r8, 0x24(r1)
/* 802A9C10 0029F990  90 E1 00 28 */	stw r7, 0x28(r1)
/* 802A9C14 0029F994  9B E1 00 2C */	stb r31, 0x2c(r1)
/* 802A9C18 0029F998  9B E1 00 2D */	stb r31, 0x2d(r1)
/* 802A9C1C 0029F99C  48 02 24 D1 */	bl fn_802CC0EC
/* 802A9C20 0029F9A0  3C 60 80 2B */	lis r3, fn_802A9E74@ha
/* 802A9C24 0029F9A4  3C 80 80 2B */	lis r4, fn_802A83F8@ha
/* 802A9C28 0029F9A8  3D 00 80 2A */	lis r8, fn_802A7F30@ha
/* 802A9C2C 0029F9AC  3C E0 80 2A */	lis r7, fn_802A78F8@ha
/* 802A9C30 0029F9B0  38 63 9E 74 */	addi r3, r3, fn_802A9E74@l
/* 802A9C34 0029F9B4  38 84 83 F8 */	addi r4, r4, fn_802A83F8@l
/* 802A9C38 0029F9B8  39 08 7F 30 */	addi r8, r8, fn_802A7F30@l
/* 802A9C3C 0029F9BC  38 E7 78 F8 */	addi r7, r7, fn_802A78F8@l
/* 802A9C40 0029F9C0  38 00 00 00 */	li r0, 0x0
/* 802A9C44 0029F9C4  90 61 00 08 */	stw r3, 0x8(r1)
/* 802A9C48 0029F9C8  7F C3 F3 78 */	mr r3, r30
/* 802A9C4C 0029F9CC  38 A0 00 0D */	li r5, 0xd
/* 802A9C50 0029F9D0  90 81 00 0C */	stw r4, 0xc(r1)
/* 802A9C54 0029F9D4  38 81 00 08 */	addi r4, r1, 0x8
/* 802A9C58 0029F9D8  38 C0 00 03 */	li r6, 0x3
/* 802A9C5C 0029F9DC  91 01 00 10 */	stw r8, 0x10(r1)
/* 802A9C60 0029F9E0  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802A9C64 0029F9E4  98 01 00 18 */	stb r0, 0x18(r1)
/* 802A9C68 0029F9E8  9B E1 00 19 */	stb r31, 0x19(r1)
/* 802A9C6C 0029F9EC  48 02 24 81 */	bl fn_802CC0EC
/* 802A9C70 0029F9F0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802A9C74 0029F9F4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802A9C78 0029F9F8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802A9C7C 0029F9FC  7C 08 03 A6 */	mtlr r0
/* 802A9C80 0029FA00  38 21 00 40 */	addi r1, r1, 0x40
/* 802A9C84 0029FA04  4E 80 00 20 */	blr
.endfn fn_802A9BBC
