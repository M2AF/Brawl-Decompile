.include "macros.inc"
.file "auto_dtor_803F0B20_text"

# 0x800094E4..0x800094EC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800094E4 | size: 0x8
.obj "@etb_800094E4", local
.hidden "@etb_800094E4"
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
.endobj "@etb_800094E4"

# 0x8000C4D8..0x8000C4E4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C4D8 | size: 0xC
.obj "@eti_8000C4D8", local
.hidden "@eti_8000C4D8"
	.4byte dtor_803F0B20
	.4byte 0x000000BC
	.4byte "@etb_800094E4"
.endobj "@eti_8000C4D8"

# 0x803F0B20..0x803F0BDC | size: 0xBC
.text
.balign 4

# .text:0x0 | 0x803F0B20 | size: 0xBC
.fn dtor_803F0B20, global
/* 803F0B20 003E68A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F0B24 003E68A4  7C 08 02 A6 */	mflr r0
/* 803F0B28 003E68A8  2C 03 00 00 */	cmpwi r3, 0x0
/* 803F0B2C 003E68AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F0B30 003E68B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F0B34 003E68B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803F0B38 003E68B8  7C 9E 23 78 */	mr r30, r4
/* 803F0B3C 003E68BC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803F0B40 003E68C0  7C 7D 1B 78 */	mr r29, r3
/* 803F0B44 003E68C4  41 82 00 78 */	beq .L_803F0BBC
/* 803F0B48 003E68C8  80 83 00 10 */	lwz r4, 0x10(r3)
/* 803F0B4C 003E68CC  80 03 00 08 */	lwz r0, 0x8(r3)
/* 803F0B50 003E68D0  7C 04 00 40 */	cmplw r4, r0
/* 803F0B54 003E68D4  40 80 00 58 */	bge .L_803F0BAC
/* 803F0B58 003E68D8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803F0B5C 003E68DC  2C 00 00 00 */	cmpwi r0, 0x0
/* 803F0B60 003E68E0  41 82 00 4C */	beq .L_803F0BAC
/* 803F0B64 003E68E4  80 03 00 04 */	lwz r0, 0x4(r3)
/* 803F0B68 003E68E8  80 63 00 00 */	lwz r3, 0x0(r3)
/* 803F0B6C 003E68EC  7C 00 21 D6 */	mullw r0, r0, r4
/* 803F0B70 003E68F0  7F E3 02 14 */	add r31, r3, r0
/* 803F0B74 003E68F4  48 00 00 2C */	b .L_803F0BA0
.L_803F0B78:
/* 803F0B78 003E68F8  80 1D 00 04 */	lwz r0, 0x4(r29)
/* 803F0B7C 003E68FC  38 80 FF FF */	li r4, -0x1
/* 803F0B80 003E6900  81 9D 00 0C */	lwz r12, 0xc(r29)
/* 803F0B84 003E6904  7F E0 F8 50 */	subf r31, r0, r31
/* 803F0B88 003E6908  7F E3 FB 78 */	mr r3, r31
/* 803F0B8C 003E690C  7D 89 03 A6 */	mtctr r12
/* 803F0B90 003E6910  4E 80 04 21 */	bctrl
/* 803F0B94 003E6914  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 803F0B98 003E6918  38 03 FF FF */	subi r0, r3, 0x1
/* 803F0B9C 003E691C  90 1D 00 10 */	stw r0, 0x10(r29)
.L_803F0BA0:
/* 803F0BA0 003E6920  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 803F0BA4 003E6924  2C 00 00 00 */	cmpwi r0, 0x0
/* 803F0BA8 003E6928  40 82 FF D0 */	bne .L_803F0B78
.L_803F0BAC:
/* 803F0BAC 003E692C  2C 1E 00 00 */	cmpwi r30, 0x0
/* 803F0BB0 003E6930  40 81 00 0C */	ble .L_803F0BBC
/* 803F0BB4 003E6934  7F A3 EB 78 */	mr r3, r29
/* 803F0BB8 003E6938  4B C1 BD 11 */	bl fn_8000C8C8
.L_803F0BBC:
/* 803F0BBC 003E693C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F0BC0 003E6940  7F A3 EB 78 */	mr r3, r29
/* 803F0BC4 003E6944  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803F0BC8 003E6948  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803F0BCC 003E694C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F0BD0 003E6950  7C 08 03 A6 */	mtlr r0
/* 803F0BD4 003E6954  38 21 00 20 */	addi r1, r1, 0x20
/* 803F0BD8 003E6958  4E 80 00 20 */	blr
.endfn dtor_803F0B20
