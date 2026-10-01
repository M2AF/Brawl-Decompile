.include "macros.inc"
.file "auto_fn_803F0BDC_text"

# 0x800094EC..0x80009504 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x800094EC | size: 0x18
.obj "@etb_800094EC", local
.hidden "@etb_800094EC"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 * 
 * PC actions:
 * PC=0000005C, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DESTROYLOCAL
 * Local: 0x8(SP)
 * Dtor: "dtor_803F0B20"
 * Has end bit
 */
	.4byte 0x20080000
	.4byte 0x0000005C
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte dtor_803F0B20
.endobj "@etb_800094EC"

# 0x8000C4E4..0x8000C4F0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C4E4 | size: 0xC
.obj "@eti_8000C4E4", local
.hidden "@eti_8000C4E4"
	.4byte fn_803F0BDC
	.4byte 0x000000F8
	.4byte "@etb_800094EC"
.endobj "@eti_8000C4E4"

# 0x803F0BDC..0x803F0CD4 | size: 0xF8
.text
.balign 4

# .text:0x0 | 0x803F0BDC | size: 0xF8
.fn fn_803F0BDC, global
/* 803F0BDC 003E695C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803F0BE0 003E6960  7C 08 02 A6 */	mflr r0
/* 803F0BE4 003E6964  90 01 00 34 */	stw r0, 0x34(r1)
/* 803F0BE8 003E6968  38 00 00 00 */	li r0, 0x0
/* 803F0BEC 003E696C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803F0BF0 003E6970  7C 7F 1B 78 */	mr r31, r3
/* 803F0BF4 003E6974  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803F0BF8 003E6978  7C FE 3B 78 */	mr r30, r7
/* 803F0BFC 003E697C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 803F0C00 003E6980  7C DD 33 78 */	mr r29, r6
/* 803F0C04 003E6984  93 81 00 20 */	stw r28, 0x20(r1)
/* 803F0C08 003E6988  7C 9C 23 78 */	mr r28, r4
/* 803F0C0C 003E698C  90 61 00 08 */	stw r3, 0x8(r1)
/* 803F0C10 003E6990  90 C1 00 0C */	stw r6, 0xc(r1)
/* 803F0C14 003E6994  90 E1 00 10 */	stw r7, 0x10(r1)
/* 803F0C18 003E6998  90 A1 00 14 */	stw r5, 0x14(r1)
/* 803F0C1C 003E699C  90 01 00 18 */	stw r0, 0x18(r1)
/* 803F0C20 003E69A0  48 00 00 28 */	b .L_803F0C48
.L_803F0C24:
/* 803F0C24 003E69A4  7F 8C E3 78 */	mr r12, r28
/* 803F0C28 003E69A8  7F E3 FB 78 */	mr r3, r31
/* 803F0C2C 003E69AC  38 80 00 01 */	li r4, 0x1
/* 803F0C30 003E69B0  7D 89 03 A6 */	mtctr r12
/* 803F0C34 003E69B4  4E 80 04 21 */	bctrl
/* 803F0C38 003E69B8  80 61 00 18 */	lwz r3, 0x18(r1)
/* 803F0C3C 003E69BC  7F FF EA 14 */	add r31, r31, r29
/* 803F0C40 003E69C0  38 03 00 01 */	addi r0, r3, 0x1
/* 803F0C44 003E69C4  90 01 00 18 */	stw r0, 0x18(r1)
.L_803F0C48:
/* 803F0C48 003E69C8  80 81 00 18 */	lwz r4, 0x18(r1)
/* 803F0C4C 003E69CC  7C 04 F0 40 */	cmplw r4, r30
/* 803F0C50 003E69D0  41 80 FF D4 */	blt .L_803F0C24
/* 803F0C54 003E69D4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 803F0C58 003E69D8  7C 04 00 40 */	cmplw r4, r0
/* 803F0C5C 003E69DC  40 80 00 58 */	bge .L_803F0CB4
/* 803F0C60 003E69E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F0C64 003E69E4  2C 00 00 00 */	cmpwi r0, 0x0
/* 803F0C68 003E69E8  41 82 00 4C */	beq .L_803F0CB4
/* 803F0C6C 003E69EC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803F0C70 003E69F0  80 61 00 08 */	lwz r3, 0x8(r1)
/* 803F0C74 003E69F4  7C 00 21 D6 */	mullw r0, r0, r4
/* 803F0C78 003E69F8  7F E3 02 14 */	add r31, r3, r0
/* 803F0C7C 003E69FC  48 00 00 2C */	b .L_803F0CA8
.L_803F0C80:
/* 803F0C80 003E6A00  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803F0C84 003E6A04  38 80 FF FF */	li r4, -0x1
/* 803F0C88 003E6A08  81 81 00 14 */	lwz r12, 0x14(r1)
/* 803F0C8C 003E6A0C  7F E0 F8 50 */	subf r31, r0, r31
/* 803F0C90 003E6A10  7F E3 FB 78 */	mr r3, r31
/* 803F0C94 003E6A14  7D 89 03 A6 */	mtctr r12
/* 803F0C98 003E6A18  4E 80 04 21 */	bctrl
/* 803F0C9C 003E6A1C  80 61 00 18 */	lwz r3, 0x18(r1)
/* 803F0CA0 003E6A20  38 03 FF FF */	subi r0, r3, 0x1
/* 803F0CA4 003E6A24  90 01 00 18 */	stw r0, 0x18(r1)
.L_803F0CA8:
/* 803F0CA8 003E6A28  80 01 00 18 */	lwz r0, 0x18(r1)
/* 803F0CAC 003E6A2C  2C 00 00 00 */	cmpwi r0, 0x0
/* 803F0CB0 003E6A30  40 82 FF D0 */	bne .L_803F0C80
.L_803F0CB4:
/* 803F0CB4 003E6A34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F0CB8 003E6A38  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803F0CBC 003E6A3C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803F0CC0 003E6A40  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 803F0CC4 003E6A44  83 81 00 20 */	lwz r28, 0x20(r1)
/* 803F0CC8 003E6A48  7C 08 03 A6 */	mtlr r0
/* 803F0CCC 003E6A4C  38 21 00 30 */	addi r1, r1, 0x30
/* 803F0CD0 003E6A50  4E 80 00 20 */	blr
.endfn fn_803F0BDC
