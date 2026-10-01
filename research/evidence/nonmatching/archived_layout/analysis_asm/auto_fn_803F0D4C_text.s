.include "macros.inc"
.file "auto_fn_803F0D4C_text"

# 0x8000950C..0x80009514 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000950C | size: 0x8
.obj "@etb_8000950C", local
.hidden "@etb_8000950C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r26-r31
 */
	.4byte 0x30080000
	.4byte 0x00000000
.endobj "@etb_8000950C"

# 0x8000C4FC..0x8000C508 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C4FC | size: 0xC
.obj "@eti_8000C4FC", local
.hidden "@eti_8000C4FC"
	.4byte fn_803F0D4C
	.4byte 0x00000080
	.4byte "@etb_8000950C"
.endobj "@eti_8000C4FC"

# 0x803F0D4C..0x803F0DCC | size: 0x80
.text
.balign 4

# .text:0x0 | 0x803F0D4C | size: 0x80
.fn fn_803F0D4C, global
/* 803F0D4C 003E6ACC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F0D50 003E6AD0  7C 08 02 A6 */	mflr r0
/* 803F0D54 003E6AD4  2C 03 00 00 */	cmpwi r3, 0x0
/* 803F0D58 003E6AD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F0D5C 003E6ADC  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 803F0D60 003E6AE0  7C 7A 1B 78 */	mr r26, r3
/* 803F0D64 003E6AE4  7C 9B 23 78 */	mr r27, r4
/* 803F0D68 003E6AE8  41 82 00 50 */	beq .L_803F0DB8
/* 803F0D6C 003E6AEC  2C 04 00 00 */	cmpwi r4, 0x0
/* 803F0D70 003E6AF0  41 82 00 40 */	beq .L_803F0DB0
/* 803F0D74 003E6AF4  83 A3 FF F0 */	lwz r29, -0x10(r3)
/* 803F0D78 003E6AF8  3B E0 00 00 */	li r31, 0x0
/* 803F0D7C 003E6AFC  83 C3 FF F4 */	lwz r30, -0xc(r3)
/* 803F0D80 003E6B00  7C 1D F1 D6 */	mullw r0, r29, r30
/* 803F0D84 003E6B04  7F 83 02 14 */	add r28, r3, r0
/* 803F0D88 003E6B08  48 00 00 20 */	b .L_803F0DA8
.L_803F0D8C:
/* 803F0D8C 003E6B0C  7F 9D E0 50 */	subf r28, r29, r28
/* 803F0D90 003E6B10  7F 6C DB 78 */	mr r12, r27
/* 803F0D94 003E6B14  7F 83 E3 78 */	mr r3, r28
/* 803F0D98 003E6B18  38 80 FF FF */	li r4, -0x1
/* 803F0D9C 003E6B1C  7D 89 03 A6 */	mtctr r12
/* 803F0DA0 003E6B20  4E 80 04 21 */	bctrl
/* 803F0DA4 003E6B24  3B FF 00 01 */	addi r31, r31, 0x1
.L_803F0DA8:
/* 803F0DA8 003E6B28  7C 1F F0 40 */	cmplw r31, r30
/* 803F0DAC 003E6B2C  41 80 FF E0 */	blt .L_803F0D8C
.L_803F0DB0:
/* 803F0DB0 003E6B30  38 7A FF F0 */	subi r3, r26, 0x10
/* 803F0DB4 003E6B34  4B C1 BB 29 */	bl fn_8000C8DC
.L_803F0DB8:
/* 803F0DB8 003E6B38  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 803F0DBC 003E6B3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F0DC0 003E6B40  7C 08 03 A6 */	mtlr r0
/* 803F0DC4 003E6B44  38 21 00 20 */	addi r1, r1, 0x20
/* 803F0DC8 003E6B48  4E 80 00 20 */	blr
.endfn fn_803F0D4C
