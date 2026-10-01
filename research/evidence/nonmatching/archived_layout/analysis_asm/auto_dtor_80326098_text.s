.include "macros.inc"
.file "auto_dtor_80326098_text"

# 0x80008E1C..0x80008E24 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008E1C | size: 0x8
.obj "@etb_80008E1C", local
.hidden "@etb_80008E1C"
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
.endobj "@etb_80008E1C"

# 0x8000BDD0..0x8000BDDC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BDD0 | size: 0xC
.obj "@eti_8000BDD0", local
.hidden "@eti_8000BDD0"
	.4byte dtor_80326098
	.4byte 0x0000008C
	.4byte "@etb_80008E1C"
.endobj "@eti_8000BDD0"

# 0x80326098..0x80326124 | size: 0x8C
.text
.balign 4

# .text:0x0 | 0x80326098 | size: 0x8C
.fn dtor_80326098, global
/* 80326098 0031BE18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032609C 0031BE1C  7C 08 02 A6 */	mflr r0
/* 803260A0 0031BE20  2C 03 00 00 */	cmpwi r3, 0x0
/* 803260A4 0031BE24  90 01 00 14 */	stw r0, 0x14(r1)
/* 803260A8 0031BE28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803260AC 0031BE2C  7C 9F 23 78 */	mr r31, r4
/* 803260B0 0031BE30  93 C1 00 08 */	stw r30, 0x8(r1)
/* 803260B4 0031BE34  7C 7E 1B 78 */	mr r30, r3
/* 803260B8 0031BE38  41 82 00 50 */	beq .L_80326108
/* 803260BC 0031BE3C  80 03 00 08 */	lwz r0, 0x8(r3)
/* 803260C0 0031BE40  54 00 00 01 */	clrrwi. r0, r0, 31
/* 803260C4 0031BE44  40 82 00 1C */	bne .L_803260E0
/* 803260C8 0031BE48  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 803260CC 0031BE4C  38 C0 00 15 */	li r6, 0x15
/* 803260D0 0031BE50  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 803260D4 0031BE54  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 803260D8 0031BE58  54 05 30 32 */	slwi r5, r0, 6
/* 803260DC 0031BE5C  4B F5 89 E1 */	bl fn_8027EABC
.L_803260E0:
/* 803260E0 0031BE60  2C 1F 00 00 */	cmpwi r31, 0x0
/* 803260E4 0031BE64  40 81 00 24 */	ble .L_80326108
/* 803260E8 0031BE68  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 803260EC 0031BE6C  7F C4 F3 78 */	mr r4, r30
/* 803260F0 0031BE70  38 A0 00 0C */	li r5, 0xc
/* 803260F4 0031BE74  38 C0 00 15 */	li r6, 0x15
/* 803260F8 0031BE78  81 83 00 00 */	lwz r12, 0x0(r3)
/* 803260FC 0031BE7C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80326100 0031BE80  7D 89 03 A6 */	mtctr r12
/* 80326104 0031BE84  4E 80 04 21 */	bctrl
.L_80326108:
/* 80326108 0031BE88  7F C3 F3 78 */	mr r3, r30
/* 8032610C 0031BE8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80326110 0031BE90  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80326114 0031BE94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80326118 0031BE98  7C 08 03 A6 */	mtlr r0
/* 8032611C 0031BE9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80326120 0031BEA0  4E 80 00 20 */	blr
.endfn dtor_80326098
