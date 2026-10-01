.include "macros.inc"
.file "auto_fn_803F64D0_text"

# 0x8000963C..0x80009644 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000963C | size: 0x8
.obj "@etb_8000963C", local
.hidden "@etb_8000963C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000963C"

# 0x8000C6A0..0x8000C6AC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C6A0 | size: 0xC
.obj "@eti_8000C6A0", local
.hidden "@eti_8000C6A0"
	.4byte fn_803F64D0
	.4byte 0x00000018
	.4byte "@etb_8000963C"
.endobj "@eti_8000C6A0"

# 0x803F64D0..0x803F64E8 | size: 0x18
.text
.balign 4

# .text:0x0 | 0x803F64D0 | size: 0x18
.fn fn_803F64D0, global
/* 803F64D0 003EC250  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F64D4 003EC254  D8 21 00 08 */	stfd f1, 0x8(r1)
/* 803F64D8 003EC258  80 01 00 08 */	lwz r0, 0x8(r1)
/* 803F64DC 003EC25C  54 03 00 00 */	clrrwi r3, r0, 31
/* 803F64E0 003EC260  38 21 00 10 */	addi r1, r1, 0x10
/* 803F64E4 003EC264  4E 80 00 20 */	blr
.endfn fn_803F64D0
