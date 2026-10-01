.include "macros.inc"
.file "auto_fn_802B85EC_text"

# 0x80007664..0x8000766C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007664 | size: 0x8
.obj "@etb_80007664", local
.hidden "@etb_80007664"
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
.endobj "@etb_80007664"

# 0x8000A5D0..0x8000A5DC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A5D0 | size: 0xC
.obj "@eti_8000A5D0", local
.hidden "@eti_8000A5D0"
	.4byte fn_802B85EC
	.4byte 0x000000CC
	.4byte "@etb_80007664"
.endobj "@eti_8000A5D0"

# 0x802B85EC..0x802B86B8 | size: 0xCC
.text
.balign 4

# .text:0x0 | 0x802B85EC | size: 0xCC
.fn fn_802B85EC, global
/* 802B85EC 002AE36C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802B85F0 002AE370  7C 08 02 A6 */	mflr r0
/* 802B85F4 002AE374  3C 80 80 2C */	lis r4, fn_802B86B8@ha
/* 802B85F8 002AE378  3C A0 80 2C */	lis r5, fn_802C1AB8@ha
/* 802B85FC 002AE37C  90 01 00 44 */	stw r0, 0x44(r1)
/* 802B8600 002AE380  3D 00 80 2C */	lis r8, fn_802C13D0@ha
/* 802B8604 002AE384  3C E0 80 2C */	lis r7, fn_802C1738@ha
/* 802B8608 002AE388  38 84 86 B8 */	addi r4, r4, fn_802B86B8@l
/* 802B860C 002AE38C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802B8610 002AE390  3B E0 00 01 */	li r31, 0x1
/* 802B8614 002AE394  38 A5 1A B8 */	addi r5, r5, fn_802C1AB8@l
/* 802B8618 002AE398  39 08 13 D0 */	addi r8, r8, fn_802C13D0@l
/* 802B861C 002AE39C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802B8620 002AE3A0  38 E7 17 38 */	addi r7, r7, fn_802C1738@l
/* 802B8624 002AE3A4  7C 7E 1B 78 */	mr r30, r3
/* 802B8628 002AE3A8  38 C0 FF FF */	li r6, -0x1
/* 802B862C 002AE3AC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802B8630 002AE3B0  38 81 00 1C */	addi r4, r1, 0x1c
/* 802B8634 002AE3B4  90 A1 00 20 */	stw r5, 0x20(r1)
/* 802B8638 002AE3B8  38 A0 00 0C */	li r5, 0xc
/* 802B863C 002AE3BC  91 01 00 24 */	stw r8, 0x24(r1)
/* 802B8640 002AE3C0  90 E1 00 28 */	stw r7, 0x28(r1)
/* 802B8644 002AE3C4  9B E1 00 2C */	stb r31, 0x2c(r1)
/* 802B8648 002AE3C8  9B E1 00 2D */	stb r31, 0x2d(r1)
/* 802B864C 002AE3CC  48 01 3A A1 */	bl fn_802CC0EC
/* 802B8650 002AE3D0  3C 60 80 2C */	lis r3, fn_802B873C@ha
/* 802B8654 002AE3D4  3C 80 80 2B */	lis r4, fn_802B0FE0@ha
/* 802B8658 002AE3D8  3D 00 80 2B */	lis r8, fn_802B1028@ha
/* 802B865C 002AE3DC  3C E0 80 2B */	lis r7, fn_802B1070@ha
/* 802B8660 002AE3E0  38 63 87 3C */	addi r3, r3, fn_802B873C@l
/* 802B8664 002AE3E4  38 84 0F E0 */	addi r4, r4, fn_802B0FE0@l
/* 802B8668 002AE3E8  39 08 10 28 */	addi r8, r8, fn_802B1028@l
/* 802B866C 002AE3EC  38 E7 10 70 */	addi r7, r7, fn_802B1070@l
/* 802B8670 002AE3F0  38 00 00 00 */	li r0, 0x0
/* 802B8674 002AE3F4  90 61 00 08 */	stw r3, 0x8(r1)
/* 802B8678 002AE3F8  7F C3 F3 78 */	mr r3, r30
/* 802B867C 002AE3FC  38 A0 FF FF */	li r5, -0x1
/* 802B8680 002AE400  90 81 00 0C */	stw r4, 0xc(r1)
/* 802B8684 002AE404  38 81 00 08 */	addi r4, r1, 0x8
/* 802B8688 002AE408  38 C0 00 0C */	li r6, 0xc
/* 802B868C 002AE40C  91 01 00 10 */	stw r8, 0x10(r1)
/* 802B8690 002AE410  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802B8694 002AE414  98 01 00 18 */	stb r0, 0x18(r1)
/* 802B8698 002AE418  9B E1 00 19 */	stb r31, 0x19(r1)
/* 802B869C 002AE41C  48 01 3A 51 */	bl fn_802CC0EC
/* 802B86A0 002AE420  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802B86A4 002AE424  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802B86A8 002AE428  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802B86AC 002AE42C  7C 08 03 A6 */	mtlr r0
/* 802B86B0 002AE430  38 21 00 40 */	addi r1, r1, 0x40
/* 802B86B4 002AE434  4E 80 00 20 */	blr
.endfn fn_802B85EC
