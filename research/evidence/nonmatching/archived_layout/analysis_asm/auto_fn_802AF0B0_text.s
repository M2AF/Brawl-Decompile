.include "macros.inc"
.file "auto_fn_802AF0B0_text"

# 0x80007094..0x8000709C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007094 | size: 0x8
.obj "@etb_80007094", local
.hidden "@etb_80007094"
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
.endobj "@etb_80007094"

# 0x8000A234..0x8000A240 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A234 | size: 0xC
.obj "@eti_8000A234", local
.hidden "@eti_8000A234"
	.4byte fn_802AF0B0
	.4byte 0x00000098
	.4byte "@etb_80007094"
.endobj "@eti_8000A234"

# 0x802AF0B0..0x802AF148 | size: 0x98
.text
.balign 4

# .text:0x0 | 0x802AF0B0 | size: 0x98
.fn fn_802AF0B0, global
/* 802AF0B0 002A4E30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802AF0B4 002A4E34  7C 08 02 A6 */	mflr r0
/* 802AF0B8 002A4E38  90 01 00 34 */	stw r0, 0x34(r1)
/* 802AF0BC 002A4E3C  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 802AF0C0 002A4E40  7C 9B 23 78 */	mr r27, r4
/* 802AF0C4 002A4E44  7C 7A 1B 78 */	mr r26, r3
/* 802AF0C8 002A4E48  3B A0 00 00 */	li r29, 0x0
/* 802AF0CC 002A4E4C  7F 7E DB 78 */	mr r30, r27
/* 802AF0D0 002A4E50  3B E0 00 00 */	li r31, 0x0
/* 802AF0D4 002A4E54  48 00 00 50 */	b .L_802AF124
.L_802AF0D8:
/* 802AF0D8 002A4E58  80 7A 00 10 */	lwz r3, 0x10(r26)
/* 802AF0DC 002A4E5C  7F C4 F3 78 */	mr r4, r30
/* 802AF0E0 002A4E60  7F 83 F8 2E */	lwzx r28, r3, r31
/* 802AF0E4 002A4E64  81 9C 00 00 */	lwz r12, 0x0(r28)
/* 802AF0E8 002A4E68  7F 83 E3 78 */	mr r3, r28
/* 802AF0EC 002A4E6C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802AF0F0 002A4E70  7D 89 03 A6 */	mtctr r12
/* 802AF0F4 002A4E74  4E 80 04 21 */	bctrl
/* 802AF0F8 002A4E78  81 9C 00 00 */	lwz r12, 0x0(r28)
/* 802AF0FC 002A4E7C  7F 83 E3 78 */	mr r3, r28
/* 802AF100 002A4E80  38 81 00 08 */	addi r4, r1, 0x8
/* 802AF104 002A4E84  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802AF108 002A4E88  7D 89 03 A6 */	mtctr r12
/* 802AF10C 002A4E8C  4E 80 04 21 */	bctrl
/* 802AF110 002A4E90  80 01 00 08 */	lwz r0, 0x8(r1)
/* 802AF114 002A4E94  3B FF 00 08 */	addi r31, r31, 0x8
/* 802AF118 002A4E98  3B BD 00 01 */	addi r29, r29, 0x1
/* 802AF11C 002A4E9C  54 00 20 36 */	slwi r0, r0, 4
/* 802AF120 002A4EA0  7F DE 02 14 */	add r30, r30, r0
.L_802AF124:
/* 802AF124 002A4EA4  80 1A 00 14 */	lwz r0, 0x14(r26)
/* 802AF128 002A4EA8  7C 1D 00 00 */	cmpw r29, r0
/* 802AF12C 002A4EAC  41 80 FF AC */	blt .L_802AF0D8
/* 802AF130 002A4EB0  7F 63 DB 78 */	mr r3, r27
/* 802AF134 002A4EB4  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 802AF138 002A4EB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802AF13C 002A4EBC  7C 08 03 A6 */	mtlr r0
/* 802AF140 002A4EC0  38 21 00 30 */	addi r1, r1, 0x30
/* 802AF144 002A4EC4  4E 80 00 20 */	blr
.endfn fn_802AF0B0
