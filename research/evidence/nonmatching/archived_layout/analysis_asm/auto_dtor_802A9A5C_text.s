.include "macros.inc"
.file "auto_dtor_802A9A5C_text"

# 0x80006E1C..0x80006E24 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006E1C | size: 0x8
.obj "@etb_80006E1C", local
.hidden "@etb_80006E1C"
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
.endobj "@etb_80006E1C"

# 0x8000A018..0x8000A024 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A018 | size: 0xC
.obj "@eti_8000A018", local
.hidden "@eti_8000A018"
	.4byte dtor_802A9A5C
	.4byte 0x00000094
	.4byte "@etb_80006E1C"
.endobj "@eti_8000A018"

# 0x802A9A5C..0x802A9AF0 | size: 0x94
.text
.balign 4

# .text:0x0 | 0x802A9A5C | size: 0x94
.fn dtor_802A9A5C, global
/* 802A9A5C 0029F7DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A9A60 0029F7E0  7C 08 02 A6 */	mflr r0
/* 802A9A64 0029F7E4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A9A68 0029F7E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A9A6C 0029F7EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A9A70 0029F7F0  7C 9F 23 78 */	mr r31, r4
/* 802A9A74 0029F7F4  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802A9A78 0029F7F8  7C 7E 1B 78 */	mr r30, r3
/* 802A9A7C 0029F7FC  41 82 00 58 */	beq .L_802A9AD4
/* 802A9A80 0029F800  41 82 00 2C */	beq .L_802A9AAC
/* 802A9A84 0029F804  41 82 00 28 */	beq .L_802A9AAC
/* 802A9A88 0029F808  80 03 00 08 */	lwz r0, 0x8(r3)
/* 802A9A8C 0029F80C  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802A9A90 0029F810  40 82 00 1C */	bne .L_802A9AAC
/* 802A9A94 0029F814  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 802A9A98 0029F818  38 C0 00 15 */	li r6, 0x15
/* 802A9A9C 0029F81C  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802A9AA0 0029F820  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 802A9AA4 0029F824  54 05 10 3A */	slwi r5, r0, 2
/* 802A9AA8 0029F828  4B FD 50 15 */	bl fn_8027EABC
.L_802A9AAC:
/* 802A9AAC 0029F82C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802A9AB0 0029F830  40 81 00 24 */	ble .L_802A9AD4
/* 802A9AB4 0029F834  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A9AB8 0029F838  7F C4 F3 78 */	mr r4, r30
/* 802A9ABC 0029F83C  38 A0 00 10 */	li r5, 0x10
/* 802A9AC0 0029F840  38 C0 00 25 */	li r6, 0x25
/* 802A9AC4 0029F844  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A9AC8 0029F848  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A9ACC 0029F84C  7D 89 03 A6 */	mtctr r12
/* 802A9AD0 0029F850  4E 80 04 21 */	bctrl
.L_802A9AD4:
/* 802A9AD4 0029F854  7F C3 F3 78 */	mr r3, r30
/* 802A9AD8 0029F858  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A9ADC 0029F85C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802A9AE0 0029F860  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A9AE4 0029F864  7C 08 03 A6 */	mtlr r0
/* 802A9AE8 0029F868  38 21 00 10 */	addi r1, r1, 0x10
/* 802A9AEC 0029F86C  4E 80 00 20 */	blr
.endfn dtor_802A9A5C
