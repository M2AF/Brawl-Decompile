.include "macros.inc"
.file "auto_fn_80326124_text"

# 0x80008E24..0x80008E2C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008E24 | size: 0x8
.obj "@etb_80008E24", local
.hidden "@etb_80008E24"
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
.endobj "@etb_80008E24"

# 0x8000BDDC..0x8000BDE8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BDDC | size: 0xC
.obj "@eti_8000BDDC", local
.hidden "@eti_8000BDDC"
	.4byte fn_80326124
	.4byte 0x000000D0
	.4byte "@etb_80008E24"
.endobj "@eti_8000BDDC"

# 0x80326124..0x803261F4 | size: 0xD0
.text
.balign 4

# .text:0x0 | 0x80326124 | size: 0xD0
.fn fn_80326124, global
/* 80326124 0031BEA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80326128 0031BEA8  7C 08 02 A6 */	mflr r0
/* 8032612C 0031BEAC  2C 03 00 00 */	cmpwi r3, 0x0
/* 80326130 0031BEB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80326134 0031BEB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80326138 0031BEB8  7C 9F 23 78 */	mr r31, r4
/* 8032613C 0031BEBC  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80326140 0031BEC0  7C 7E 1B 78 */	mr r30, r3
/* 80326144 0031BEC4  41 82 00 94 */	beq .L_803261D8
/* 80326148 0031BEC8  80 03 00 34 */	lwz r0, 0x34(r3)
/* 8032614C 0031BECC  3C 80 80 49 */	lis r4, lbl_80488CF4@ha
/* 80326150 0031BED0  38 84 8C F4 */	addi r4, r4, lbl_80488CF4@l
/* 80326154 0031BED4  2C 00 00 00 */	cmpwi r0, 0x0
/* 80326158 0031BED8  90 83 00 00 */	stw r4, 0x0(r3)
/* 8032615C 0031BEDC  41 82 00 1C */	beq .L_80326178
/* 80326160 0031BEE0  7C 03 03 78 */	mr r3, r0
/* 80326164 0031BEE4  38 80 00 01 */	li r4, 0x1
/* 80326168 0031BEE8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8032616C 0031BEEC  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 80326170 0031BEF0  7D 89 03 A6 */	mtctr r12
/* 80326174 0031BEF4  4E 80 04 21 */	bctrl
.L_80326178:
/* 80326178 0031BEF8  34 1E 00 28 */	addic. r0, r30, 0x28
/* 8032617C 0031BEFC  41 82 00 28 */	beq .L_803261A4
/* 80326180 0031BF00  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 80326184 0031BF04  54 00 00 01 */	clrrwi. r0, r0, 31
/* 80326188 0031BF08  40 82 00 1C */	bne .L_803261A4
/* 8032618C 0031BF0C  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 80326190 0031BF10  38 C0 00 15 */	li r6, 0x15
/* 80326194 0031BF14  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 80326198 0031BF18  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 8032619C 0031BF1C  54 05 30 32 */	slwi r5, r0, 6
/* 803261A0 0031BF20  4B F5 89 1D */	bl fn_8027EABC
.L_803261A4:
/* 803261A4 0031BF24  7F C3 F3 78 */	mr r3, r30
/* 803261A8 0031BF28  38 80 00 00 */	li r4, 0x0
/* 803261AC 0031BF2C  4B FC AA 41 */	bl dtor_802F0BEC
/* 803261B0 0031BF30  2C 1F 00 00 */	cmpwi r31, 0x0
/* 803261B4 0031BF34  40 81 00 24 */	ble .L_803261D8
/* 803261B8 0031BF38  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 803261BC 0031BF3C  7F C4 F3 78 */	mr r4, r30
/* 803261C0 0031BF40  A0 BE 00 04 */	lhz r5, 0x4(r30)
/* 803261C4 0031BF44  38 C0 00 13 */	li r6, 0x13
/* 803261C8 0031BF48  81 83 00 00 */	lwz r12, 0x0(r3)
/* 803261CC 0031BF4C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 803261D0 0031BF50  7D 89 03 A6 */	mtctr r12
/* 803261D4 0031BF54  4E 80 04 21 */	bctrl
.L_803261D8:
/* 803261D8 0031BF58  7F C3 F3 78 */	mr r3, r30
/* 803261DC 0031BF5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803261E0 0031BF60  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803261E4 0031BF64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803261E8 0031BF68  7C 08 03 A6 */	mtlr r0
/* 803261EC 0031BF6C  38 21 00 10 */	addi r1, r1, 0x10
/* 803261F0 0031BF70  4E 80 00 20 */	blr
.endfn fn_80326124
