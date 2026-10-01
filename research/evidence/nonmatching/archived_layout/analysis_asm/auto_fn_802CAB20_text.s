.include "macros.inc"
.file "auto_fn_802CAB20_text"

# 0x800081A8..0x800081B0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800081A8 | size: 0x8
.obj "@etb_800081A8", local
.hidden "@etb_800081A8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r24-r31
 */
	.4byte 0x40080000
	.4byte 0x00000000
.endobj "@etb_800081A8"

# 0x8000AE4C..0x8000AE58 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AE4C | size: 0xC
.obj "@eti_8000AE4C", local
.hidden "@eti_8000AE4C"
	.4byte fn_802CAB20
	.4byte 0x000000DC
	.4byte "@etb_800081A8"
.endobj "@eti_8000AE4C"

# 0x802CAB20..0x802CABFC | size: 0xDC
.text
.balign 4

# .text:0x0 | 0x802CAB20 | size: 0xDC
.fn fn_802CAB20, global
/* 802CAB20 002C08A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802CAB24 002C08A4  7C 08 02 A6 */	mflr r0
/* 802CAB28 002C08A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802CAB2C 002C08AC  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 802CAB30 002C08B0  7C 9E 23 78 */	mr r30, r4
/* 802CAB34 002C08B4  83 03 00 08 */	lwz r24, 0x8(r3)
/* 802CAB38 002C08B8  7C BF 2B 78 */	mr r31, r5
/* 802CAB3C 002C08BC  83 63 00 00 */	lwz r27, 0x0(r3)
/* 802CAB40 002C08C0  83 23 00 0C */	lwz r25, 0xc(r3)
/* 802CAB44 002C08C4  83 43 00 04 */	lwz r26, 0x4(r3)
/* 802CAB48 002C08C8  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 802CAB4C 002C08CC  83 98 00 00 */	lwz r28, 0x0(r24)
/* 802CAB50 002C08D0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CAB54 002C08D4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802CAB58 002C08D8  7D 89 03 A6 */	mtctr r12
/* 802CAB5C 002C08DC  4E 80 04 21 */	bctrl
/* 802CAB60 002C08E0  7C 7D 1B 78 */	mr r29, r3
/* 802CAB64 002C08E4  80 7A 00 00 */	lwz r3, 0x0(r26)
/* 802CAB68 002C08E8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CAB6C 002C08EC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802CAB70 002C08F0  7D 89 03 A6 */	mtctr r12
/* 802CAB74 002C08F4  4E 80 04 21 */	bctrl
/* 802CAB78 002C08F8  88 18 00 0C */	lbz r0, 0xc(r24)
/* 802CAB7C 002C08FC  7C 68 1B 78 */	mr r8, r3
/* 802CAB80 002C0900  7F 63 DB 78 */	mr r3, r27
/* 802CAB84 002C0904  7F 44 D3 78 */	mr r4, r26
/* 802CAB88 002C0908  7C 07 07 74 */	extsb r7, r0
/* 802CAB8C 002C090C  7F 05 C3 78 */	mr r5, r24
/* 802CAB90 002C0910  7C 07 00 D0 */	neg r0, r7
/* 802CAB94 002C0914  7F 26 CB 78 */	mr r6, r25
/* 802CAB98 002C0918  7C 00 3B 78 */	or r0, r0, r7
/* 802CAB9C 002C091C  54 00 0F FF */	srwi. r0, r0, 31
/* 802CABA0 002C0920  41 82 00 0C */	beq .L_802CABAC
/* 802CABA4 002C0924  38 1C 05 90 */	addi r0, r28, 0x590
/* 802CABA8 002C0928  48 00 00 08 */	b .L_802CABB0
.L_802CABAC:
/* 802CABAC 002C092C  38 1C 01 90 */	addi r0, r28, 0x190
.L_802CABB0:
/* 802CABB0 002C0930  57 A7 28 34 */	slwi r7, r29, 5
/* 802CABB4 002C0934  7C 08 02 14 */	add r0, r8, r0
/* 802CABB8 002C0938  7C 07 00 AE */	lbzx r0, r7, r0
/* 802CABBC 002C093C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 802CABC0 002C0940  7C FC 02 14 */	add r7, r28, r0
/* 802CABC4 002C0944  81 87 09 90 */	lwz r12, 0x990(r7)
/* 802CABC8 002C0948  7D 89 03 A6 */	mtctr r12
/* 802CABCC 002C094C  4E 80 04 21 */	bctrl
/* 802CABD0 002C0950  38 80 00 06 */	li r4, 0x6
/* 802CABD4 002C0954  38 00 00 FF */	li r0, 0xff
/* 802CABD8 002C0958  90 7E 00 04 */	stw r3, 0x4(r30)
/* 802CABDC 002C095C  7F E3 FB 78 */	mr r3, r31
/* 802CABE0 002C0960  98 9E 00 00 */	stb r4, 0x0(r30)
/* 802CABE4 002C0964  98 1E 00 02 */	stb r0, 0x2(r30)
/* 802CABE8 002C0968  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 802CABEC 002C096C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802CABF0 002C0970  7C 08 03 A6 */	mtlr r0
/* 802CABF4 002C0974  38 21 00 30 */	addi r1, r1, 0x30
/* 802CABF8 002C0978  4E 80 00 20 */	blr
.endfn fn_802CAB20
