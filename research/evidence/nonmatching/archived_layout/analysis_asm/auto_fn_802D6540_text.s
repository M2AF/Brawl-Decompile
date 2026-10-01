.include "macros.inc"
.file "auto_fn_802D6540_text"

# 0x8000861C..0x80008624 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000861C | size: 0x8
.obj "@etb_8000861C", local
.hidden "@etb_8000861C"
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
.endobj "@etb_8000861C"

# 0x8000B47C..0x8000B488 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B47C | size: 0xC
.obj "@eti_8000B47C", local
.hidden "@eti_8000B47C"
	.4byte fn_802D6540
	.4byte 0x0000005C
	.4byte "@etb_8000861C"
.endobj "@eti_8000B47C"

# 0x802D6540..0x802D659C | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802D6540 | size: 0x5C
.fn fn_802D6540, global
/* 802D6540 002CC2C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D6544 002CC2C4  7C 08 02 A6 */	mflr r0
/* 802D6548 002CC2C8  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D654C 002CC2CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D6550 002CC2D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D6554 002CC2D4  7C 7F 1B 78 */	mr r31, r3
/* 802D6558 002CC2D8  41 82 00 2C */	beq .L_802D6584
/* 802D655C 002CC2DC  2C 04 00 00 */	cmpwi r4, 0x0
/* 802D6560 002CC2E0  40 81 00 24 */	ble .L_802D6584
/* 802D6564 002CC2E4  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802D6568 002CC2E8  7F E4 FB 78 */	mr r4, r31
/* 802D656C 002CC2EC  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802D6570 002CC2F0  38 C0 00 25 */	li r6, 0x25
/* 802D6574 002CC2F4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D6578 002CC2F8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802D657C 002CC2FC  7D 89 03 A6 */	mtctr r12
/* 802D6580 002CC300  4E 80 04 21 */	bctrl
.L_802D6584:
/* 802D6584 002CC304  7F E3 FB 78 */	mr r3, r31
/* 802D6588 002CC308  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D658C 002CC30C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D6590 002CC310  7C 08 03 A6 */	mtlr r0
/* 802D6594 002CC314  38 21 00 10 */	addi r1, r1, 0x10
/* 802D6598 002CC318  4E 80 00 20 */	blr
.endfn fn_802D6540
