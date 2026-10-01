.include "macros.inc"
.file "auto_dtor_8030A51C_text"

# 0x800088D8..0x800088E0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800088D8 | size: 0x8
.obj "@etb_800088D8", local
.hidden "@etb_800088D8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800088D8"

# 0x8000B824..0x8000B830 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B824 | size: 0xC
.obj "@eti_8000B824", local
.hidden "@eti_8000B824"
	.4byte dtor_8030A51C
	.4byte 0x0000005C
	.4byte "@etb_800088D8"
.endobj "@eti_8000B824"

# 0x8030A51C..0x8030A578 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x8030A51C | size: 0x5C
.fn dtor_8030A51C, global
/* 8030A51C 0030029C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030A520 003002A0  7C 08 02 A6 */	mflr r0
/* 8030A524 003002A4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8030A528 003002A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030A52C 003002AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030A530 003002B0  7C 7F 1B 78 */	mr r31, r3
/* 8030A534 003002B4  41 82 00 2C */	beq .L_8030A560
/* 8030A538 003002B8  41 82 00 28 */	beq .L_8030A560
/* 8030A53C 003002BC  80 03 00 08 */	lwz r0, 0x8(r3)
/* 8030A540 003002C0  54 00 00 01 */	clrrwi. r0, r0, 31
/* 8030A544 003002C4  40 82 00 1C */	bne .L_8030A560
/* 8030A548 003002C8  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8030A54C 003002CC  38 C0 00 15 */	li r6, 0x15
/* 8030A550 003002D0  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 8030A554 003002D4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8030A558 003002D8  54 05 10 3A */	slwi r5, r0, 2
/* 8030A55C 003002DC  4B F7 45 61 */	bl fn_8027EABC
.L_8030A560:
/* 8030A560 003002E0  7F E3 FB 78 */	mr r3, r31
/* 8030A564 003002E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030A568 003002E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030A56C 003002EC  7C 08 03 A6 */	mtlr r0
/* 8030A570 003002F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8030A574 003002F4  4E 80 00 20 */	blr
.endfn dtor_8030A51C
