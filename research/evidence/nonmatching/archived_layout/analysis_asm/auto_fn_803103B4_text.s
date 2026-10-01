.include "macros.inc"
.file "auto_fn_803103B4_text"

# 0x80008A60..0x80008A68 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008A60 | size: 0x8
.obj "@etb_80008A60", local
.hidden "@etb_80008A60"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008A60"

# 0x8000B950..0x8000B95C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B950 | size: 0xC
.obj "@eti_8000B950", local
.hidden "@eti_8000B950"
	.4byte fn_803103B4
	.4byte 0x0000002C
	.4byte "@etb_80008A60"
.endobj "@eti_8000B950"

# 0x803103B4..0x803103E0 | size: 0x2C
.text
.balign 4

# .text:0x0 | 0x803103B4 | size: 0x2C
.fn fn_803103B4, global
/* 803103B4 00306134  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803103B8 00306138  7C 08 02 A6 */	mflr r0
/* 803103BC 0030613C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803103C0 00306140  38 00 00 00 */	li r0, 0x0
/* 803103C4 00306144  38 A1 00 08 */	addi r5, r1, 0x8
/* 803103C8 00306148  98 01 00 08 */	stb r0, 0x8(r1)
/* 803103CC 0030614C  48 00 00 15 */	bl fn_803103E0
/* 803103D0 00306150  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803103D4 00306154  7C 08 03 A6 */	mtlr r0
/* 803103D8 00306158  38 21 00 10 */	addi r1, r1, 0x10
/* 803103DC 0030615C  4E 80 00 20 */	blr
.endfn fn_803103B4
