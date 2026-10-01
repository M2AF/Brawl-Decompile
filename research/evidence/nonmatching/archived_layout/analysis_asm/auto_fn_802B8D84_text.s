.include "macros.inc"
.file "auto_fn_802B8D84_text"

# 0x800076F4..0x800076FC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800076F4 | size: 0x8
.obj "@etb_800076F4", local
.hidden "@etb_800076F4"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800076F4"

# 0x8000A630..0x8000A63C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A630 | size: 0xC
.obj "@eti_8000A630", local
.hidden "@eti_8000A630"
	.4byte fn_802B8D84
	.4byte 0x000000B0
	.4byte "@etb_800076F4"
.endobj "@eti_8000A630"

# 0x802B8D84..0x802B8E34 | size: 0xB0
.text
.balign 4

# .text:0x0 | 0x802B8D84 | size: 0xB0
.fn fn_802B8D84, global
/* 802B8D84 002AEB04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B8D88 002AEB08  7C 08 02 A6 */	mflr r0
/* 802B8D8C 002AEB0C  3D 20 80 53 */	lis r9, lbl_80532448@ha
/* 802B8D90 002AEB10  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B8D94 002AEB14  39 29 24 48 */	addi r9, r9, lbl_80532448@l
/* 802B8D98 002AEB18  81 09 00 04 */	lwz r8, 0x4(r9)
/* 802B8D9C 002AEB1C  80 E9 00 0C */	lwz r7, 0xc(r9)
/* 802B8DA0 002AEB20  7C E0 42 78 */	xor r0, r7, r8
/* 802B8DA4 002AEB24  7C 00 00 34 */	cntlzw r0, r0
/* 802B8DA8 002AEB28  7C E0 00 30 */	slw r0, r7, r0
/* 802B8DAC 002AEB2C  54 00 0F FE */	srwi r0, r0, 31
/* 802B8DB0 002AEB30  7C 00 07 75 */	extsb. r0, r0
/* 802B8DB4 002AEB34  41 82 00 24 */	beq .L_802B8DD8
/* 802B8DB8 002AEB38  3C E0 80 41 */	lis r7, lbl_8040FEB8@ha
/* 802B8DBC 002AEB3C  38 E7 FE B8 */	addi r7, r7, lbl_8040FEB8@l
/* 802B8DC0 002AEB40  38 07 00 0A */	addi r0, r7, 0xa
/* 802B8DC4 002AEB44  90 08 00 00 */	stw r0, 0x0(r8)
/* 802B8DC8 002AEB48  7C EC 42 E6 */	mftb r7, 268
/* 802B8DCC 002AEB4C  38 08 00 0C */	addi r0, r8, 0xc
/* 802B8DD0 002AEB50  90 E8 00 04 */	stw r7, 0x4(r8)
/* 802B8DD4 002AEB54  90 09 00 04 */	stw r0, 0x4(r9)
.L_802B8DD8:
/* 802B8DD8 002AEB58  4B FF 82 09 */	bl fn_802B0FE0
/* 802B8DDC 002AEB5C  3C A0 80 53 */	lis r5, lbl_80532448@ha
/* 802B8DE0 002AEB60  38 A5 24 48 */	addi r5, r5, lbl_80532448@l
/* 802B8DE4 002AEB64  80 85 00 04 */	lwz r4, 0x4(r5)
/* 802B8DE8 002AEB68  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802B8DEC 002AEB6C  7C 60 22 78 */	xor r0, r3, r4
/* 802B8DF0 002AEB70  7C 00 00 34 */	cntlzw r0, r0
/* 802B8DF4 002AEB74  7C 60 00 30 */	slw r0, r3, r0
/* 802B8DF8 002AEB78  54 00 0F FE */	srwi r0, r0, 31
/* 802B8DFC 002AEB7C  7C 00 07 75 */	extsb. r0, r0
/* 802B8E00 002AEB80  41 82 00 24 */	beq .L_802B8E24
/* 802B8E04 002AEB84  3C 60 80 41 */	lis r3, lbl_8040FEB8@ha
/* 802B8E08 002AEB88  38 63 FE B8 */	addi r3, r3, lbl_8040FEB8@l
/* 802B8E0C 002AEB8C  38 03 00 07 */	addi r0, r3, 0x7
/* 802B8E10 002AEB90  90 04 00 00 */	stw r0, 0x0(r4)
/* 802B8E14 002AEB94  7C 6C 42 E6 */	mftb r3, 268
/* 802B8E18 002AEB98  38 04 00 0C */	addi r0, r4, 0xc
/* 802B8E1C 002AEB9C  90 64 00 04 */	stw r3, 0x4(r4)
/* 802B8E20 002AEBA0  90 05 00 04 */	stw r0, 0x4(r5)
.L_802B8E24:
/* 802B8E24 002AEBA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B8E28 002AEBA8  7C 08 03 A6 */	mtlr r0
/* 802B8E2C 002AEBAC  38 21 00 10 */	addi r1, r1, 0x10
/* 802B8E30 002AEBB0  4E 80 00 20 */	blr
.endfn fn_802B8D84
