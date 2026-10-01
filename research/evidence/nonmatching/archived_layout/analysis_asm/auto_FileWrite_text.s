.include "macros.inc"
.file "auto_FileWrite_text"

# 0x80009674..0x8000967C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009674 | size: 0x8
.obj "@etb_80009674", local
.hidden "@etb_80009674"
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
.endobj "@etb_80009674"

# 0x8000C6F4..0x8000C700 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C6F4 | size: 0xC
.obj "@eti_8000C6F4", local
.hidden "@eti_8000C6F4"
	.4byte __FileWrite
	.4byte 0x00000058
	.4byte "@etb_80009674"
.endobj "@eti_8000C6F4"

# 0x803F8558..0x803F85B0 | size: 0x58
.text
.balign 4

# .text:0x0 | 0x803F8558 | size: 0x58
.fn __FileWrite, global
/* 803F8558 003EE2D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F855C 003EE2DC  7C 08 02 A6 */	mflr r0
/* 803F8560 003EE2E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F8564 003EE2E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F8568 003EE2E8  7C BF 2B 78 */	mr r31, r5
/* 803F856C 003EE2EC  93 C1 00 08 */	stw r30, 0x8(r1)
/* 803F8570 003EE2F0  7C 7E 1B 78 */	mr r30, r3
/* 803F8574 003EE2F4  7C 83 23 78 */	mr r3, r4
/* 803F8578 003EE2F8  38 80 00 01 */	li r4, 0x1
/* 803F857C 003EE2FC  7F C6 F3 78 */	mr r6, r30
/* 803F8580 003EE300  4B FF D0 11 */	bl __fwrite
/* 803F8584 003EE304  7C 1F 18 40 */	cmplw r31, r3
/* 803F8588 003EE308  40 82 00 08 */	bne .L_803F8590
/* 803F858C 003EE30C  48 00 00 08 */	b .L_803F8594
.L_803F8590:
/* 803F8590 003EE310  3B C0 00 00 */	li r30, 0x0
.L_803F8594:
/* 803F8594 003EE314  7F C3 F3 78 */	mr r3, r30
/* 803F8598 003EE318  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F859C 003EE31C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803F85A0 003EE320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F85A4 003EE324  7C 08 03 A6 */	mtlr r0
/* 803F85A8 003EE328  38 21 00 10 */	addi r1, r1, 0x10
/* 803F85AC 003EE32C  4E 80 00 20 */	blr
.endfn __FileWrite
