.include "macros.inc"
.file "auto_fn_802A9024_text"

# 0x80006D0C..0x80006D14 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006D0C | size: 0x8
.obj "@etb_80006D0C", local
.hidden "@etb_80006D0C"
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
.endobj "@etb_80006D0C"

# 0x80009F88..0x80009F94 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009F88 | size: 0xC
.obj "@eti_80009F88", local
.hidden "@eti_80009F88"
	.4byte fn_802A9024
	.4byte 0x0000009C
	.4byte "@etb_80006D0C"
.endobj "@eti_80009F88"

# 0x802A9024..0x802A90C0 | size: 0x9C
.text
.balign 4

# .text:0x0 | 0x802A9024 | size: 0x9C
.fn fn_802A9024, global
/* 802A9024 0029EDA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A9028 0029EDA8  7C 08 02 A6 */	mflr r0
/* 802A902C 0029EDAC  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A9030 0029EDB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A9034 0029EDB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A9038 0029EDB8  7C 9F 23 78 */	mr r31, r4
/* 802A903C 0029EDBC  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802A9040 0029EDC0  7C 7E 1B 78 */	mr r30, r3
/* 802A9044 0029EDC4  41 82 00 60 */	beq .L_802A90A4
/* 802A9048 0029EDC8  41 82 00 34 */	beq .L_802A907C
/* 802A904C 0029EDCC  34 03 00 0C */	addic. r0, r3, 0xc
/* 802A9050 0029EDD0  41 82 00 2C */	beq .L_802A907C
/* 802A9054 0029EDD4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802A9058 0029EDD8  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802A905C 0029EDDC  40 82 00 20 */	bne .L_802A907C
/* 802A9060 0029EDE0  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 802A9064 0029EDE4  38 C0 00 15 */	li r6, 0x15
/* 802A9068 0029EDE8  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802A906C 0029EDEC  54 00 00 BE */	clrlwi r0, r0, 2
/* 802A9070 0029EDF0  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 802A9074 0029EDF4  1C A0 00 0C */	mulli r5, r0, 0xc
/* 802A9078 0029EDF8  4B FD 5A 45 */	bl fn_8027EABC
.L_802A907C:
/* 802A907C 0029EDFC  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802A9080 0029EE00  40 81 00 24 */	ble .L_802A90A4
/* 802A9084 0029EE04  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A9088 0029EE08  7F C4 F3 78 */	mr r4, r30
/* 802A908C 0029EE0C  A0 BE 00 04 */	lhz r5, 0x4(r30)
/* 802A9090 0029EE10  38 C0 00 1D */	li r6, 0x1d
/* 802A9094 0029EE14  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A9098 0029EE18  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A909C 0029EE1C  7D 89 03 A6 */	mtctr r12
/* 802A90A0 0029EE20  4E 80 04 21 */	bctrl
.L_802A90A4:
/* 802A90A4 0029EE24  7F C3 F3 78 */	mr r3, r30
/* 802A90A8 0029EE28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A90AC 0029EE2C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802A90B0 0029EE30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A90B4 0029EE34  7C 08 03 A6 */	mtlr r0
/* 802A90B8 0029EE38  38 21 00 10 */	addi r1, r1, 0x10
/* 802A90BC 0029EE3C  4E 80 00 20 */	blr
.endfn fn_802A9024
