.include "macros.inc"
.file "auto_fn_8030CE84_text"

# 0x80008958..0x80008960 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008958 | size: 0x8
.obj "@etb_80008958", local
.hidden "@etb_80008958"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008958"

# 0x8000B8B4..0x8000B8C0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B8B4 | size: 0xC
.obj "@eti_8000B8B4", local
.hidden "@eti_8000B8B4"
	.4byte fn_8030CE84
	.4byte 0x0000002C
	.4byte "@etb_80008958"
.endobj "@eti_8000B8B4"

# 0x8030CE84..0x8030CEB0 | size: 0x2C
.text
.balign 4

# .text:0x0 | 0x8030CE84 | size: 0x2C
.fn fn_8030CE84, global
/* 8030CE84 00302C04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CE88 00302C08  7C 08 02 A6 */	mflr r0
/* 8030CE8C 00302C0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CE90 00302C10  38 00 00 00 */	li r0, 0x0
/* 8030CE94 00302C14  38 A1 00 08 */	addi r5, r1, 0x8
/* 8030CE98 00302C18  98 01 00 08 */	stb r0, 0x8(r1)
/* 8030CE9C 00302C1C  48 00 00 15 */	bl fn_8030CEB0
/* 8030CEA0 00302C20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CEA4 00302C24  7C 08 03 A6 */	mtlr r0
/* 8030CEA8 00302C28  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CEAC 00302C2C  4E 80 00 20 */	blr
.endfn fn_8030CE84
