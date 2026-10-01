.include "macros.inc"
.file "auto_fn_803F85B0_text"

# 0x8000967C..0x80009684 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000967C | size: 0x8
.obj "@etb_8000967C", local
.hidden "@etb_8000967C"
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
.endobj "@etb_8000967C"

# 0x8000C700..0x8000C70C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C700 | size: 0xC
.obj "@eti_8000C700", local
.hidden "@eti_8000C700"
	.4byte fn_803F85B0
	.4byte 0x0000006C
	.4byte "@etb_8000967C"
.endobj "@eti_8000C700"

# 0x803F85B0..0x803F861C | size: 0x6C
.text
.balign 4

# .text:0x0 | 0x803F85B0 | size: 0x6C
.fn fn_803F85B0, global
/* 803F85B0 003EE330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F85B4 003EE334  7C 08 02 A6 */	mflr r0
/* 803F85B8 003EE338  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F85BC 003EE33C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F85C0 003EE340  93 C1 00 08 */	stw r30, 0x8(r1)
/* 803F85C4 003EE344  7C 7E 1B 78 */	mr r30, r3
/* 803F85C8 003EE348  80 C3 00 08 */	lwz r6, 0x8(r3)
/* 803F85CC 003EE34C  80 E3 00 04 */	lwz r7, 0x4(r3)
/* 803F85D0 003EE350  7C 06 2A 14 */	add r0, r6, r5
/* 803F85D4 003EE354  7C 00 38 40 */	cmplw r0, r7
/* 803F85D8 003EE358  7F E6 38 50 */	subf r31, r6, r7
/* 803F85DC 003EE35C  41 81 00 08 */	bgt .L_803F85E4
/* 803F85E0 003EE360  7C BF 2B 78 */	mr r31, r5
.L_803F85E4:
/* 803F85E4 003EE364  80 03 00 00 */	lwz r0, 0x0(r3)
/* 803F85E8 003EE368  7F E5 FB 78 */	mr r5, r31
/* 803F85EC 003EE36C  7C 60 32 14 */	add r3, r0, r6
/* 803F85F0 003EE370  4B C0 BD 49 */	bl memcpy
/* 803F85F4 003EE374  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 803F85F8 003EE378  38 60 00 01 */	li r3, 0x1
/* 803F85FC 003EE37C  7C 00 FA 14 */	add r0, r0, r31
/* 803F8600 003EE380  90 1E 00 08 */	stw r0, 0x8(r30)
/* 803F8604 003EE384  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F8608 003EE388  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803F860C 003EE38C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F8610 003EE390  7C 08 03 A6 */	mtlr r0
/* 803F8614 003EE394  38 21 00 10 */	addi r1, r1, 0x10
/* 803F8618 003EE398  4E 80 00 20 */	blr
.endfn fn_803F85B0
