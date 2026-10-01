.include "macros.inc"
.file "auto_fn_8030CEB0_text"

# 0x80008960..0x80008968 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008960 | size: 0x8
.obj "@etb_80008960", local
.hidden "@etb_80008960"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008960"

# 0x8000B8C0..0x8000B8CC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B8C0 | size: 0xC
.obj "@eti_8000B8C0", local
.hidden "@eti_8000B8C0"
	.4byte fn_8030CEB0
	.4byte 0x0000003C
	.4byte "@etb_80008960"
.endobj "@eti_8000B8C0"

# 0x8030CEB0..0x8030CEEC | size: 0x3C
.text
.balign 4

# .text:0x0 | 0x8030CEB0 | size: 0x3C
.fn fn_8030CEB0, global
/* 8030CEB0 00302C30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CEB4 00302C34  7C 08 02 A6 */	mflr r0
/* 8030CEB8 00302C38  2C 04 00 01 */	cmpwi r4, 0x1
/* 8030CEBC 00302C3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CEC0 00302C40  40 81 00 1C */	ble .L_8030CEDC
/* 8030CEC4 00302C44  88 05 00 00 */	lbz r0, 0x0(r5)
/* 8030CEC8 00302C48  38 A4 FF FF */	subi r5, r4, 0x1
/* 8030CECC 00302C4C  38 C1 00 08 */	addi r6, r1, 0x8
/* 8030CED0 00302C50  38 80 00 00 */	li r4, 0x0
/* 8030CED4 00302C54  98 01 00 08 */	stb r0, 0x8(r1)
/* 8030CED8 00302C58  48 00 00 15 */	bl fn_8030CEEC
.L_8030CEDC:
/* 8030CEDC 00302C5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CEE0 00302C60  7C 08 03 A6 */	mtlr r0
/* 8030CEE4 00302C64  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CEE8 00302C68  4E 80 00 20 */	blr
.endfn fn_8030CEB0
