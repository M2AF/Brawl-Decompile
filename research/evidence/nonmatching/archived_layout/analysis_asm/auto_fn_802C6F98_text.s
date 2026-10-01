.include "macros.inc"
.file "auto_fn_802C6F98_text"

# 0x80007F00..0x80007F08 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007F00 | size: 0x8
.obj "@etb_80007F00", local
.hidden "@etb_80007F00"
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
.endobj "@etb_80007F00"

# 0x8000AC48..0x8000AC54 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AC48 | size: 0xC
.obj "@eti_8000AC48", local
.hidden "@eti_8000AC48"
	.4byte fn_802C6F98
	.4byte 0x000000CC
	.4byte "@etb_80007F00"
.endobj "@eti_8000AC48"

# 0x802C6F98..0x802C7064 | size: 0xCC
.text
.balign 4

# .text:0x0 | 0x802C6F98 | size: 0xCC
.fn fn_802C6F98, global
/* 802C6F98 002BCD18  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802C6F9C 002BCD1C  7C 08 02 A6 */	mflr r0
/* 802C6FA0 002BCD20  3C 80 80 2C */	lis r4, fn_802C7064@ha
/* 802C6FA4 002BCD24  3C C0 80 2D */	lis r6, fn_802C83DC@ha
/* 802C6FA8 002BCD28  90 01 00 44 */	stw r0, 0x44(r1)
/* 802C6FAC 002BCD2C  3D 00 80 2D */	lis r8, fn_802C846C@ha
/* 802C6FB0 002BCD30  3C E0 80 2D */	lis r7, fn_802C84B4@ha
/* 802C6FB4 002BCD34  38 84 70 64 */	addi r4, r4, fn_802C7064@l
/* 802C6FB8 002BCD38  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802C6FBC 002BCD3C  38 C6 83 DC */	addi r6, r6, fn_802C83DC@l
/* 802C6FC0 002BCD40  39 08 84 6C */	addi r8, r8, fn_802C846C@l
/* 802C6FC4 002BCD44  38 E7 84 B4 */	addi r7, r7, fn_802C84B4@l
/* 802C6FC8 002BCD48  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802C6FCC 002BCD4C  3B E0 00 00 */	li r31, 0x0
/* 802C6FD0 002BCD50  38 00 00 01 */	li r0, 0x1
/* 802C6FD4 002BCD54  7C 7E 1B 78 */	mr r30, r3
/* 802C6FD8 002BCD58  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802C6FDC 002BCD5C  38 81 00 1C */	addi r4, r1, 0x1c
/* 802C6FE0 002BCD60  38 A0 00 06 */	li r5, 0x6
/* 802C6FE4 002BCD64  90 C1 00 20 */	stw r6, 0x20(r1)
/* 802C6FE8 002BCD68  38 C0 00 04 */	li r6, 0x4
/* 802C6FEC 002BCD6C  91 01 00 24 */	stw r8, 0x24(r1)
/* 802C6FF0 002BCD70  90 E1 00 28 */	stw r7, 0x28(r1)
/* 802C6FF4 002BCD74  98 01 00 2C */	stb r0, 0x2c(r1)
/* 802C6FF8 002BCD78  9B E1 00 2D */	stb r31, 0x2d(r1)
/* 802C6FFC 002BCD7C  48 00 50 F1 */	bl fn_802CC0EC
/* 802C7000 002BCD80  3C 60 80 2C */	lis r3, fn_802C7178@ha
/* 802C7004 002BCD84  3C A0 80 2C */	lis r5, fn_802C7D04@ha
/* 802C7008 002BCD88  3D 00 80 2C */	lis r8, fn_802C76E4@ha
/* 802C700C 002BCD8C  3C E0 80 2B */	lis r7, fn_802B7FD0@ha
/* 802C7010 002BCD90  38 63 71 78 */	addi r3, r3, fn_802C7178@l
/* 802C7014 002BCD94  38 A5 7D 04 */	addi r5, r5, fn_802C7D04@l
/* 802C7018 002BCD98  39 08 76 E4 */	addi r8, r8, fn_802C76E4@l
/* 802C701C 002BCD9C  38 E7 7F D0 */	addi r7, r7, fn_802B7FD0@l
/* 802C7020 002BCDA0  90 61 00 08 */	stw r3, 0x8(r1)
/* 802C7024 002BCDA4  7F C3 F3 78 */	mr r3, r30
/* 802C7028 002BCDA8  38 81 00 08 */	addi r4, r1, 0x8
/* 802C702C 002BCDAC  38 C0 00 06 */	li r6, 0x6
/* 802C7030 002BCDB0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 802C7034 002BCDB4  38 A0 00 04 */	li r5, 0x4
/* 802C7038 002BCDB8  91 01 00 10 */	stw r8, 0x10(r1)
/* 802C703C 002BCDBC  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802C7040 002BCDC0  9B E1 00 18 */	stb r31, 0x18(r1)
/* 802C7044 002BCDC4  9B E1 00 19 */	stb r31, 0x19(r1)
/* 802C7048 002BCDC8  48 00 50 A5 */	bl fn_802CC0EC
/* 802C704C 002BCDCC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802C7050 002BCDD0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802C7054 002BCDD4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802C7058 002BCDD8  7C 08 03 A6 */	mtlr r0
/* 802C705C 002BCDDC  38 21 00 40 */	addi r1, r1, 0x40
/* 802C7060 002BCDE0  4E 80 00 20 */	blr
.endfn fn_802C6F98
