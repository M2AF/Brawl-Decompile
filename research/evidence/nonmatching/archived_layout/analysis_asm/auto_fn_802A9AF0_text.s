.include "macros.inc"
.file "auto_fn_802A9AF0_text"

# 0x80006E24..0x80006E2C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006E24 | size: 0x8
.obj "@etb_80006E24", local
.hidden "@etb_80006E24"
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
.endobj "@etb_80006E24"

# 0x8000A024..0x8000A030 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A024 | size: 0xC
.obj "@eti_8000A024", local
.hidden "@eti_8000A024"
	.4byte fn_802A9AF0
	.4byte 0x000000CC
	.4byte "@etb_80006E24"
.endobj "@eti_8000A024"

# 0x802A9AF0..0x802A9BBC | size: 0xCC
.text
.balign 4

# .text:0x0 | 0x802A9AF0 | size: 0xCC
.fn fn_802A9AF0, global
/* 802A9AF0 0029F870  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802A9AF4 0029F874  7C 08 02 A6 */	mflr r0
/* 802A9AF8 0029F878  3C 80 80 2B */	lis r4, fn_802A9D54@ha
/* 802A9AFC 0029F87C  3C A0 80 2B */	lis r5, fn_802A8984@ha
/* 802A9B00 0029F880  90 01 00 44 */	stw r0, 0x44(r1)
/* 802A9B04 0029F884  3D 00 80 2B */	lis r8, fn_802A8A14@ha
/* 802A9B08 0029F888  3C E0 80 2B */	lis r7, fn_802A8A5C@ha
/* 802A9B0C 0029F88C  38 84 9D 54 */	addi r4, r4, fn_802A9D54@l
/* 802A9B10 0029F890  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802A9B14 0029F894  3B E0 00 01 */	li r31, 0x1
/* 802A9B18 0029F898  38 A5 89 84 */	addi r5, r5, fn_802A8984@l
/* 802A9B1C 0029F89C  39 08 8A 14 */	addi r8, r8, fn_802A8A14@l
/* 802A9B20 0029F8A0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802A9B24 0029F8A4  38 E7 8A 5C */	addi r7, r7, fn_802A8A5C@l
/* 802A9B28 0029F8A8  7C 7E 1B 78 */	mr r30, r3
/* 802A9B2C 0029F8AC  38 C0 00 01 */	li r6, 0x1
/* 802A9B30 0029F8B0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802A9B34 0029F8B4  38 81 00 1C */	addi r4, r1, 0x1c
/* 802A9B38 0029F8B8  90 A1 00 20 */	stw r5, 0x20(r1)
/* 802A9B3C 0029F8BC  38 A0 00 03 */	li r5, 0x3
/* 802A9B40 0029F8C0  91 01 00 24 */	stw r8, 0x24(r1)
/* 802A9B44 0029F8C4  90 E1 00 28 */	stw r7, 0x28(r1)
/* 802A9B48 0029F8C8  9B E1 00 2C */	stb r31, 0x2c(r1)
/* 802A9B4C 0029F8CC  9B E1 00 2D */	stb r31, 0x2d(r1)
/* 802A9B50 0029F8D0  48 02 25 9D */	bl fn_802CC0EC
/* 802A9B54 0029F8D4  3C 60 80 2B */	lis r3, fn_802A9E74@ha
/* 802A9B58 0029F8D8  3C 80 80 2B */	lis r4, fn_802A83F8@ha
/* 802A9B5C 0029F8DC  3D 00 80 2A */	lis r8, fn_802A7F30@ha
/* 802A9B60 0029F8E0  3C E0 80 2A */	lis r7, fn_802A78F8@ha
/* 802A9B64 0029F8E4  38 63 9E 74 */	addi r3, r3, fn_802A9E74@l
/* 802A9B68 0029F8E8  38 84 83 F8 */	addi r4, r4, fn_802A83F8@l
/* 802A9B6C 0029F8EC  39 08 7F 30 */	addi r8, r8, fn_802A7F30@l
/* 802A9B70 0029F8F0  38 E7 78 F8 */	addi r7, r7, fn_802A78F8@l
/* 802A9B74 0029F8F4  38 00 00 00 */	li r0, 0x0
/* 802A9B78 0029F8F8  90 61 00 08 */	stw r3, 0x8(r1)
/* 802A9B7C 0029F8FC  7F C3 F3 78 */	mr r3, r30
/* 802A9B80 0029F900  38 A0 00 01 */	li r5, 0x1
/* 802A9B84 0029F904  90 81 00 0C */	stw r4, 0xc(r1)
/* 802A9B88 0029F908  38 81 00 08 */	addi r4, r1, 0x8
/* 802A9B8C 0029F90C  38 C0 00 03 */	li r6, 0x3
/* 802A9B90 0029F910  91 01 00 10 */	stw r8, 0x10(r1)
/* 802A9B94 0029F914  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802A9B98 0029F918  98 01 00 18 */	stb r0, 0x18(r1)
/* 802A9B9C 0029F91C  9B E1 00 19 */	stb r31, 0x19(r1)
/* 802A9BA0 0029F920  48 02 25 4D */	bl fn_802CC0EC
/* 802A9BA4 0029F924  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802A9BA8 0029F928  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802A9BAC 0029F92C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802A9BB0 0029F930  7C 08 03 A6 */	mtlr r0
/* 802A9BB4 0029F934  38 21 00 40 */	addi r1, r1, 0x40
/* 802A9BB8 0029F938  4E 80 00 20 */	blr
.endfn fn_802A9AF0
