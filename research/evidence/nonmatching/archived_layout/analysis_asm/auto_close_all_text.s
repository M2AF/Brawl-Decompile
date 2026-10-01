.include "macros.inc"
.file "auto_close_all_text"

# 0x8000958C..0x80009594 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000958C | size: 0x8
.obj "@etb_8000958C", local
.hidden "@etb_8000958C"
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
.endobj "@etb_8000958C"

# 0x8000C598..0x8000C5A4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C598 | size: 0xC
.obj "@eti_8000C598", local
.hidden "@eti_8000C598"
	.4byte __close_all
	.4byte 0x000000A4
	.4byte "@etb_8000958C"
.endobj "@eti_8000C598"

# 0x803F355C..0x803F3600 | size: 0xA4
.text
.balign 4

# .text:0x0 | 0x803F355C | size: 0xA4
.fn __close_all, global
/* 803F355C 003E92DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F3560 003E92E0  7C 08 02 A6 */	mflr r0
/* 803F3564 003E92E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F3568 003E92E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F356C 003E92EC  3B E0 00 00 */	li r31, 0x0
/* 803F3570 003E92F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803F3574 003E92F4  3B C0 00 03 */	li r30, 0x3
/* 803F3578 003E92F8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803F357C 003E92FC  3F A0 80 49 */	lis r29, __files@ha
/* 803F3580 003E9300  3B BD 3E 60 */	addi r29, r29, __files@l
/* 803F3584 003E9304  48 00 00 58 */	b .L_803F35DC
.L_803F3588:
/* 803F3588 003E9308  80 1D 00 04 */	lwz r0, 0x4(r29)
/* 803F358C 003E930C  54 00 57 7F */	extrwi. r0, r0, 3, 7
/* 803F3590 003E9310  41 82 00 0C */	beq .L_803F359C
/* 803F3594 003E9314  7F A3 EB 78 */	mr r3, r29
/* 803F3598 003E9318  48 00 23 01 */	bl fn_803F5898
.L_803F359C:
/* 803F359C 003E931C  7F A3 EB 78 */	mr r3, r29
/* 803F35A0 003E9320  83 BD 00 4C */	lwz r29, 0x4c(r29)
/* 803F35A4 003E9324  88 03 00 0C */	lbz r0, 0xc(r3)
/* 803F35A8 003E9328  2C 00 00 00 */	cmpwi r0, 0x0
/* 803F35AC 003E932C  41 82 00 0C */	beq .L_803F35B8
/* 803F35B0 003E9330  4B FF FE 7D */	bl fn_803F342C
/* 803F35B4 003E9334  48 00 00 28 */	b .L_803F35DC
.L_803F35B8:
/* 803F35B8 003E9338  80 03 00 04 */	lwz r0, 0x4(r3)
/* 803F35BC 003E933C  53 C0 B1 D2 */	rlwimi r0, r30, 22, 7, 9
/* 803F35C0 003E9340  2C 1D 00 00 */	cmpwi r29, 0x0
/* 803F35C4 003E9344  90 03 00 04 */	stw r0, 0x4(r3)
/* 803F35C8 003E9348  41 82 00 14 */	beq .L_803F35DC
/* 803F35CC 003E934C  88 1D 00 0C */	lbz r0, 0xc(r29)
/* 803F35D0 003E9350  2C 00 00 00 */	cmpwi r0, 0x0
/* 803F35D4 003E9354  41 82 00 08 */	beq .L_803F35DC
/* 803F35D8 003E9358  93 E3 00 4C */	stw r31, 0x4c(r3)
.L_803F35DC:
/* 803F35DC 003E935C  2C 1D 00 00 */	cmpwi r29, 0x0
/* 803F35E0 003E9360  40 82 FF A8 */	bne .L_803F3588
/* 803F35E4 003E9364  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F35E8 003E9368  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F35EC 003E936C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803F35F0 003E9370  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803F35F4 003E9374  7C 08 03 A6 */	mtlr r0
/* 803F35F8 003E9378  38 21 00 20 */	addi r1, r1, 0x20
/* 803F35FC 003E937C  4E 80 00 20 */	blr
.endfn __close_all
