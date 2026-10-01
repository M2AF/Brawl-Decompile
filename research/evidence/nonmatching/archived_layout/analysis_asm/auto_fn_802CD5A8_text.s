.include "macros.inc"
.file "auto_fn_802CD5A8_text"

# 0x800082B0..0x800082B8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800082B0 | size: 0x8
.obj "@etb_800082B0", local
.hidden "@etb_800082B0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800082B0"

# 0x8000AF90..0x8000AF9C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AF90 | size: 0xC
.obj "@eti_8000AF90", local
.hidden "@eti_8000AF90"
	.4byte fn_802CD5A8
	.4byte 0x00000068
	.4byte "@etb_800082B0"
.endobj "@eti_8000AF90"

# 0x802CD5A8..0x802CD610 | size: 0x68
.text
.balign 4

# .text:0x0 | 0x802CD5A8 | size: 0x68
.fn fn_802CD5A8, global
/* 802CD5A8 002C3328  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CD5AC 002C332C  7C 08 02 A6 */	mflr r0
/* 802CD5B0 002C3330  3C A0 80 41 */	lis r5, lbl_804101E8@ha
/* 802CD5B4 002C3334  3C 60 80 53 */	lis r3, lbl_80532600@ha
/* 802CD5B8 002C3338  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CD5BC 002C333C  38 A5 01 E8 */	addi r5, r5, lbl_804101E8@l
/* 802CD5C0 002C3340  3C 80 80 41 */	lis r4, lbl_80410210@ha
/* 802CD5C4 002C3344  38 C0 00 02 */	li r6, 0x2
/* 802CD5C8 002C3348  90 A1 00 08 */	stw r5, 0x8(r1)
/* 802CD5CC 002C334C  3C A0 80 53 */	lis r5, lbl_80532628@ha
/* 802CD5D0 002C3350  38 00 00 00 */	li r0, 0x0
/* 802CD5D4 002C3354  38 63 26 00 */	addi r3, r3, lbl_80532600@l
/* 802CD5D8 002C3358  90 C1 00 0C */	stw r6, 0xc(r1)
/* 802CD5DC 002C335C  38 84 02 10 */	addi r4, r4, lbl_80410210@l
/* 802CD5E0 002C3360  38 A5 26 28 */	addi r5, r5, lbl_80532628@l
/* 802CD5E4 002C3364  38 C0 00 9C */	li r6, 0x9c
/* 802CD5E8 002C3368  90 01 00 10 */	stw r0, 0x10(r1)
/* 802CD5EC 002C336C  38 E0 00 00 */	li r7, 0x0
/* 802CD5F0 002C3370  39 00 00 00 */	li r8, 0x0
/* 802CD5F4 002C3374  39 20 00 00 */	li r9, 0x0
/* 802CD5F8 002C3378  39 40 00 00 */	li r10, 0x0
/* 802CD5FC 002C337C  4B FA F2 0D */	bl fn_8027C808
/* 802CD600 002C3380  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CD604 002C3384  7C 08 03 A6 */	mtlr r0
/* 802CD608 002C3388  38 21 00 20 */	addi r1, r1, 0x20
/* 802CD60C 002C338C  4E 80 00 20 */	blr
.endfn fn_802CD5A8

# 0x8040663C..0x80406640 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802CD5A8
