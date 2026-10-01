.include "macros.inc"
.file "auto_fn_80302904_text"

# 0x800087AC..0x800087B4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800087AC | size: 0x8
.obj "@etb_800087AC", local
.hidden "@etb_800087AC"
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
.endobj "@etb_800087AC"

# 0x8000B6D4..0x8000B6E0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B6D4 | size: 0xC
.obj "@eti_8000B6D4", local
.hidden "@eti_8000B6D4"
	.4byte fn_80302904
	.4byte 0x0000004C
	.4byte "@etb_800087AC"
.endobj "@eti_8000B6D4"

# 0x80302904..0x80302950 | size: 0x4C
.text
.balign 4

# .text:0x0 | 0x80302904 | size: 0x4C
.fn fn_80302904, global
/* 80302904 002F8684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80302908 002F8688  7C 08 02 A6 */	mflr r0
/* 8030290C 002F868C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80302910 002F8690  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80302914 002F8694  7C 9F 23 78 */	mr r31, r4
/* 80302918 002F8698  7C A4 2B 78 */	mr r4, r5
/* 8030291C 002F869C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80302920 002F86A0  7C 7E 1B 78 */	mr r30, r3
/* 80302924 002F86A4  48 01 59 E9 */	bl fn_8031830C
/* 80302928 002F86A8  88 7E 00 02 */	lbz r3, 0x2(r30)
/* 8030292C 002F86AC  38 00 00 00 */	li r0, 0x0
/* 80302930 002F86B0  98 7F 00 02 */	stb r3, 0x2(r31)
/* 80302934 002F86B4  90 1E 00 00 */	stw r0, 0x0(r30)
/* 80302938 002F86B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030293C 002F86BC  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80302940 002F86C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80302944 002F86C4  7C 08 03 A6 */	mtlr r0
/* 80302948 002F86C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8030294C 002F86CC  4E 80 00 20 */	blr
.endfn fn_80302904
