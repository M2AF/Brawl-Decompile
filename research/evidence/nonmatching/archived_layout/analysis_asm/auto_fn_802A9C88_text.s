.include "macros.inc"
.file "auto_fn_802A9C88_text"

# 0x80006E34..0x80006E3C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006E34 | size: 0x8
.obj "@etb_80006E34", local
.hidden "@etb_80006E34"
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
.endobj "@etb_80006E34"

# 0x8000A03C..0x8000A048 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A03C | size: 0xC
.obj "@eti_8000A03C", local
.hidden "@eti_8000A03C"
	.4byte fn_802A9C88
	.4byte 0x000000CC
	.4byte "@etb_80006E34"
.endobj "@eti_8000A03C"

# 0x802A9C88..0x802A9D54 | size: 0xCC
.text
.balign 4

# .text:0x0 | 0x802A9C88 | size: 0xCC
.fn fn_802A9C88, global
/* 802A9C88 0029FA08  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802A9C8C 0029FA0C  7C 08 02 A6 */	mflr r0
/* 802A9C90 0029FA10  3C 80 80 2B */	lis r4, fn_802A9D54@ha
/* 802A9C94 0029FA14  3C A0 80 2B */	lis r5, fn_802A8984@ha
/* 802A9C98 0029FA18  90 01 00 44 */	stw r0, 0x44(r1)
/* 802A9C9C 0029FA1C  3D 00 80 2B */	lis r8, fn_802A8A14@ha
/* 802A9CA0 0029FA20  3C E0 80 2B */	lis r7, fn_802A8A5C@ha
/* 802A9CA4 0029FA24  38 84 9D 54 */	addi r4, r4, fn_802A9D54@l
/* 802A9CA8 0029FA28  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802A9CAC 0029FA2C  3B E0 00 01 */	li r31, 0x1
/* 802A9CB0 0029FA30  38 A5 89 84 */	addi r5, r5, fn_802A8984@l
/* 802A9CB4 0029FA34  39 08 8A 14 */	addi r8, r8, fn_802A8A14@l
/* 802A9CB8 0029FA38  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802A9CBC 0029FA3C  38 E7 8A 5C */	addi r7, r7, fn_802A8A5C@l
/* 802A9CC0 0029FA40  7C 7E 1B 78 */	mr r30, r3
/* 802A9CC4 0029FA44  38 C0 00 11 */	li r6, 0x11
/* 802A9CC8 0029FA48  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802A9CCC 0029FA4C  38 81 00 1C */	addi r4, r1, 0x1c
/* 802A9CD0 0029FA50  90 A1 00 20 */	stw r5, 0x20(r1)
/* 802A9CD4 0029FA54  38 A0 00 03 */	li r5, 0x3
/* 802A9CD8 0029FA58  91 01 00 24 */	stw r8, 0x24(r1)
/* 802A9CDC 0029FA5C  90 E1 00 28 */	stw r7, 0x28(r1)
/* 802A9CE0 0029FA60  9B E1 00 2C */	stb r31, 0x2c(r1)
/* 802A9CE4 0029FA64  9B E1 00 2D */	stb r31, 0x2d(r1)
/* 802A9CE8 0029FA68  48 02 24 05 */	bl fn_802CC0EC
/* 802A9CEC 0029FA6C  3C 60 80 2B */	lis r3, fn_802A9E74@ha
/* 802A9CF0 0029FA70  3C 80 80 2B */	lis r4, fn_802A83F8@ha
/* 802A9CF4 0029FA74  3D 00 80 2A */	lis r8, fn_802A7F30@ha
/* 802A9CF8 0029FA78  3C E0 80 2A */	lis r7, fn_802A78F8@ha
/* 802A9CFC 0029FA7C  38 63 9E 74 */	addi r3, r3, fn_802A9E74@l
/* 802A9D00 0029FA80  38 84 83 F8 */	addi r4, r4, fn_802A83F8@l
/* 802A9D04 0029FA84  39 08 7F 30 */	addi r8, r8, fn_802A7F30@l
/* 802A9D08 0029FA88  38 E7 78 F8 */	addi r7, r7, fn_802A78F8@l
/* 802A9D0C 0029FA8C  38 00 00 00 */	li r0, 0x0
/* 802A9D10 0029FA90  90 61 00 08 */	stw r3, 0x8(r1)
/* 802A9D14 0029FA94  7F C3 F3 78 */	mr r3, r30
/* 802A9D18 0029FA98  38 A0 00 11 */	li r5, 0x11
/* 802A9D1C 0029FA9C  90 81 00 0C */	stw r4, 0xc(r1)
/* 802A9D20 0029FAA0  38 81 00 08 */	addi r4, r1, 0x8
/* 802A9D24 0029FAA4  38 C0 00 03 */	li r6, 0x3
/* 802A9D28 0029FAA8  91 01 00 10 */	stw r8, 0x10(r1)
/* 802A9D2C 0029FAAC  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802A9D30 0029FAB0  98 01 00 18 */	stb r0, 0x18(r1)
/* 802A9D34 0029FAB4  9B E1 00 19 */	stb r31, 0x19(r1)
/* 802A9D38 0029FAB8  48 02 23 B5 */	bl fn_802CC0EC
/* 802A9D3C 0029FABC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802A9D40 0029FAC0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802A9D44 0029FAC4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802A9D48 0029FAC8  7C 08 03 A6 */	mtlr r0
/* 802A9D4C 0029FACC  38 21 00 40 */	addi r1, r1, 0x40
/* 802A9D50 0029FAD0  4E 80 00 20 */	blr
.endfn fn_802A9C88
