.include "macros.inc"
.file "auto_fn_802AEF60_text"

# 0x80007084..0x8000708C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007084 | size: 0x8
.obj "@etb_80007084", local
.hidden "@etb_80007084"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r26-r31
 */
	.4byte 0x30080000
	.4byte 0x00000000
.endobj "@etb_80007084"

# 0x8000A21C..0x8000A228 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A21C | size: 0xC
.obj "@eti_8000A21C", local
.hidden "@eti_8000A21C"
	.4byte fn_802AEF60
	.4byte 0x00000098
	.4byte "@etb_80007084"
.endobj "@eti_8000A21C"

# 0x802AEF60..0x802AEFF8 | size: 0x98
.text
.balign 4

# .text:0x0 | 0x802AEF60 | size: 0x98
.fn fn_802AEF60, global
/* 802AEF60 002A4CE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802AEF64 002A4CE4  7C 08 02 A6 */	mflr r0
/* 802AEF68 002A4CE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802AEF6C 002A4CEC  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 802AEF70 002A4CF0  7C 7A 1B 78 */	mr r26, r3
/* 802AEF74 002A4CF4  7C 9B 23 78 */	mr r27, r4
/* 802AEF78 002A4CF8  7C BC 2B 78 */	mr r28, r5
/* 802AEF7C 002A4CFC  7C DD 33 78 */	mr r29, r6
/* 802AEF80 002A4D00  3B E0 00 00 */	li r31, 0x0
/* 802AEF84 002A4D04  48 00 00 58 */	b .L_802AEFDC
.L_802AEF88:
/* 802AEF88 002A4D08  A0 7B 00 00 */	lhz r3, 0x0(r27)
/* 802AEF8C 002A4D0C  7F A6 EB 78 */	mr r6, r29
/* 802AEF90 002A4D10  38 81 00 08 */	addi r4, r1, 0x8
/* 802AEF94 002A4D14  38 A0 00 01 */	li r5, 0x1
/* 802AEF98 002A4D18  54 60 06 3E */	clrlwi r0, r3, 24
/* 802AEF9C 002A4D1C  7C 7E 46 70 */	srawi r30, r3, 8
/* 802AEFA0 002A4D20  B0 01 00 08 */	sth r0, 0x8(r1)
/* 802AEFA4 002A4D24  57 C0 18 38 */	slwi r0, r30, 3
/* 802AEFA8 002A4D28  80 7A 00 10 */	lwz r3, 0x10(r26)
/* 802AEFAC 002A4D2C  7C 63 00 2E */	lwzx r3, r3, r0
/* 802AEFB0 002A4D30  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802AEFB4 002A4D34  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802AEFB8 002A4D38  7D 89 03 A6 */	mtctr r12
/* 802AEFBC 002A4D3C  4E 80 04 21 */	bctrl
/* 802AEFC0 002A4D40  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 802AEFC4 002A4D44  57 C0 40 2E */	slwi r0, r30, 8
/* 802AEFC8 002A4D48  3B 7B 00 02 */	addi r27, r27, 0x2
/* 802AEFCC 002A4D4C  3B FF 00 01 */	addi r31, r31, 0x1
/* 802AEFD0 002A4D50  7C 63 02 14 */	add r3, r3, r0
/* 802AEFD4 002A4D54  90 7D 00 0C */	stw r3, 0xc(r29)
/* 802AEFD8 002A4D58  3B BD 00 10 */	addi r29, r29, 0x10
.L_802AEFDC:
/* 802AEFDC 002A4D5C  7C 1F E0 00 */	cmpw r31, r28
/* 802AEFE0 002A4D60  41 80 FF A8 */	blt .L_802AEF88
/* 802AEFE4 002A4D64  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 802AEFE8 002A4D68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802AEFEC 002A4D6C  7C 08 03 A6 */	mtlr r0
/* 802AEFF0 002A4D70  38 21 00 30 */	addi r1, r1, 0x30
/* 802AEFF4 002A4D74  4E 80 00 20 */	blr
.endfn fn_802AEF60
