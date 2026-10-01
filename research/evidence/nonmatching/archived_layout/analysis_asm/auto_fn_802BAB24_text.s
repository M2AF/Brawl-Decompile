.include "macros.inc"
.file "auto_fn_802BAB24_text"

# 0x80007854..0x8000785C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007854 | size: 0x8
.obj "@etb_80007854", local
.hidden "@etb_80007854"
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
.endobj "@etb_80007854"

# 0x8000A720..0x8000A72C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A720 | size: 0xC
.obj "@eti_8000A720", local
.hidden "@eti_8000A720"
	.4byte fn_802BAB24
	.4byte 0x000000A0
	.4byte "@etb_80007854"
.endobj "@eti_8000A720"

# 0x802BAB24..0x802BABC4 | size: 0xA0
.text
.balign 4

# .text:0x0 | 0x802BAB24 | size: 0xA0
.fn fn_802BAB24, global
/* 802BAB24 002B08A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BAB28 002B08A8  7C 08 02 A6 */	mflr r0
/* 802BAB2C 002B08AC  2C 03 00 00 */	cmpwi r3, 0x0
/* 802BAB30 002B08B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BAB34 002B08B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BAB38 002B08B8  7C 9F 23 78 */	mr r31, r4
/* 802BAB3C 002B08BC  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802BAB40 002B08C0  7C 7E 1B 78 */	mr r30, r3
/* 802BAB44 002B08C4  41 82 00 64 */	beq .L_802BABA8
/* 802BAB48 002B08C8  41 82 00 38 */	beq .L_802BAB80
/* 802BAB4C 002B08CC  41 82 00 34 */	beq .L_802BAB80
/* 802BAB50 002B08D0  34 03 00 0C */	addic. r0, r3, 0xc
/* 802BAB54 002B08D4  41 82 00 2C */	beq .L_802BAB80
/* 802BAB58 002B08D8  41 82 00 28 */	beq .L_802BAB80
/* 802BAB5C 002B08DC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802BAB60 002B08E0  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802BAB64 002B08E4  40 82 00 1C */	bne .L_802BAB80
/* 802BAB68 002B08E8  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 802BAB6C 002B08EC  38 C0 00 15 */	li r6, 0x15
/* 802BAB70 002B08F0  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802BAB74 002B08F4  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 802BAB78 002B08F8  54 05 08 7C */	clrlslwi r5, r0, 2, 1
/* 802BAB7C 002B08FC  4B FC 3F 41 */	bl fn_8027EABC
.L_802BAB80:
/* 802BAB80 002B0900  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802BAB84 002B0904  40 81 00 24 */	ble .L_802BABA8
/* 802BAB88 002B0908  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802BAB8C 002B090C  7F C4 F3 78 */	mr r4, r30
/* 802BAB90 002B0910  A0 BE 00 04 */	lhz r5, 0x4(r30)
/* 802BAB94 002B0914  38 C0 00 1D */	li r6, 0x1d
/* 802BAB98 002B0918  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802BAB9C 002B091C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802BABA0 002B0920  7D 89 03 A6 */	mtctr r12
/* 802BABA4 002B0924  4E 80 04 21 */	bctrl
.L_802BABA8:
/* 802BABA8 002B0928  7F C3 F3 78 */	mr r3, r30
/* 802BABAC 002B092C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BABB0 002B0930  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802BABB4 002B0934  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BABB8 002B0938  7C 08 03 A6 */	mtlr r0
/* 802BABBC 002B093C  38 21 00 10 */	addi r1, r1, 0x10
/* 802BABC0 002B0940  4E 80 00 20 */	blr
.endfn fn_802BAB24
