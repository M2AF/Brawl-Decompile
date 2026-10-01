.include "macros.inc"
.file "auto_fn_80312EB4_text"

# 0x80008B00..0x80008B18 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008B00 | size: 0x18
.obj "@etb_80008B00", local
.hidden "@etb_80008B00"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 * 
 * PC actions:
 * PC=00000068, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DELETEPOINTER
 * Pointer: r31)
 * Dtor: "dtor_8030A6BC"
 * Has end bit
 */
	.4byte 0x20080000
	.4byte 0x00000068
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8A80001F
	.4byte dtor_8030A6BC
.endobj "@etb_80008B00"

# 0x8000B9EC..0x8000B9F8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B9EC | size: 0xC
.obj "@eti_8000B9EC", local
.hidden "@eti_8000B9EC"
	.4byte fn_80312EB4
	.4byte 0x0000008C
	.4byte "@etb_80008B00"
.endobj "@eti_8000B9EC"

# 0x80312EB4..0x80312F40 | size: 0x8C
.text
.balign 4

# .text:0x0 | 0x80312EB4 | size: 0x8C
.fn fn_80312EB4, global
/* 80312EB4 00308C34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80312EB8 00308C38  7C 08 02 A6 */	mflr r0
/* 80312EBC 00308C3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80312EC0 00308C40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80312EC4 00308C44  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80312EC8 00308C48  7C BE 2B 78 */	mr r30, r5
/* 80312ECC 00308C4C  38 A0 00 1F */	li r5, 0x1f
/* 80312ED0 00308C50  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80312ED4 00308C54  7C 9D 23 78 */	mr r29, r4
/* 80312ED8 00308C58  38 80 00 B0 */	li r4, 0xb0
/* 80312EDC 00308C5C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80312EE0 00308C60  7C 7C 1B 78 */	mr r28, r3
/* 80312EE4 00308C64  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 80312EE8 00308C68  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80312EEC 00308C6C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80312EF0 00308C70  7D 89 03 A6 */	mtctr r12
/* 80312EF4 00308C74  4E 80 04 21 */	bctrl
/* 80312EF8 00308C78  38 00 00 B0 */	li r0, 0xb0
/* 80312EFC 00308C7C  2C 03 00 00 */	cmpwi r3, 0x0
/* 80312F00 00308C80  B0 03 00 04 */	sth r0, 0x4(r3)
/* 80312F04 00308C84  7C 7F 1B 78 */	mr r31, r3
/* 80312F08 00308C88  41 82 00 14 */	beq .L_80312F1C
/* 80312F0C 00308C8C  7F 84 E3 78 */	mr r4, r28
/* 80312F10 00308C90  7F A5 EB 78 */	mr r5, r29
/* 80312F14 00308C94  7F C6 F3 78 */	mr r6, r30
/* 80312F18 00308C98  4B FF 6A 3D */	bl fn_80309954
.L_80312F1C:
/* 80312F1C 00308C9C  7F E3 FB 78 */	mr r3, r31
/* 80312F20 00308CA0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80312F24 00308CA4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80312F28 00308CA8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80312F2C 00308CAC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80312F30 00308CB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80312F34 00308CB4  7C 08 03 A6 */	mtlr r0
/* 80312F38 00308CB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80312F3C 00308CBC  4E 80 00 20 */	blr
.endfn fn_80312EB4
