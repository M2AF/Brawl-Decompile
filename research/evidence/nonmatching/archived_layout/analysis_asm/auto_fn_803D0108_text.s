.include "macros.inc"
.file "auto_fn_803D0108_text"

# 0x8000936C..0x80009374 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000936C | size: 0x8
.obj "@etb_8000936C", local
.hidden "@etb_8000936C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000936C"

# 0x8000C2BC..0x8000C2C8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C2BC | size: 0xC
.obj "@eti_8000C2BC", local
.hidden "@eti_8000C2BC"
	.4byte fn_803D0108
	.4byte 0x000000DC
	.4byte "@etb_8000936C"
.endobj "@eti_8000C2BC"

# 0x803D0108..0x803D01E4 | size: 0xDC
.text
.balign 4

# .text:0x0 | 0x803D0108 | size: 0xDC
.fn fn_803D0108, global
/* 803D0108 003C5E88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D010C 003C5E8C  7C 08 02 A6 */	mflr r0
/* 803D0110 003C5E90  38 A0 00 01 */	li r5, 0x1
/* 803D0114 003C5E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D0118 003C5E98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D011C 003C5E9C  3B E0 00 00 */	li r31, 0x0
/* 803D0120 003C5EA0  7C A0 F8 30 */	slw r0, r5, r31
/* 803D0124 003C5EA4  7C 80 00 39 */	and. r0, r4, r0
/* 803D0128 003C5EA8  41 82 00 08 */	beq .L_803D0130
/* 803D012C 003C5EAC  3B E0 00 01 */	li r31, 0x1
.L_803D0130:
/* 803D0130 003C5EB0  38 00 00 01 */	li r0, 0x1
/* 803D0134 003C5EB4  7C A0 00 30 */	slw r0, r5, r0
/* 803D0138 003C5EB8  7C 80 00 39 */	and. r0, r4, r0
/* 803D013C 003C5EBC  41 82 00 08 */	beq .L_803D0144
/* 803D0140 003C5EC0  3B FF 00 01 */	addi r31, r31, 0x1
.L_803D0144:
/* 803D0144 003C5EC4  38 00 00 02 */	li r0, 0x2
/* 803D0148 003C5EC8  7C A0 00 30 */	slw r0, r5, r0
/* 803D014C 003C5ECC  7C 80 00 39 */	and. r0, r4, r0
/* 803D0150 003C5ED0  41 82 00 08 */	beq .L_803D0158
/* 803D0154 003C5ED4  3B FF 00 01 */	addi r31, r31, 0x1
.L_803D0158:
/* 803D0158 003C5ED8  38 00 00 03 */	li r0, 0x3
/* 803D015C 003C5EDC  7C A0 00 30 */	slw r0, r5, r0
/* 803D0160 003C5EE0  7C 80 00 39 */	and. r0, r4, r0
/* 803D0164 003C5EE4  41 82 00 08 */	beq .L_803D016C
/* 803D0168 003C5EE8  3B FF 00 01 */	addi r31, r31, 0x1
.L_803D016C:
/* 803D016C 003C5EEC  38 00 00 04 */	li r0, 0x4
/* 803D0170 003C5EF0  7C A0 00 30 */	slw r0, r5, r0
/* 803D0174 003C5EF4  7C 80 00 39 */	and. r0, r4, r0
/* 803D0178 003C5EF8  41 82 00 08 */	beq .L_803D0180
/* 803D017C 003C5EFC  3B FF 00 01 */	addi r31, r31, 0x1
.L_803D0180:
/* 803D0180 003C5F00  38 00 00 05 */	li r0, 0x5
/* 803D0184 003C5F04  7C A0 00 30 */	slw r0, r5, r0
/* 803D0188 003C5F08  7C 80 00 39 */	and. r0, r4, r0
/* 803D018C 003C5F0C  41 82 00 08 */	beq .L_803D0194
/* 803D0190 003C5F10  3B FF 00 01 */	addi r31, r31, 0x1
.L_803D0194:
/* 803D0194 003C5F14  38 00 00 06 */	li r0, 0x6
/* 803D0198 003C5F18  7C A0 00 30 */	slw r0, r5, r0
/* 803D019C 003C5F1C  7C 80 00 39 */	and. r0, r4, r0
/* 803D01A0 003C5F20  41 82 00 08 */	beq .L_803D01A8
/* 803D01A4 003C5F24  3B FF 00 01 */	addi r31, r31, 0x1
.L_803D01A8:
/* 803D01A8 003C5F28  48 00 46 61 */	bl fn_803D4808
/* 803D01AC 003C5F2C  7C 63 F9 D6 */	mullw r3, r3, r31
/* 803D01B0 003C5F30  57 E4 28 34 */	slwi r4, r31, 5
/* 803D01B4 003C5F34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D01B8 003C5F38  38 04 00 1F */	addi r0, r4, 0x1f
/* 803D01BC 003C5F3C  54 04 00 34 */	clrrwi r4, r0, 5
/* 803D01C0 003C5F40  38 03 00 1F */	addi r0, r3, 0x1f
/* 803D01C4 003C5F44  3C 64 00 01 */	addis r3, r4, 0x1
/* 803D01C8 003C5F48  54 00 00 34 */	clrrwi r0, r0, 5
/* 803D01CC 003C5F4C  7C 63 02 14 */	add r3, r3, r0
/* 803D01D0 003C5F50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D01D4 003C5F54  38 63 82 60 */	subi r3, r3, 0x7da0
/* 803D01D8 003C5F58  7C 08 03 A6 */	mtlr r0
/* 803D01DC 003C5F5C  38 21 00 10 */	addi r1, r1, 0x10
/* 803D01E0 003C5F60  4E 80 00 20 */	blr
.endfn fn_803D0108
