.include "macros.inc"
.file "auto_fn_803D01E4_text"

# 0x80009374..0x8000937C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009374 | size: 0x8
.obj "@etb_80009374", local
.hidden "@etb_80009374"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r27-r31
 */
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_80009374"

# 0x8000C2C8..0x8000C2D4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C2C8 | size: 0xC
.obj "@eti_8000C2C8", local
.hidden "@eti_8000C2C8"
	.4byte fn_803D01E4
	.4byte 0x0000006C
	.4byte "@etb_80009374"
.endobj "@eti_8000C2C8"

# 0x803D01E4..0x803D0250 | size: 0x6C
.text
.balign 4

# .text:0x0 | 0x803D01E4 | size: 0x6C
.fn fn_803D01E4, global
/* 803D01E4 003C5F64  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 803D01E8 003C5F68  7C 08 02 A6 */	mflr r0
/* 803D01EC 003C5F6C  90 01 00 74 */	stw r0, 0x74(r1)
/* 803D01F0 003C5F70  39 61 00 70 */	addi r11, r1, 0x70
/* 803D01F4 003C5F74  48 02 11 2D */	bl _savegpr_27
/* 803D01F8 003C5F78  7C 7B 1B 78 */	mr r27, r3
/* 803D01FC 003C5F7C  7C FC 3B 78 */	mr r28, r7
/* 803D0200 003C5F80  7D 1D 43 78 */	mr r29, r8
/* 803D0204 003C5F84  7D 3E 4B 78 */	mr r30, r9
/* 803D0208 003C5F88  38 61 00 08 */	addi r3, r1, 0x8
/* 803D020C 003C5F8C  48 00 5C BD */	bl fn_803D5EC8
/* 803D0210 003C5F90  2C 03 00 00 */	cmpwi r3, 0x0
/* 803D0214 003C5F94  7C 7F 1B 78 */	mr r31, r3
/* 803D0218 003C5F98  40 82 00 1C */	bne .L_803D0234
/* 803D021C 003C5F9C  7F 63 DB 78 */	mr r3, r27
/* 803D0220 003C5FA0  7F 85 E3 78 */	mr r5, r28
/* 803D0224 003C5FA4  7F A6 EB 78 */	mr r6, r29
/* 803D0228 003C5FA8  7F C7 F3 78 */	mr r7, r30
/* 803D022C 003C5FAC  38 81 00 08 */	addi r4, r1, 0x8
/* 803D0230 003C5FB0  48 00 00 21 */	bl fn_803D0250
.L_803D0234:
/* 803D0234 003C5FB4  39 61 00 70 */	addi r11, r1, 0x70
/* 803D0238 003C5FB8  7F E3 FB 78 */	mr r3, r31
/* 803D023C 003C5FBC  48 02 11 31 */	bl _restgpr_27
/* 803D0240 003C5FC0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 803D0244 003C5FC4  7C 08 03 A6 */	mtlr r0
/* 803D0248 003C5FC8  38 21 00 70 */	addi r1, r1, 0x70
/* 803D024C 003C5FCC  4E 80 00 20 */	blr
.endfn fn_803D01E4
