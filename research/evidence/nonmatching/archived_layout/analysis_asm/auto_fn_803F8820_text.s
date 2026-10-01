.include "macros.inc"
.file "auto_fn_803F8820_text"

# 0x8000969C..0x800096A4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000969C | size: 0x8
.obj "@etb_8000969C", local
.hidden "@etb_8000969C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8000969C"

# 0x8000C730..0x8000C73C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C730 | size: 0xC
.obj "@eti_8000C730", local
.hidden "@eti_8000C730"
	.4byte fn_803F8820
	.4byte 0x00000084
	.4byte "@etb_8000969C"
.endobj "@eti_8000C730"

# 0x803F8820..0x803F88A4 | size: 0x84
.text
.balign 4

# .text:0x0 | 0x803F8820 | size: 0x84
.fn fn_803F8820, global
/* 803F8820 003EE5A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803F8824 003EE5A4  7C 08 02 A6 */	mflr r0
/* 803F8828 003EE5A8  3C E0 80 40 */	lis r7, fn_803F85B0@ha
/* 803F882C 003EE5AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803F8830 003EE5B0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803F8834 003EE5B4  3B E0 00 00 */	li r31, 0x0
/* 803F8838 003EE5B8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803F883C 003EE5BC  7C 9E 23 78 */	mr r30, r4
/* 803F8840 003EE5C0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 803F8844 003EE5C4  7C 7D 1B 78 */	mr r29, r3
/* 803F8848 003EE5C8  90 61 00 08 */	stw r3, 0x8(r1)
/* 803F884C 003EE5CC  38 67 85 B0 */	addi r3, r7, fn_803F85B0@l
/* 803F8850 003EE5D0  90 81 00 0C */	stw r4, 0xc(r1)
/* 803F8854 003EE5D4  38 81 00 08 */	addi r4, r1, 0x8
/* 803F8858 003EE5D8  93 E1 00 10 */	stw r31, 0x10(r1)
/* 803F885C 003EE5DC  4B FF F4 A1 */	bl __pformatter_803F7CFC
/* 803F8860 003EE5E0  2C 1D 00 00 */	cmpwi r29, 0x0
/* 803F8864 003EE5E4  41 82 00 24 */	beq .L_803F8888
/* 803F8868 003EE5E8  7C 03 F0 40 */	cmplw r3, r30
/* 803F886C 003EE5EC  40 80 00 0C */	bge .L_803F8878
/* 803F8870 003EE5F0  7F FD 19 AE */	stbx r31, r29, r3
/* 803F8874 003EE5F4  48 00 00 14 */	b .L_803F8888
.L_803F8878:
/* 803F8878 003EE5F8  2C 1E 00 00 */	cmpwi r30, 0x0
/* 803F887C 003EE5FC  41 82 00 0C */	beq .L_803F8888
/* 803F8880 003EE600  7C 9D F2 14 */	add r4, r29, r30
/* 803F8884 003EE604  9B E4 FF FF */	stb r31, -0x1(r4)
.L_803F8888:
/* 803F8888 003EE608  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F888C 003EE60C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803F8890 003EE610  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803F8894 003EE614  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 803F8898 003EE618  7C 08 03 A6 */	mtlr r0
/* 803F889C 003EE61C  38 21 00 30 */	addi r1, r1, 0x30
/* 803F88A0 003EE620  4E 80 00 20 */	blr
.endfn fn_803F8820
