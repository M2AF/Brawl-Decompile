.include "macros.inc"
.file "auto_fn_802BD698_text"

# 0x80007A4C..0x80007A54 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007A4C | size: 0x8
.obj "@etb_80007A4C", local
.hidden "@etb_80007A4C"
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
.endobj "@etb_80007A4C"

# 0x8000A834..0x8000A840 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A834 | size: 0xC
.obj "@eti_8000A834", local
.hidden "@eti_8000A834"
	.4byte fn_802BD698
	.4byte 0x000000A0
	.4byte "@etb_80007A4C"
.endobj "@eti_8000A834"

# 0x802BD698..0x802BD738 | size: 0xA0
.text
.balign 4

# .text:0x0 | 0x802BD698 | size: 0xA0
.fn fn_802BD698, global
/* 802BD698 002B3418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BD69C 002B341C  7C 08 02 A6 */	mflr r0
/* 802BD6A0 002B3420  2C 03 00 00 */	cmpwi r3, 0x0
/* 802BD6A4 002B3424  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BD6A8 002B3428  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BD6AC 002B342C  7C 9F 23 78 */	mr r31, r4
/* 802BD6B0 002B3430  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802BD6B4 002B3434  7C 7E 1B 78 */	mr r30, r3
/* 802BD6B8 002B3438  41 82 00 64 */	beq .L_802BD71C
/* 802BD6BC 002B343C  41 82 00 38 */	beq .L_802BD6F4
/* 802BD6C0 002B3440  41 82 00 34 */	beq .L_802BD6F4
/* 802BD6C4 002B3444  34 03 00 0C */	addic. r0, r3, 0xc
/* 802BD6C8 002B3448  41 82 00 2C */	beq .L_802BD6F4
/* 802BD6CC 002B344C  41 82 00 28 */	beq .L_802BD6F4
/* 802BD6D0 002B3450  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802BD6D4 002B3454  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802BD6D8 002B3458  40 82 00 1C */	bne .L_802BD6F4
/* 802BD6DC 002B345C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 802BD6E0 002B3460  38 C0 00 15 */	li r6, 0x15
/* 802BD6E4 002B3464  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802BD6E8 002B3468  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 802BD6EC 002B346C  54 05 18 38 */	slwi r5, r0, 3
/* 802BD6F0 002B3470  4B FC 13 CD */	bl fn_8027EABC
.L_802BD6F4:
/* 802BD6F4 002B3474  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802BD6F8 002B3478  40 81 00 24 */	ble .L_802BD71C
/* 802BD6FC 002B347C  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802BD700 002B3480  7F C4 F3 78 */	mr r4, r30
/* 802BD704 002B3484  A0 BE 00 04 */	lhz r5, 0x4(r30)
/* 802BD708 002B3488  38 C0 00 1D */	li r6, 0x1d
/* 802BD70C 002B348C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802BD710 002B3490  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802BD714 002B3494  7D 89 03 A6 */	mtctr r12
/* 802BD718 002B3498  4E 80 04 21 */	bctrl
.L_802BD71C:
/* 802BD71C 002B349C  7F C3 F3 78 */	mr r3, r30
/* 802BD720 002B34A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BD724 002B34A4  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802BD728 002B34A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BD72C 002B34AC  7C 08 03 A6 */	mtlr r0
/* 802BD730 002B34B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802BD734 002B34B4  4E 80 00 20 */	blr
.endfn fn_802BD698
