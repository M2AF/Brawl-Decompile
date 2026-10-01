.include "macros.inc"
.file "auto_dtor_80328C78_text"

# 0x80008F6C..0x80008F74 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008F6C | size: 0x8
.obj "@etb_80008F6C", local
.hidden "@etb_80008F6C"
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
.endobj "@etb_80008F6C"

# 0x8000BE84..0x8000BE90 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BE84 | size: 0xC
.obj "@eti_8000BE84", local
.hidden "@eti_8000BE84"
	.4byte dtor_80328C78
	.4byte 0x0000008C
	.4byte "@etb_80008F6C"
.endobj "@eti_8000BE84"

# 0x80328C78..0x80328D04 | size: 0x8C
.text
.balign 4

# .text:0x0 | 0x80328C78 | size: 0x8C
.fn dtor_80328C78, global
/* 80328C78 0031E9F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80328C7C 0031E9FC  7C 08 02 A6 */	mflr r0
/* 80328C80 0031EA00  2C 03 00 00 */	cmpwi r3, 0x0
/* 80328C84 0031EA04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80328C88 0031EA08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80328C8C 0031EA0C  7C 9F 23 78 */	mr r31, r4
/* 80328C90 0031EA10  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80328C94 0031EA14  7C 7E 1B 78 */	mr r30, r3
/* 80328C98 0031EA18  41 82 00 50 */	beq .L_80328CE8
/* 80328C9C 0031EA1C  80 03 00 08 */	lwz r0, 0x8(r3)
/* 80328CA0 0031EA20  54 00 00 01 */	clrrwi. r0, r0, 31
/* 80328CA4 0031EA24  40 82 00 1C */	bne .L_80328CC0
/* 80328CA8 0031EA28  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 80328CAC 0031EA2C  38 C0 00 15 */	li r6, 0x15
/* 80328CB0 0031EA30  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 80328CB4 0031EA34  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 80328CB8 0031EA38  54 05 00 BE */	clrlwi r5, r0, 2
/* 80328CBC 0031EA3C  4B F5 5E 01 */	bl fn_8027EABC
.L_80328CC0:
/* 80328CC0 0031EA40  2C 1F 00 00 */	cmpwi r31, 0x0
/* 80328CC4 0031EA44  40 81 00 24 */	ble .L_80328CE8
/* 80328CC8 0031EA48  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 80328CCC 0031EA4C  7F C4 F3 78 */	mr r4, r30
/* 80328CD0 0031EA50  38 A0 00 0C */	li r5, 0xc
/* 80328CD4 0031EA54  38 C0 00 15 */	li r6, 0x15
/* 80328CD8 0031EA58  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80328CDC 0031EA5C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80328CE0 0031EA60  7D 89 03 A6 */	mtctr r12
/* 80328CE4 0031EA64  4E 80 04 21 */	bctrl
.L_80328CE8:
/* 80328CE8 0031EA68  7F C3 F3 78 */	mr r3, r30
/* 80328CEC 0031EA6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80328CF0 0031EA70  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80328CF4 0031EA74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80328CF8 0031EA78  7C 08 03 A6 */	mtlr r0
/* 80328CFC 0031EA7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80328D00 0031EA80  4E 80 00 20 */	blr
.endfn dtor_80328C78
