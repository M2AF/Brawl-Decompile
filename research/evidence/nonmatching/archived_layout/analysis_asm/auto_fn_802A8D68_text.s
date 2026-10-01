.include "macros.inc"
.file "auto_fn_802A8D68_text"

# 0x80006CCC..0x80006CD4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006CCC | size: 0x8
.obj "@etb_80006CCC", local
.hidden "@etb_80006CCC"
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
.endobj "@etb_80006CCC"

# 0x80009F58..0x80009F64 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009F58 | size: 0xC
.obj "@eti_80009F58", local
.hidden "@eti_80009F58"
	.4byte fn_802A8D68
	.4byte 0x000000A0
	.4byte "@etb_80006CCC"
.endobj "@eti_80009F58"

# 0x802A8D68..0x802A8E08 | size: 0xA0
.text
.balign 4

# .text:0x0 | 0x802A8D68 | size: 0xA0
.fn fn_802A8D68, global
/* 802A8D68 0029EAE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A8D6C 0029EAEC  7C 08 02 A6 */	mflr r0
/* 802A8D70 0029EAF0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A8D74 0029EAF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A8D78 0029EAF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A8D7C 0029EAFC  7C 9F 23 78 */	mr r31, r4
/* 802A8D80 0029EB00  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802A8D84 0029EB04  7C 7E 1B 78 */	mr r30, r3
/* 802A8D88 0029EB08  41 82 00 64 */	beq .L_802A8DEC
/* 802A8D8C 0029EB0C  41 82 00 38 */	beq .L_802A8DC4
/* 802A8D90 0029EB10  41 82 00 34 */	beq .L_802A8DC4
/* 802A8D94 0029EB14  34 03 00 0C */	addic. r0, r3, 0xc
/* 802A8D98 0029EB18  41 82 00 2C */	beq .L_802A8DC4
/* 802A8D9C 0029EB1C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802A8DA0 0029EB20  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802A8DA4 0029EB24  40 82 00 20 */	bne .L_802A8DC4
/* 802A8DA8 0029EB28  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 802A8DAC 0029EB2C  38 C0 00 15 */	li r6, 0x15
/* 802A8DB0 0029EB30  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802A8DB4 0029EB34  54 00 00 BE */	clrlwi r0, r0, 2
/* 802A8DB8 0029EB38  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 802A8DBC 0029EB3C  1C A0 00 0C */	mulli r5, r0, 0xc
/* 802A8DC0 0029EB40  4B FD 5C FD */	bl fn_8027EABC
.L_802A8DC4:
/* 802A8DC4 0029EB44  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802A8DC8 0029EB48  40 81 00 24 */	ble .L_802A8DEC
/* 802A8DCC 0029EB4C  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A8DD0 0029EB50  7F C4 F3 78 */	mr r4, r30
/* 802A8DD4 0029EB54  A0 BE 00 04 */	lhz r5, 0x4(r30)
/* 802A8DD8 0029EB58  38 C0 00 1D */	li r6, 0x1d
/* 802A8DDC 0029EB5C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A8DE0 0029EB60  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A8DE4 0029EB64  7D 89 03 A6 */	mtctr r12
/* 802A8DE8 0029EB68  4E 80 04 21 */	bctrl
.L_802A8DEC:
/* 802A8DEC 0029EB6C  7F C3 F3 78 */	mr r3, r30
/* 802A8DF0 0029EB70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A8DF4 0029EB74  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802A8DF8 0029EB78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A8DFC 0029EB7C  7C 08 03 A6 */	mtlr r0
/* 802A8E00 0029EB80  38 21 00 10 */	addi r1, r1, 0x10
/* 802A8E04 0029EB84  4E 80 00 20 */	blr
.endfn fn_802A8D68
