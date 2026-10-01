.include "macros.inc"
.file "auto_fn_8032F10C_text"

# 0x800091E0..0x800091E8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800091E0 | size: 0x8
.obj "@etb_800091E0", local
.hidden "@etb_800091E0"
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
.endobj "@etb_800091E0"

# 0x8000C0A0..0x8000C0AC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C0A0 | size: 0xC
.obj "@eti_8000C0A0", local
.hidden "@eti_8000C0A0"
	.4byte fn_8032F10C
	.4byte 0x00000094
	.4byte "@etb_800091E0"
.endobj "@eti_8000C0A0"

# 0x8032F10C..0x8032F1A0 | size: 0x94
.text
.balign 4

# .text:0x0 | 0x8032F10C | size: 0x94
.fn fn_8032F10C, global
/* 8032F10C 00324E8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032F110 00324E90  7C 08 02 A6 */	mflr r0
/* 8032F114 00324E94  2C 05 00 00 */	cmpwi r5, 0x0
/* 8032F118 00324E98  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032F11C 00324E9C  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 8032F120 00324EA0  7C 7A 1B 78 */	mr r26, r3
/* 8032F124 00324EA4  83 C3 00 10 */	lwz r30, 0x10(r3)
/* 8032F128 00324EA8  7C 9B 23 78 */	mr r27, r4
/* 8032F12C 00324EAC  7C BC 2B 78 */	mr r28, r5
/* 8032F130 00324EB0  40 82 00 0C */	bne .L_8032F13C
/* 8032F134 00324EB4  3F 80 80 28 */	lis r28, fn_80281AEC@ha
/* 8032F138 00324EB8  3B 9C 1A EC */	addi r28, r28, fn_80281AEC@l
.L_8032F13C:
/* 8032F13C 00324EBC  3B A0 00 00 */	li r29, 0x0
/* 8032F140 00324EC0  3B E0 00 00 */	li r31, 0x0
/* 8032F144 00324EC4  48 00 00 38 */	b .L_8032F17C
.L_8032F148:
/* 8032F148 00324EC8  80 9A 00 0C */	lwz r4, 0xc(r26)
/* 8032F14C 00324ECC  7F 8C E3 78 */	mr r12, r28
/* 8032F150 00324ED0  7F 63 DB 78 */	mr r3, r27
/* 8032F154 00324ED4  7C 84 F8 2E */	lwzx r4, r4, r31
/* 8032F158 00324ED8  80 84 00 00 */	lwz r4, 0x0(r4)
/* 8032F15C 00324EDC  7D 89 03 A6 */	mtctr r12
/* 8032F160 00324EE0  4E 80 04 21 */	bctrl
/* 8032F164 00324EE4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8032F168 00324EE8  40 82 00 0C */	bne .L_8032F174
/* 8032F16C 00324EEC  7F A3 EB 78 */	mr r3, r29
/* 8032F170 00324EF0  48 00 00 1C */	b .L_8032F18C
.L_8032F174:
/* 8032F174 00324EF4  3B FF 00 04 */	addi r31, r31, 0x4
/* 8032F178 00324EF8  3B BD 00 01 */	addi r29, r29, 0x1
.L_8032F17C:
/* 8032F17C 00324EFC  7F A0 07 34 */	extsh r0, r29
/* 8032F180 00324F00  7C 00 F0 00 */	cmpw r0, r30
/* 8032F184 00324F04  41 80 FF C4 */	blt .L_8032F148
/* 8032F188 00324F08  38 60 FF FF */	li r3, -0x1
.L_8032F18C:
/* 8032F18C 00324F0C  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 8032F190 00324F10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032F194 00324F14  7C 08 03 A6 */	mtlr r0
/* 8032F198 00324F18  38 21 00 20 */	addi r1, r1, 0x20
/* 8032F19C 00324F1C  4E 80 00 20 */	blr
.endfn fn_8032F10C
