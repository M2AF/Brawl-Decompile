.include "macros.inc"
.file "auto_dtor_8030A490_text"

# 0x800088D0..0x800088D8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800088D0 | size: 0x8
.obj "@etb_800088D0", local
.hidden "@etb_800088D0"
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
.endobj "@etb_800088D0"

# 0x8000B818..0x8000B824 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B818 | size: 0xC
.obj "@eti_8000B818", local
.hidden "@eti_8000B818"
	.4byte dtor_8030A490
	.4byte 0x0000008C
	.4byte "@etb_800088D0"
.endobj "@eti_8000B818"

# 0x8030A490..0x8030A51C | size: 0x8C
.text
.balign 4

# .text:0x0 | 0x8030A490 | size: 0x8C
.fn dtor_8030A490, global
/* 8030A490 00300210  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030A494 00300214  7C 08 02 A6 */	mflr r0
/* 8030A498 00300218  2C 03 00 00 */	cmpwi r3, 0x0
/* 8030A49C 0030021C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030A4A0 00300220  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030A4A4 00300224  7C 9F 23 78 */	mr r31, r4
/* 8030A4A8 00300228  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8030A4AC 0030022C  7C 7E 1B 78 */	mr r30, r3
/* 8030A4B0 00300230  41 82 00 50 */	beq .L_8030A500
/* 8030A4B4 00300234  80 03 00 08 */	lwz r0, 0x8(r3)
/* 8030A4B8 00300238  54 00 00 01 */	clrrwi. r0, r0, 31
/* 8030A4BC 0030023C  40 82 00 1C */	bne .L_8030A4D8
/* 8030A4C0 00300240  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 8030A4C4 00300244  38 C0 00 15 */	li r6, 0x15
/* 8030A4C8 00300248  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 8030A4CC 0030024C  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8030A4D0 00300250  54 05 20 36 */	slwi r5, r0, 4
/* 8030A4D4 00300254  4B F7 45 E9 */	bl fn_8027EABC
.L_8030A4D8:
/* 8030A4D8 00300258  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8030A4DC 0030025C  40 81 00 24 */	ble .L_8030A500
/* 8030A4E0 00300260  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 8030A4E4 00300264  7F C4 F3 78 */	mr r4, r30
/* 8030A4E8 00300268  38 A0 00 0C */	li r5, 0xc
/* 8030A4EC 0030026C  38 C0 00 15 */	li r6, 0x15
/* 8030A4F0 00300270  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8030A4F4 00300274  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8030A4F8 00300278  7D 89 03 A6 */	mtctr r12
/* 8030A4FC 0030027C  4E 80 04 21 */	bctrl
.L_8030A500:
/* 8030A500 00300280  7F C3 F3 78 */	mr r3, r30
/* 8030A504 00300284  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030A508 00300288  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8030A50C 0030028C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030A510 00300290  7C 08 03 A6 */	mtlr r0
/* 8030A514 00300294  38 21 00 10 */	addi r1, r1, 0x10
/* 8030A518 00300298  4E 80 00 20 */	blr
.endfn dtor_8030A490
