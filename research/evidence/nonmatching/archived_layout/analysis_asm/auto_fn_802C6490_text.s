.include "macros.inc"
.file "auto_fn_802C6490_text"

# 0x80007EC0..0x80007EC8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007EC0 | size: 0x8
.obj "@etb_80007EC0", local
.hidden "@etb_80007EC0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80007EC0"

# 0x8000ABE8..0x8000ABF4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000ABE8 | size: 0xC
.obj "@eti_8000ABE8", local
.hidden "@eti_8000ABE8"
	.4byte fn_802C6490
	.4byte 0x00000068
	.4byte "@etb_80007EC0"
.endobj "@eti_8000ABE8"

# 0x802C6490..0x802C64F8 | size: 0x68
.text
.balign 4

# .text:0x0 | 0x802C6490 | size: 0x68
.fn fn_802C6490, global
/* 802C6490 002BC210  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C6494 002BC214  7C 08 02 A6 */	mflr r0
/* 802C6498 002BC218  3D 40 80 2C */	lis r10, fn_802C64F8@ha
/* 802C649C 002BC21C  3D 20 80 2C */	lis r9, fn_802C6E34@ha
/* 802C64A0 002BC220  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C64A4 002BC224  3D 00 80 2C */	lis r8, fn_802C6BA8@ha
/* 802C64A8 002BC228  38 00 00 00 */	li r0, 0x0
/* 802C64AC 002BC22C  3C E0 80 2B */	lis r7, fn_802B7FD0@ha
/* 802C64B0 002BC230  39 4A 64 F8 */	addi r10, r10, fn_802C64F8@l
/* 802C64B4 002BC234  39 29 6E 34 */	addi r9, r9, fn_802C6E34@l
/* 802C64B8 002BC238  39 08 6B A8 */	addi r8, r8, fn_802C6BA8@l
/* 802C64BC 002BC23C  38 E7 7F D0 */	addi r7, r7, fn_802B7FD0@l
/* 802C64C0 002BC240  98 01 00 18 */	stb r0, 0x18(r1)
/* 802C64C4 002BC244  38 81 00 08 */	addi r4, r1, 0x8
/* 802C64C8 002BC248  38 A0 00 04 */	li r5, 0x4
/* 802C64CC 002BC24C  38 C0 00 04 */	li r6, 0x4
/* 802C64D0 002BC250  98 01 00 19 */	stb r0, 0x19(r1)
/* 802C64D4 002BC254  91 41 00 08 */	stw r10, 0x8(r1)
/* 802C64D8 002BC258  91 21 00 0C */	stw r9, 0xc(r1)
/* 802C64DC 002BC25C  91 01 00 10 */	stw r8, 0x10(r1)
/* 802C64E0 002BC260  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802C64E4 002BC264  48 00 5C 09 */	bl fn_802CC0EC
/* 802C64E8 002BC268  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C64EC 002BC26C  7C 08 03 A6 */	mtlr r0
/* 802C64F0 002BC270  38 21 00 20 */	addi r1, r1, 0x20
/* 802C64F4 002BC274  4E 80 00 20 */	blr
.endfn fn_802C6490
