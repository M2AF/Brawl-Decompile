.include "macros.inc"
.file "auto_fn_802D6400_text"

# 0x80008604..0x8000860C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008604 | size: 0x8
.obj "@etb_80008604", local
.hidden "@etb_80008604"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008604"

# 0x8000B458..0x8000B464 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B458 | size: 0xC
.obj "@eti_8000B458", local
.hidden "@eti_8000B458"
	.4byte fn_802D6400
	.4byte 0x00000054
	.4byte "@etb_80008604"
.endobj "@eti_8000B458"

# 0x802D6400..0x802D6454 | size: 0x54
.text
.balign 4

# .text:0x0 | 0x802D6400 | size: 0x54
.fn fn_802D6400, global
/* 802D6400 002CC180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D6404 002CC184  7C 08 02 A6 */	mflr r0
/* 802D6408 002CC188  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D640C 002CC18C  4B FF F9 B1 */	bl fn_802D5DBC
/* 802D6410 002CC190  3D 00 80 41 */	lis r8, lbl_80410F60@ha
/* 802D6414 002CC194  3C E0 80 53 */	lis r7, lbl_80532908@ha
/* 802D6418 002CC198  39 08 0F 60 */	addi r8, r8, lbl_80410F60@l
/* 802D641C 002CC19C  3C C0 80 2D */	lis r6, fn_802D5D88@ha
/* 802D6420 002CC1A0  3C 80 80 2D */	lis r4, fn_802D5DA8@ha
/* 802D6424 002CC1A4  38 A7 29 08 */	addi r5, r7, lbl_80532908@l
/* 802D6428 002CC1A8  38 08 00 1A */	addi r0, r8, 0x1a
/* 802D642C 002CC1AC  38 C6 5D 88 */	addi r6, r6, fn_802D5D88@l
/* 802D6430 002CC1B0  38 84 5D A8 */	addi r4, r4, fn_802D5DA8@l
/* 802D6434 002CC1B4  90 07 29 08 */	stw r0, lbl_80532908@l(r7)
/* 802D6438 002CC1B8  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802D643C 002CC1BC  90 85 00 08 */	stw r4, 0x8(r5)
/* 802D6440 002CC1C0  90 65 00 0C */	stw r3, 0xc(r5)
/* 802D6444 002CC1C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D6448 002CC1C8  7C 08 03 A6 */	mtlr r0
/* 802D644C 002CC1CC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D6450 002CC1D0  4E 80 00 20 */	blr
.endfn fn_802D6400

# 0x80406698..0x8040669C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802D6400
