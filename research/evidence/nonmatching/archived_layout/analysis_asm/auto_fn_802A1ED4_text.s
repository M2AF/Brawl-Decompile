.include "macros.inc"
.file "auto_fn_802A1ED4_text"

# 0x80006844..0x80006860 | size: 0x1C
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006844 | size: 0x1C
.obj "@etb_80006844", local
.hidden "@etb_80006844"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r26-r31
 * 
 * PC actions:
 * PC=0000006C:000000DC, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DESTROYBASE
 * Member: 0x0(r31)
 * Dtor: "dtor_802A0DC4"
 * Has end bit
 */
	.4byte 0x30080000
	.4byte 0x0000006C
	.4byte 0x001C0010
	.4byte 0x00000000
	.4byte 0x8680001F
	.4byte 0x00000000
	.4byte dtor_802A0DC4
.endobj "@etb_80006844"

# 0x80009C4C..0x80009C58 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009C4C | size: 0xC
.obj "@eti_80009C4C", local
.hidden "@eti_80009C4C"
	.4byte fn_802A1ED4
	.4byte 0x00000100
	.4byte "@etb_80006844"
.endobj "@eti_80009C4C"

# 0x802A1ED4..0x802A1FD4 | size: 0x100
.text
.balign 4

# .text:0x0 | 0x802A1ED4 | size: 0x100
.fn fn_802A1ED4, global
/* 802A1ED4 00297C54  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A1ED8 00297C58  7C 08 02 A6 */	mflr r0
/* 802A1EDC 00297C5C  3D 20 80 48 */	lis r9, lbl_804867BC@ha
/* 802A1EE0 00297C60  81 04 00 08 */	lwz r8, 0x8(r4)
/* 802A1EE4 00297C64  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A1EE8 00297C68  38 00 00 01 */	li r0, 0x1
/* 802A1EEC 00297C6C  39 29 67 BC */	addi r9, r9, lbl_804867BC@l
/* 802A1EF0 00297C70  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 802A1EF4 00297C74  7C BA 2B 78 */	mr r26, r5
/* 802A1EF8 00297C78  80 A4 00 00 */	lwz r5, 0x0(r4)
/* 802A1EFC 00297C7C  7C 7F 1B 78 */	mr r31, r3
/* 802A1F00 00297C80  7C DB 33 78 */	mr r27, r6
/* 802A1F04 00297C84  7C FC 3B 78 */	mr r28, r7
/* 802A1F08 00297C88  B0 03 00 06 */	sth r0, 0x6(r3)
/* 802A1F0C 00297C8C  80 04 00 04 */	lwz r0, 0x4(r4)
/* 802A1F10 00297C90  90 E3 00 08 */	stw r7, 0x8(r3)
/* 802A1F14 00297C94  91 23 00 00 */	stw r9, 0x0(r3)
/* 802A1F18 00297C98  90 81 00 14 */	stw r4, 0x14(r1)
/* 802A1F1C 00297C9C  91 01 00 10 */	stw r8, 0x10(r1)
/* 802A1F20 00297CA0  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802A1F24 00297CA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 802A1F28 00297CA8  90 61 00 08 */	stw r3, 0x8(r1)
/* 802A1F2C 00297CAC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A1F30 00297CB0  83 A6 00 00 */	lwz r29, 0x0(r6)
/* 802A1F34 00297CB4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802A1F38 00297CB8  7D 89 03 A6 */	mtctr r12
/* 802A1F3C 00297CBC  4E 80 04 21 */	bctrl
/* 802A1F40 00297CC0  7C 7E 1B 78 */	mr r30, r3
/* 802A1F44 00297CC4  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 802A1F48 00297CC8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A1F4C 00297CCC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802A1F50 00297CD0  7D 89 03 A6 */	mtctr r12
/* 802A1F54 00297CD4  4E 80 04 21 */	bctrl
/* 802A1F58 00297CD8  88 1B 00 0C */	lbz r0, 0xc(r27)
/* 802A1F5C 00297CDC  7C 68 1B 78 */	mr r8, r3
/* 802A1F60 00297CE0  7F 44 D3 78 */	mr r4, r26
/* 802A1F64 00297CE4  7F 65 DB 78 */	mr r5, r27
/* 802A1F68 00297CE8  7C 07 07 74 */	extsb r7, r0
/* 802A1F6C 00297CEC  7F 86 E3 78 */	mr r6, r28
/* 802A1F70 00297CF0  7C 07 00 D0 */	neg r0, r7
/* 802A1F74 00297CF4  38 61 00 08 */	addi r3, r1, 0x8
/* 802A1F78 00297CF8  7C 00 3B 78 */	or r0, r0, r7
/* 802A1F7C 00297CFC  54 00 0F FF */	srwi. r0, r0, 31
/* 802A1F80 00297D00  41 82 00 0C */	beq .L_802A1F8C
/* 802A1F84 00297D04  38 1D 05 90 */	addi r0, r29, 0x590
/* 802A1F88 00297D08  48 00 00 08 */	b .L_802A1F90
.L_802A1F8C:
/* 802A1F8C 00297D0C  38 1D 01 90 */	addi r0, r29, 0x190
.L_802A1F90:
/* 802A1F90 00297D10  57 C7 28 34 */	slwi r7, r30, 5
/* 802A1F94 00297D14  7C 08 02 14 */	add r0, r8, r0
/* 802A1F98 00297D18  7C 07 00 AE */	lbzx r0, r7, r0
/* 802A1F9C 00297D1C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 802A1FA0 00297D20  7C FD 02 14 */	add r7, r29, r0
/* 802A1FA4 00297D24  81 87 09 90 */	lwz r12, 0x990(r7)
/* 802A1FA8 00297D28  7D 89 03 A6 */	mtctr r12
/* 802A1FAC 00297D2C  4E 80 04 21 */	bctrl
/* 802A1FB0 00297D30  38 00 00 00 */	li r0, 0x0
/* 802A1FB4 00297D34  90 7F 00 0C */	stw r3, 0xc(r31)
/* 802A1FB8 00297D38  7F E3 FB 78 */	mr r3, r31
/* 802A1FBC 00297D3C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802A1FC0 00297D40  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 802A1FC4 00297D44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802A1FC8 00297D48  7C 08 03 A6 */	mtlr r0
/* 802A1FCC 00297D4C  38 21 00 30 */	addi r1, r1, 0x30
/* 802A1FD0 00297D50  4E 80 00 20 */	blr
.endfn fn_802A1ED4
