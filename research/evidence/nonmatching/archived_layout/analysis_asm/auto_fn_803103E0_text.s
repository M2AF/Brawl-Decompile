.include "macros.inc"
.file "auto_fn_803103E0_text"

# 0x80008A68..0x80008A70 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008A68 | size: 0x8
.obj "@etb_80008A68", local
.hidden "@etb_80008A68"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008A68"

# 0x8000B95C..0x8000B968 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B95C | size: 0xC
.obj "@eti_8000B95C", local
.hidden "@eti_8000B95C"
	.4byte fn_803103E0
	.4byte 0x0000003C
	.4byte "@etb_80008A68"
.endobj "@eti_8000B95C"

# 0x803103E0..0x8031041C | size: 0x3C
.text
.balign 4

# .text:0x0 | 0x803103E0 | size: 0x3C
.fn fn_803103E0, global
/* 803103E0 00306160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803103E4 00306164  7C 08 02 A6 */	mflr r0
/* 803103E8 00306168  2C 04 00 01 */	cmpwi r4, 0x1
/* 803103EC 0030616C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803103F0 00306170  40 81 00 1C */	ble .L_8031040C
/* 803103F4 00306174  88 05 00 00 */	lbz r0, 0x0(r5)
/* 803103F8 00306178  38 A4 FF FF */	subi r5, r4, 0x1
/* 803103FC 0030617C  38 C1 00 08 */	addi r6, r1, 0x8
/* 80310400 00306180  38 80 00 00 */	li r4, 0x0
/* 80310404 00306184  98 01 00 08 */	stb r0, 0x8(r1)
/* 80310408 00306188  48 00 00 15 */	bl fn_8031041C
.L_8031040C:
/* 8031040C 0030618C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80310410 00306190  7C 08 03 A6 */	mtlr r0
/* 80310414 00306194  38 21 00 10 */	addi r1, r1, 0x10
/* 80310418 00306198  4E 80 00 20 */	blr
.endfn fn_803103E0
