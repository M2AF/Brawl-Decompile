.include "macros.inc"
.file "auto_dtor_802A3AA0_text"

# 0x80006A30..0x80006A38 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006A30 | size: 0x8
.obj "@etb_80006A30", local
.hidden "@etb_80006A30"
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
.endobj "@etb_80006A30"

# 0x80009DA8..0x80009DB4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009DA8 | size: 0xC
.obj "@eti_80009DA8", local
.hidden "@eti_80009DA8"
	.4byte dtor_802A3AA0
	.4byte 0x00000090
	.4byte "@etb_80006A30"
.endobj "@eti_80009DA8"

# 0x802A3AA0..0x802A3B30 | size: 0x90
.text
.balign 4

# .text:0x0 | 0x802A3AA0 | size: 0x90
.fn dtor_802A3AA0, global
/* 802A3AA0 00299820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A3AA4 00299824  7C 08 02 A6 */	mflr r0
/* 802A3AA8 00299828  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A3AAC 0029982C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A3AB0 00299830  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A3AB4 00299834  7C 9F 23 78 */	mr r31, r4
/* 802A3AB8 00299838  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802A3ABC 0029983C  7C 7E 1B 78 */	mr r30, r3
/* 802A3AC0 00299840  41 82 00 54 */	beq .L_802A3B14
/* 802A3AC4 00299844  80 03 00 08 */	lwz r0, 0x8(r3)
/* 802A3AC8 00299848  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802A3ACC 0029984C  40 82 00 20 */	bne .L_802A3AEC
/* 802A3AD0 00299850  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 802A3AD4 00299854  38 C0 00 15 */	li r6, 0x15
/* 802A3AD8 00299858  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802A3ADC 0029985C  54 00 00 BE */	clrlwi r0, r0, 2
/* 802A3AE0 00299860  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 802A3AE4 00299864  1C A0 00 0C */	mulli r5, r0, 0xc
/* 802A3AE8 00299868  4B FD AF D5 */	bl fn_8027EABC
.L_802A3AEC:
/* 802A3AEC 0029986C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802A3AF0 00299870  40 81 00 24 */	ble .L_802A3B14
/* 802A3AF4 00299874  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A3AF8 00299878  7F C4 F3 78 */	mr r4, r30
/* 802A3AFC 0029987C  38 A0 00 0C */	li r5, 0xc
/* 802A3B00 00299880  38 C0 00 15 */	li r6, 0x15
/* 802A3B04 00299884  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A3B08 00299888  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A3B0C 0029988C  7D 89 03 A6 */	mtctr r12
/* 802A3B10 00299890  4E 80 04 21 */	bctrl
.L_802A3B14:
/* 802A3B14 00299894  7F C3 F3 78 */	mr r3, r30
/* 802A3B18 00299898  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A3B1C 0029989C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802A3B20 002998A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A3B24 002998A4  7C 08 03 A6 */	mtlr r0
/* 802A3B28 002998A8  38 21 00 10 */	addi r1, r1, 0x10
/* 802A3B2C 002998AC  4E 80 00 20 */	blr
.endfn dtor_802A3AA0
