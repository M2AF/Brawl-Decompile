.include "macros.inc"
.file "auto_fn_803FC984_text"

# 0x80009734..0x8000973C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009734 | size: 0x8
.obj "@etb_80009734", local
.hidden "@etb_80009734"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80009734"

# 0x8000C814..0x8000C820 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C814 | size: 0xC
.obj "@eti_8000C814", local
.hidden "@eti_8000C814"
	.4byte fn_803FC984
	.4byte 0x00000034
	.4byte "@etb_80009734"
.endobj "@eti_8000C814"

# 0x803FC984..0x803FC9B8 | size: 0x34
.text
.balign 4

# .text:0x0 | 0x803FC984 | size: 0x34
.fn fn_803FC984, global
/* 803FC984 003F2704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FC988 003F2708  7C 08 02 A6 */	mflr r0
/* 803FC98C 003F270C  38 60 00 01 */	li r3, 0x1
/* 803FC990 003F2710  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FC994 003F2714  4B FF D8 3D */	bl fn_803FA1D0
/* 803FC998 003F2718  38 00 00 01 */	li r0, 0x1
/* 803FC99C 003F271C  38 60 00 01 */	li r3, 0x1
/* 803FC9A0 003F2720  90 0D CE D0 */	stw r0, lbl_805A12F0@sda21(r0)
/* 803FC9A4 003F2724  4B DE 78 05 */	bl exit
/* 803FC9A8 003F2728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FC9AC 003F272C  7C 08 03 A6 */	mtlr r0
/* 803FC9B0 003F2730  38 21 00 10 */	addi r1, r1, 0x10
/* 803FC9B4 003F2734  4E 80 00 20 */	blr
.endfn fn_803FC984
