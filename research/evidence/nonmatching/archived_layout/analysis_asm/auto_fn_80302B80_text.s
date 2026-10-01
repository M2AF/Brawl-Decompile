.include "macros.inc"
.file "auto_fn_80302B80_text"

# 0x800087CC..0x800087D4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800087CC | size: 0x8
.obj "@etb_800087CC", local
.hidden "@etb_800087CC"
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
.endobj "@etb_800087CC"

# 0x8000B6EC..0x8000B6F8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B6EC | size: 0xC
.obj "@eti_8000B6EC", local
.hidden "@eti_8000B6EC"
	.4byte fn_80302B80
	.4byte 0x000000B4
	.4byte "@etb_800087CC"
.endobj "@eti_8000B6EC"

# 0x80302B80..0x80302C34 | size: 0xB4
.text
.balign 4

# .text:0x0 | 0x80302B80 | size: 0xB4
.fn fn_80302B80, global
/* 80302B80 002F8900  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80302B84 002F8904  7C 08 02 A6 */	mflr r0
/* 80302B88 002F8908  90 01 00 24 */	stw r0, 0x24(r1)
/* 80302B8C 002F890C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80302B90 002F8910  7C 9F 23 78 */	mr r31, r4
/* 80302B94 002F8914  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80302B98 002F8918  7C 7E 1B 78 */	mr r30, r3
/* 80302B9C 002F891C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80302BA0 002F8920  3B A0 00 00 */	li r29, 0x0
.L_80302BA4:
/* 80302BA4 002F8924  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 80302BA8 002F8928  2C 00 00 00 */	cmpwi r0, 0x0
/* 80302BAC 002F892C  41 82 00 58 */	beq .L_80302C04
/* 80302BB0 002F8930  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 80302BB4 002F8934  80 63 00 00 */	lwz r3, 0x0(r3)
/* 80302BB8 002F8938  80 63 00 00 */	lwz r3, 0x0(r3)
/* 80302BBC 002F893C  A0 03 00 04 */	lhz r0, 0x4(r3)
/* 80302BC0 002F8940  2C 00 00 00 */	cmpwi r0, 0x0
/* 80302BC4 002F8944  41 82 00 34 */	beq .L_80302BF8
/* 80302BC8 002F8948  A8 83 00 06 */	lha r4, 0x6(r3)
/* 80302BCC 002F894C  38 84 FF FF */	subi r4, r4, 0x1
/* 80302BD0 002F8950  7C 80 07 35 */	extsh. r0, r4
/* 80302BD4 002F8954  B0 83 00 06 */	sth r4, 0x6(r3)
/* 80302BD8 002F8958  40 82 00 20 */	bne .L_80302BF8
/* 80302BDC 002F895C  2C 03 00 00 */	cmpwi r3, 0x0
/* 80302BE0 002F8960  41 82 00 18 */	beq .L_80302BF8
/* 80302BE4 002F8964  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80302BE8 002F8968  38 80 00 01 */	li r4, 0x1
/* 80302BEC 002F896C  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 80302BF0 002F8970  7D 89 03 A6 */	mtctr r12
/* 80302BF4 002F8974  4E 80 04 21 */	bctrl
.L_80302BF8:
/* 80302BF8 002F8978  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 80302BFC 002F897C  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 80302C00 002F8980  90 03 00 00 */	stw r0, 0x0(r3)
.L_80302C04:
/* 80302C04 002F8984  3B BD 00 01 */	addi r29, r29, 0x1
/* 80302C08 002F8988  3B DE 00 04 */	addi r30, r30, 0x4
/* 80302C0C 002F898C  2C 1D 00 02 */	cmpwi r29, 0x2
/* 80302C10 002F8990  3B FF 00 04 */	addi r31, r31, 0x4
/* 80302C14 002F8994  41 80 FF 90 */	blt .L_80302BA4
/* 80302C18 002F8998  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80302C1C 002F899C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80302C20 002F89A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80302C24 002F89A4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80302C28 002F89A8  7C 08 03 A6 */	mtlr r0
/* 80302C2C 002F89AC  38 21 00 20 */	addi r1, r1, 0x20
/* 80302C30 002F89B0  4E 80 00 20 */	blr
.endfn fn_80302B80
