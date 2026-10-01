.include "macros.inc"
.file "auto_fn_802C0FE8_text"

# 0x80007C48..0x80007C50 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007C48 | size: 0x8
.obj "@etb_80007C48", local
.hidden "@etb_80007C48"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 */
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_80007C48"

# 0x8000A9B4..0x8000A9C0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A9B4 | size: 0xC
.obj "@eti_8000A9B4", local
.hidden "@eti_8000A9B4"
	.4byte fn_802C0FE8
	.4byte 0x00000084
	.4byte "@etb_80007C48"
.endobj "@eti_8000A9B4"

# 0x802C0FE8..0x802C106C | size: 0x84
.text
.balign 4

# .text:0x0 | 0x802C0FE8 | size: 0x84
.fn fn_802C0FE8, global
/* 802C0FE8 002B6D68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C0FEC 002B6D6C  7C 08 02 A6 */	mflr r0
/* 802C0FF0 002B6D70  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C0FF4 002B6D74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C0FF8 002B6D78  3B E0 00 00 */	li r31, 0x0
/* 802C0FFC 002B6D7C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802C1000 002B6D80  3B C0 00 00 */	li r30, 0x0
/* 802C1004 002B6D84  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802C1008 002B6D88  7C 9D 23 78 */	mr r29, r4
/* 802C100C 002B6D8C  93 81 00 10 */	stw r28, 0x10(r1)
/* 802C1010 002B6D90  7C 7C 1B 78 */	mr r28, r3
/* 802C1014 002B6D94  48 00 00 2C */	b .L_802C1040
.L_802C1018:
/* 802C1018 002B6D98  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 802C101C 002B6D9C  7F A4 EB 78 */	mr r4, r29
/* 802C1020 002B6DA0  7C 60 FA 14 */	add r3, r0, r31
/* 802C1024 002B6DA4  80 63 00 04 */	lwz r3, 0x4(r3)
/* 802C1028 002B6DA8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C102C 002B6DAC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802C1030 002B6DB0  7D 89 03 A6 */	mtctr r12
/* 802C1034 002B6DB4  4E 80 04 21 */	bctrl
/* 802C1038 002B6DB8  3B FF 00 08 */	addi r31, r31, 0x8
/* 802C103C 002B6DBC  3B DE 00 01 */	addi r30, r30, 0x1
.L_802C1040:
/* 802C1040 002B6DC0  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 802C1044 002B6DC4  7C 1E 00 00 */	cmpw r30, r0
/* 802C1048 002B6DC8  41 80 FF D0 */	blt .L_802C1018
/* 802C104C 002B6DCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C1050 002B6DD0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C1054 002B6DD4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802C1058 002B6DD8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802C105C 002B6DDC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802C1060 002B6DE0  7C 08 03 A6 */	mtlr r0
/* 802C1064 002B6DE4  38 21 00 20 */	addi r1, r1, 0x20
/* 802C1068 002B6DE8  4E 80 00 20 */	blr
.endfn fn_802C0FE8
