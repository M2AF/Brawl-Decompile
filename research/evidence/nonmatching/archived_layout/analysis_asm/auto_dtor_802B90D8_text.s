.include "macros.inc"
.file "auto_dtor_802B90D8_text"

# 0x80007734..0x8000773C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007734 | size: 0x8
.obj "@etb_80007734", local
.hidden "@etb_80007734"
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
.endobj "@etb_80007734"

# 0x8000A660..0x8000A66C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A660 | size: 0xC
.obj "@eti_8000A660", local
.hidden "@eti_8000A660"
	.4byte dtor_802B90D8
	.4byte 0x00000090
	.4byte "@etb_80007734"
.endobj "@eti_8000A660"

# 0x802B90D8..0x802B9168 | size: 0x90
.text
.balign 4

# .text:0x0 | 0x802B90D8 | size: 0x90
.fn dtor_802B90D8, global
/* 802B90D8 002AEE58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B90DC 002AEE5C  7C 08 02 A6 */	mflr r0
/* 802B90E0 002AEE60  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B90E4 002AEE64  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B90E8 002AEE68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B90EC 002AEE6C  7C 9F 23 78 */	mr r31, r4
/* 802B90F0 002AEE70  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802B90F4 002AEE74  7C 7E 1B 78 */	mr r30, r3
/* 802B90F8 002AEE78  41 82 00 54 */	beq .L_802B914C
/* 802B90FC 002AEE7C  41 82 00 28 */	beq .L_802B9124
/* 802B9100 002AEE80  80 03 00 08 */	lwz r0, 0x8(r3)
/* 802B9104 002AEE84  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802B9108 002AEE88  40 82 00 1C */	bne .L_802B9124
/* 802B910C 002AEE8C  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 802B9110 002AEE90  38 C0 00 15 */	li r6, 0x15
/* 802B9114 002AEE94  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802B9118 002AEE98  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 802B911C 002AEE9C  54 05 08 7C */	clrlslwi r5, r0, 2, 1
/* 802B9120 002AEEA0  4B FC 59 9D */	bl fn_8027EABC
.L_802B9124:
/* 802B9124 002AEEA4  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802B9128 002AEEA8  40 81 00 24 */	ble .L_802B914C
/* 802B912C 002AEEAC  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802B9130 002AEEB0  7F C4 F3 78 */	mr r4, r30
/* 802B9134 002AEEB4  38 A0 00 14 */	li r5, 0x14
/* 802B9138 002AEEB8  38 C0 00 15 */	li r6, 0x15
/* 802B913C 002AEEBC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B9140 002AEEC0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802B9144 002AEEC4  7D 89 03 A6 */	mtctr r12
/* 802B9148 002AEEC8  4E 80 04 21 */	bctrl
.L_802B914C:
/* 802B914C 002AEECC  7F C3 F3 78 */	mr r3, r30
/* 802B9150 002AEED0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B9154 002AEED4  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802B9158 002AEED8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B915C 002AEEDC  7C 08 03 A6 */	mtlr r0
/* 802B9160 002AEEE0  38 21 00 10 */	addi r1, r1, 0x10
/* 802B9164 002AEEE4  4E 80 00 20 */	blr
.endfn dtor_802B90D8
