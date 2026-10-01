.include "macros.inc"
.file "auto_fn_802CB41C_text"

# 0x800081F8..0x80008200 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800081F8 | size: 0x8
.obj "@etb_800081F8", local
.hidden "@etb_800081F8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800081F8"

# 0x8000AEAC..0x8000AEB8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AEAC | size: 0xC
.obj "@eti_8000AEAC", local
.hidden "@eti_8000AEAC"
	.4byte fn_802CB41C
	.4byte 0x00000068
	.4byte "@etb_800081F8"
.endobj "@eti_8000AEAC"

# 0x802CB41C..0x802CB484 | size: 0x68
.text
.balign 4

# .text:0x0 | 0x802CB41C | size: 0x68
.fn fn_802CB41C, global
/* 802CB41C 002C119C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CB420 002C11A0  7C 08 02 A6 */	mflr r0
/* 802CB424 002C11A4  3C A0 80 41 */	lis r5, lbl_8040FFE8@ha
/* 802CB428 002C11A8  3C 60 80 53 */	lis r3, lbl_805325C8@ha
/* 802CB42C 002C11AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CB430 002C11B0  38 A5 FF E8 */	addi r5, r5, lbl_8040FFE8@l
/* 802CB434 002C11B4  3C 80 80 41 */	lis r4, lbl_80410038@ha
/* 802CB438 002C11B8  38 C0 00 04 */	li r6, 0x4
/* 802CB43C 002C11BC  90 A1 00 08 */	stw r5, 0x8(r1)
/* 802CB440 002C11C0  3C A0 80 53 */	lis r5, lbl_805332C8@ha
/* 802CB444 002C11C4  38 00 00 00 */	li r0, 0x0
/* 802CB448 002C11C8  38 63 25 C8 */	addi r3, r3, lbl_805325C8@l
/* 802CB44C 002C11CC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 802CB450 002C11D0  38 84 00 38 */	addi r4, r4, lbl_80410038@l
/* 802CB454 002C11D4  38 A5 32 C8 */	addi r5, r5, lbl_805332C8@l
/* 802CB458 002C11D8  38 C0 00 0C */	li r6, 0xc
/* 802CB45C 002C11DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 802CB460 002C11E0  38 E0 00 00 */	li r7, 0x0
/* 802CB464 002C11E4  39 00 00 00 */	li r8, 0x0
/* 802CB468 002C11E8  39 20 00 00 */	li r9, 0x0
/* 802CB46C 002C11EC  39 40 00 00 */	li r10, 0x0
/* 802CB470 002C11F0  4B FB 13 99 */	bl fn_8027C808
/* 802CB474 002C11F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CB478 002C11F8  7C 08 03 A6 */	mtlr r0
/* 802CB47C 002C11FC  38 21 00 20 */	addi r1, r1, 0x20
/* 802CB480 002C1200  4E 80 00 20 */	blr
.endfn fn_802CB41C

# 0x80406634..0x80406638 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802CB41C
