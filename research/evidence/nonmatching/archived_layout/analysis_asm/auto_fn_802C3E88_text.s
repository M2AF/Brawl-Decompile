.include "macros.inc"
.file "auto_fn_802C3E88_text"

# 0x80007DD8..0x80007DE0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007DD8 | size: 0x8
.obj "@etb_80007DD8", local
.hidden "@etb_80007DD8"
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
.endobj "@etb_80007DD8"

# 0x8000AB1C..0x8000AB28 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AB1C | size: 0xC
.obj "@eti_8000AB1C", local
.hidden "@eti_8000AB1C"
	.4byte fn_802C3E88
	.4byte 0x0000005C
	.4byte "@etb_80007DD8"
.endobj "@eti_8000AB1C"

# 0x802C3E88..0x802C3EE4 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802C3E88 | size: 0x5C
.fn fn_802C3E88, global
/* 802C3E88 002B9C08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C3E8C 002B9C0C  7C 08 02 A6 */	mflr r0
/* 802C3E90 002B9C10  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C3E94 002B9C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C3E98 002B9C18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C3E9C 002B9C1C  7C 7F 1B 78 */	mr r31, r3
/* 802C3EA0 002B9C20  41 82 00 2C */	beq .L_802C3ECC
/* 802C3EA4 002B9C24  2C 04 00 00 */	cmpwi r4, 0x0
/* 802C3EA8 002B9C28  40 81 00 24 */	ble .L_802C3ECC
/* 802C3EAC 002B9C2C  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802C3EB0 002B9C30  7F E4 FB 78 */	mr r4, r31
/* 802C3EB4 002B9C34  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802C3EB8 002B9C38  38 C0 00 1D */	li r6, 0x1d
/* 802C3EBC 002B9C3C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C3EC0 002B9C40  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C3EC4 002B9C44  7D 89 03 A6 */	mtctr r12
/* 802C3EC8 002B9C48  4E 80 04 21 */	bctrl
.L_802C3ECC:
/* 802C3ECC 002B9C4C  7F E3 FB 78 */	mr r3, r31
/* 802C3ED0 002B9C50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C3ED4 002B9C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C3ED8 002B9C58  7C 08 03 A6 */	mtlr r0
/* 802C3EDC 002B9C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 802C3EE0 002B9C60  4E 80 00 20 */	blr
.endfn fn_802C3E88
