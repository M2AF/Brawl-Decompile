.include "macros.inc"
.file "auto_dtor_802CBEA0_text"

# 0x80008238..0x80008240 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008238 | size: 0x8
.obj "@etb_80008238", local
.hidden "@etb_80008238"
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
.endobj "@etb_80008238"

# 0x8000AEDC..0x8000AEE8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AEDC | size: 0xC
.obj "@eti_8000AEDC", local
.hidden "@eti_8000AEDC"
	.4byte dtor_802CBEA0
	.4byte 0x0000008C
	.4byte "@etb_80008238"
.endobj "@eti_8000AEDC"

# 0x802CBEA0..0x802CBF2C | size: 0x8C
.text
.balign 4

# .text:0x0 | 0x802CBEA0 | size: 0x8C
.fn dtor_802CBEA0, global
/* 802CBEA0 002C1C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CBEA4 002C1C24  7C 08 02 A6 */	mflr r0
/* 802CBEA8 002C1C28  2C 03 00 00 */	cmpwi r3, 0x0
/* 802CBEAC 002C1C2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CBEB0 002C1C30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CBEB4 002C1C34  7C 9F 23 78 */	mr r31, r4
/* 802CBEB8 002C1C38  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802CBEBC 002C1C3C  7C 7E 1B 78 */	mr r30, r3
/* 802CBEC0 002C1C40  41 82 00 50 */	beq .L_802CBF10
/* 802CBEC4 002C1C44  80 03 00 08 */	lwz r0, 0x8(r3)
/* 802CBEC8 002C1C48  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802CBECC 002C1C4C  40 82 00 1C */	bne .L_802CBEE8
/* 802CBED0 002C1C50  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 802CBED4 002C1C54  38 C0 00 15 */	li r6, 0x15
/* 802CBED8 002C1C58  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802CBEDC 002C1C5C  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 802CBEE0 002C1C60  54 05 18 38 */	slwi r5, r0, 3
/* 802CBEE4 002C1C64  4B FB 2B D9 */	bl fn_8027EABC
.L_802CBEE8:
/* 802CBEE8 002C1C68  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802CBEEC 002C1C6C  40 81 00 24 */	ble .L_802CBF10
/* 802CBEF0 002C1C70  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802CBEF4 002C1C74  7F C4 F3 78 */	mr r4, r30
/* 802CBEF8 002C1C78  38 A0 00 0C */	li r5, 0xc
/* 802CBEFC 002C1C7C  38 C0 00 15 */	li r6, 0x15
/* 802CBF00 002C1C80  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CBF04 002C1C84  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802CBF08 002C1C88  7D 89 03 A6 */	mtctr r12
/* 802CBF0C 002C1C8C  4E 80 04 21 */	bctrl
.L_802CBF10:
/* 802CBF10 002C1C90  7F C3 F3 78 */	mr r3, r30
/* 802CBF14 002C1C94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CBF18 002C1C98  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802CBF1C 002C1C9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CBF20 002C1CA0  7C 08 03 A6 */	mtlr r0
/* 802CBF24 002C1CA4  38 21 00 10 */	addi r1, r1, 0x10
/* 802CBF28 002C1CA8  4E 80 00 20 */	blr
.endfn dtor_802CBEA0
