.include "macros.inc"
.file "auto_fn_803F5EAC_text"

# 0x8000961C..0x80009624 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000961C | size: 0x8
.obj "@etb_8000961C", local
.hidden "@etb_8000961C"
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
.endobj "@etb_8000961C"

# 0x8000C670..0x8000C67C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C670 | size: 0xC
.obj "@eti_8000C670", local
.hidden "@eti_8000C670"
	.4byte fn_803F5EAC
	.4byte 0x00000048
	.4byte "@etb_8000961C"
.endobj "@eti_8000C670"

# 0x803F5EAC..0x803F5EF4 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x803F5EAC | size: 0x48
.fn fn_803F5EAC, global
/* 803F5EAC 003EBC2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F5EB0 003EBC30  7C 08 02 A6 */	mflr r0
/* 803F5EB4 003EBC34  38 80 00 00 */	li r4, 0x0
/* 803F5EB8 003EBC38  38 A0 00 00 */	li r5, 0x0
/* 803F5EBC 003EBC3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F5EC0 003EBC40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F5EC4 003EBC44  3B E0 00 00 */	li r31, 0x0
/* 803F5EC8 003EBC48  93 C1 00 08 */	stw r30, 0x8(r1)
/* 803F5ECC 003EBC4C  7C 7E 1B 78 */	mr r30, r3
/* 803F5ED0 003EBC50  9B E3 00 0A */	stb r31, 0xa(r3)
/* 803F5ED4 003EBC54  4B FF FE 11 */	bl _fseek
/* 803F5ED8 003EBC58  9B FE 00 0A */	stb r31, 0xa(r30)
/* 803F5EDC 003EBC5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F5EE0 003EBC60  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803F5EE4 003EBC64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F5EE8 003EBC68  7C 08 03 A6 */	mtlr r0
/* 803F5EEC 003EBC6C  38 21 00 10 */	addi r1, r1, 0x10
/* 803F5EF0 003EBC70  4E 80 00 20 */	blr
.endfn fn_803F5EAC
