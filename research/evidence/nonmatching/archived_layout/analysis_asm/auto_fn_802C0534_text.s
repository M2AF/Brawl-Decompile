.include "macros.inc"
.file "auto_fn_802C0534_text"

# 0x80007B6C..0x80007B74 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007B6C | size: 0x8
.obj "@etb_80007B6C", local
.hidden "@etb_80007B6C"
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
.endobj "@etb_80007B6C"

# 0x8000A900..0x8000A90C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A900 | size: 0xC
.obj "@eti_8000A900", local
.hidden "@eti_8000A900"
	.4byte fn_802C0534
	.4byte 0x0000005C
	.4byte "@etb_80007B6C"
.endobj "@eti_8000A900"

# 0x802C0534..0x802C0590 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802C0534 | size: 0x5C
.fn fn_802C0534, global
/* 802C0534 002B62B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C0538 002B62B8  7C 08 02 A6 */	mflr r0
/* 802C053C 002B62BC  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C0540 002B62C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C0544 002B62C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C0548 002B62C8  7C 7F 1B 78 */	mr r31, r3
/* 802C054C 002B62CC  41 82 00 2C */	beq .L_802C0578
/* 802C0550 002B62D0  2C 04 00 00 */	cmpwi r4, 0x0
/* 802C0554 002B62D4  40 81 00 24 */	ble .L_802C0578
/* 802C0558 002B62D8  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802C055C 002B62DC  7F E4 FB 78 */	mr r4, r31
/* 802C0560 002B62E0  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802C0564 002B62E4  38 C0 00 1D */	li r6, 0x1d
/* 802C0568 002B62E8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C056C 002B62EC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C0570 002B62F0  7D 89 03 A6 */	mtctr r12
/* 802C0574 002B62F4  4E 80 04 21 */	bctrl
.L_802C0578:
/* 802C0578 002B62F8  7F E3 FB 78 */	mr r3, r31
/* 802C057C 002B62FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C0580 002B6300  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C0584 002B6304  7C 08 03 A6 */	mtlr r0
/* 802C0588 002B6308  38 21 00 10 */	addi r1, r1, 0x10
/* 802C058C 002B630C  4E 80 00 20 */	blr
.endfn fn_802C0534
