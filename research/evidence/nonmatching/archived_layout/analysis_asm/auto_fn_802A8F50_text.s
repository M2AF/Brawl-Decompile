.include "macros.inc"
.file "auto_fn_802A8F50_text"

# 0x80006CE4..0x80006D0C | size: 0x28
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006CE4 | size: 0x28
.obj "@etb_80006CE4", local
.hidden "@etb_80006CE4"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 * 
 * PC actions:
 * PC=00000070, Action: 000018
 * PC=000000AC, Action: 000020
 * 
 * Exception actions:
 * 000018:
 * Type: DELETEPOINTER
 * Pointer: r31)
 * Dtor: "dtor_802A1FD4"
 * Has end bit
 * 000020:
 * Type: DELETEPOINTER
 * Pointer: r31)
 * Dtor: "dtor_802A1FD4"
 * Has end bit
 */
	.4byte 0x10080000
	.4byte 0x00000070
	.4byte 0x00000018
	.4byte 0x000000AC
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte 0x8A80001F
	.4byte dtor_802A1FD4
	.4byte 0x8A80001F
	.4byte dtor_802A1FD4
.endobj "@etb_80006CE4"

# 0x80009F7C..0x80009F88 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009F7C | size: 0xC
.obj "@eti_80009F7C", local
.hidden "@eti_80009F7C"
	.4byte fn_802A8F50
	.4byte 0x000000D4
	.4byte "@etb_80006CE4"
.endobj "@eti_80009F7C"

# 0x802A8F50..0x802A9024 | size: 0xD4
.text
.balign 4

# .text:0x0 | 0x802A8F50 | size: 0xD4
.fn fn_802A8F50, global
/* 802A8F50 0029ECD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A8F54 0029ECD4  7C 08 02 A6 */	mflr r0
/* 802A8F58 0029ECD8  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 802A8F5C 0029ECDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A8F60 0029ECE0  80 64 00 00 */	lwz r3, 0x0(r4)
/* 802A8F64 0029ECE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A8F68 0029ECE8  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802A8F6C 0029ECEC  7C DE 33 78 */	mr r30, r6
/* 802A8F70 0029ECF0  80 85 00 14 */	lwz r4, 0x14(r5)
/* 802A8F74 0029ECF4  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802A8F78 0029ECF8  80 84 00 24 */	lwz r4, 0x24(r4)
/* 802A8F7C 0029ECFC  80 03 00 24 */	lwz r0, 0x24(r3)
/* 802A8F80 0029ED00  7C 04 00 00 */	cmpw r4, r0
/* 802A8F84 0029ED04  40 80 00 44 */	bge .L_802A8FC8
/* 802A8F88 0029ED08  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A8F8C 0029ED0C  38 80 00 40 */	li r4, 0x40
/* 802A8F90 0029ED10  38 A0 00 1D */	li r5, 0x1d
/* 802A8F94 0029ED14  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A8F98 0029ED18  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802A8F9C 0029ED1C  7D 89 03 A6 */	mtctr r12
/* 802A8FA0 0029ED20  4E 80 04 21 */	bctrl
/* 802A8FA4 0029ED24  38 00 00 40 */	li r0, 0x40
/* 802A8FA8 0029ED28  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A8FAC 0029ED2C  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802A8FB0 0029ED30  7C 7F 1B 78 */	mr r31, r3
/* 802A8FB4 0029ED34  41 82 00 0C */	beq .L_802A8FC0
/* 802A8FB8 0029ED38  7F C4 F3 78 */	mr r4, r30
/* 802A8FBC 0029ED3C  4B FF FE 61 */	bl fn_802A8E1C
.L_802A8FC0:
/* 802A8FC0 0029ED40  7F E3 FB 78 */	mr r3, r31
/* 802A8FC4 0029ED44  48 00 00 48 */	b .L_802A900C
.L_802A8FC8:
/* 802A8FC8 0029ED48  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A8FCC 0029ED4C  38 80 00 40 */	li r4, 0x40
/* 802A8FD0 0029ED50  38 A0 00 1D */	li r5, 0x1d
/* 802A8FD4 0029ED54  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A8FD8 0029ED58  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802A8FDC 0029ED5C  7D 89 03 A6 */	mtctr r12
/* 802A8FE0 0029ED60  4E 80 04 21 */	bctrl
/* 802A8FE4 0029ED64  38 00 00 40 */	li r0, 0x40
/* 802A8FE8 0029ED68  7C 7F 1B 79 */	mr. r31, r3
/* 802A8FEC 0029ED6C  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802A8FF0 0029ED70  41 82 00 18 */	beq .L_802A9008
/* 802A8FF4 0029ED74  7F C4 F3 78 */	mr r4, r30
/* 802A8FF8 0029ED78  4B FF FE 25 */	bl fn_802A8E1C
/* 802A8FFC 0029ED7C  3C 60 80 48 */	lis r3, lbl_80486870@ha
/* 802A9000 0029ED80  38 63 68 70 */	addi r3, r3, lbl_80486870@l
/* 802A9004 0029ED84  90 7F 00 00 */	stw r3, 0x0(r31)
.L_802A9008:
/* 802A9008 0029ED88  7F E3 FB 78 */	mr r3, r31
.L_802A900C:
/* 802A900C 0029ED8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A9010 0029ED90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A9014 0029ED94  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802A9018 0029ED98  7C 08 03 A6 */	mtlr r0
/* 802A901C 0029ED9C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A9020 0029EDA0  4E 80 00 20 */	blr
.endfn fn_802A8F50
