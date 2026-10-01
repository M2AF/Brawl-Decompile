.include "macros.inc"
.file "auto_fn_802C0C04_text"

# 0x80007C08..0x80007C10 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007C08 | size: 0x8
.obj "@etb_80007C08", local
.hidden "@etb_80007C08"
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
.endobj "@etb_80007C08"

# 0x8000A984..0x8000A990 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A984 | size: 0xC
.obj "@eti_8000A984", local
.hidden "@eti_8000A984"
	.4byte fn_802C0C04
	.4byte 0x00000098
	.4byte "@etb_80007C08"
.endobj "@eti_8000A984"

# 0x802C0C04..0x802C0C9C | size: 0x98
.text
.balign 4

# .text:0x0 | 0x802C0C04 | size: 0x98
.fn fn_802C0C04, global
/* 802C0C04 002B6984  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C0C08 002B6988  7C 08 02 A6 */	mflr r0
/* 802C0C0C 002B698C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C0C10 002B6990  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C0C14 002B6994  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C0C18 002B6998  7C 9F 23 78 */	mr r31, r4
/* 802C0C1C 002B699C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802C0C20 002B69A0  7C 7E 1B 78 */	mr r30, r3
/* 802C0C24 002B69A4  41 82 00 5C */	beq .L_802C0C80
/* 802C0C28 002B69A8  34 03 00 0C */	addic. r0, r3, 0xc
/* 802C0C2C 002B69AC  41 82 00 2C */	beq .L_802C0C58
/* 802C0C30 002B69B0  41 82 00 28 */	beq .L_802C0C58
/* 802C0C34 002B69B4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802C0C38 002B69B8  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802C0C3C 002B69BC  40 82 00 1C */	bne .L_802C0C58
/* 802C0C40 002B69C0  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 802C0C44 002B69C4  38 C0 00 15 */	li r6, 0x15
/* 802C0C48 002B69C8  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802C0C4C 002B69CC  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 802C0C50 002B69D0  54 05 18 38 */	slwi r5, r0, 3
/* 802C0C54 002B69D4  4B FB DE 69 */	bl fn_8027EABC
.L_802C0C58:
/* 802C0C58 002B69D8  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802C0C5C 002B69DC  40 81 00 24 */	ble .L_802C0C80
/* 802C0C60 002B69E0  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802C0C64 002B69E4  7F C4 F3 78 */	mr r4, r30
/* 802C0C68 002B69E8  A0 BE 00 04 */	lhz r5, 0x4(r30)
/* 802C0C6C 002B69EC  38 C0 00 1D */	li r6, 0x1d
/* 802C0C70 002B69F0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C0C74 002B69F4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C0C78 002B69F8  7D 89 03 A6 */	mtctr r12
/* 802C0C7C 002B69FC  4E 80 04 21 */	bctrl
.L_802C0C80:
/* 802C0C80 002B6A00  7F C3 F3 78 */	mr r3, r30
/* 802C0C84 002B6A04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C0C88 002B6A08  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802C0C8C 002B6A0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C0C90 002B6A10  7C 08 03 A6 */	mtlr r0
/* 802C0C94 002B6A14  38 21 00 10 */	addi r1, r1, 0x10
/* 802C0C98 002B6A18  4E 80 00 20 */	blr
.endfn fn_802C0C04
