.include "macros.inc"
.file "auto_fn_802AF010_text"

# 0x8000708C..0x80007094 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000708C | size: 0x8
.obj "@etb_8000708C", local
.hidden "@etb_8000708C"
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
.endobj "@etb_8000708C"

# 0x8000A228..0x8000A234 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A228 | size: 0xC
.obj "@eti_8000A228", local
.hidden "@eti_8000A228"
	.4byte fn_802AF010
	.4byte 0x000000A0
	.4byte "@etb_8000708C"
.endobj "@eti_8000A228"

# 0x802AF010..0x802AF0B0 | size: 0xA0
.text
.balign 4

# .text:0x0 | 0x802AF010 | size: 0xA0
.fn fn_802AF010, global
/* 802AF010 002A4D90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AF014 002A4D94  7C 08 02 A6 */	mflr r0
/* 802AF018 002A4D98  38 A0 00 00 */	li r5, 0x0
/* 802AF01C 002A4D9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AF020 002A4DA0  38 00 00 01 */	li r0, 0x1
/* 802AF024 002A4DA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802AF028 002A4DA8  3B E0 00 00 */	li r31, 0x0
/* 802AF02C 002A4DAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802AF030 002A4DB0  3B C0 00 00 */	li r30, 0x0
/* 802AF034 002A4DB4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802AF038 002A4DB8  7C 9D 23 78 */	mr r29, r4
/* 802AF03C 002A4DBC  93 81 00 10 */	stw r28, 0x10(r1)
/* 802AF040 002A4DC0  7C 7C 1B 78 */	mr r28, r3
/* 802AF044 002A4DC4  90 A4 00 00 */	stw r5, 0x0(r4)
/* 802AF048 002A4DC8  98 04 00 04 */	stb r0, 0x4(r4)
/* 802AF04C 002A4DCC  48 00 00 38 */	b .L_802AF084
.L_802AF050:
/* 802AF050 002A4DD0  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 802AF054 002A4DD4  38 81 00 08 */	addi r4, r1, 0x8
/* 802AF058 002A4DD8  7C 63 F8 2E */	lwzx r3, r3, r31
/* 802AF05C 002A4DDC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802AF060 002A4DE0  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802AF064 002A4DE4  7D 89 03 A6 */	mtctr r12
/* 802AF068 002A4DE8  4E 80 04 21 */	bctrl
/* 802AF06C 002A4DEC  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 802AF070 002A4DF0  3B FF 00 08 */	addi r31, r31, 0x8
/* 802AF074 002A4DF4  80 01 00 08 */	lwz r0, 0x8(r1)
/* 802AF078 002A4DF8  3B DE 00 01 */	addi r30, r30, 0x1
/* 802AF07C 002A4DFC  7C 03 02 14 */	add r0, r3, r0
/* 802AF080 002A4E00  90 1D 00 00 */	stw r0, 0x0(r29)
.L_802AF084:
/* 802AF084 002A4E04  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 802AF088 002A4E08  7C 1E 00 00 */	cmpw r30, r0
/* 802AF08C 002A4E0C  41 80 FF C4 */	blt .L_802AF050
/* 802AF090 002A4E10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AF094 002A4E14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802AF098 002A4E18  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802AF09C 002A4E1C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802AF0A0 002A4E20  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802AF0A4 002A4E24  7C 08 03 A6 */	mtlr r0
/* 802AF0A8 002A4E28  38 21 00 20 */	addi r1, r1, 0x20
/* 802AF0AC 002A4E2C  4E 80 00 20 */	blr
.endfn fn_802AF010
