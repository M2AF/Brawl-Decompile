.include "macros.inc"
.file "auto_fn_802D256C_text"

# 0x800084A0..0x800084A8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800084A0 | size: 0x8
.obj "@etb_800084A0", local
.hidden "@etb_800084A0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800084A0"

# 0x8000B260..0x8000B26C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B260 | size: 0xC
.obj "@eti_8000B260", local
.hidden "@eti_8000B260"
	.4byte fn_802D256C
	.4byte 0x000000BC
	.4byte "@etb_800084A0"
.endobj "@eti_8000B260"

# 0x802D256C..0x802D2628 | size: 0xBC
.text
.balign 4

# .text:0x0 | 0x802D256C | size: 0xBC
.fn fn_802D256C, global
/* 802D256C 002C82EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D2570 002C82F0  7C 08 02 A6 */	mflr r0
/* 802D2574 002C82F4  3C 80 80 41 */	lis r4, lbl_80410650@ha
/* 802D2578 002C82F8  3C 60 80 53 */	lis r3, lbl_805327A0@ha
/* 802D257C 002C82FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D2580 002C8300  38 84 06 50 */	addi r4, r4, lbl_80410650@l
/* 802D2584 002C8304  38 00 00 03 */	li r0, 0x3
/* 802D2588 002C8308  38 63 27 A0 */	addi r3, r3, lbl_805327A0@l
/* 802D258C 002C830C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D2590 002C8310  3F E0 80 41 */	lis r31, lbl_80410740@ha
/* 802D2594 002C8314  38 A0 00 00 */	li r5, 0x0
/* 802D2598 002C8318  38 C0 00 30 */	li r6, 0x30
/* 802D259C 002C831C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D25A0 002C8320  3B C0 00 00 */	li r30, 0x0
/* 802D25A4 002C8324  38 E0 00 00 */	li r7, 0x0
/* 802D25A8 002C8328  39 00 00 00 */	li r8, 0x0
/* 802D25AC 002C832C  90 81 00 08 */	stw r4, 0x8(r1)
/* 802D25B0 002C8330  38 9F 07 40 */	addi r4, r31, lbl_80410740@l
/* 802D25B4 002C8334  39 20 00 00 */	li r9, 0x0
/* 802D25B8 002C8338  39 40 00 00 */	li r10, 0x0
/* 802D25BC 002C833C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802D25C0 002C8340  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802D25C4 002C8344  4B FA A2 45 */	bl fn_8027C808
/* 802D25C8 002C8348  3C A0 80 41 */	lis r5, lbl_804106DC@ha
/* 802D25CC 002C834C  38 9F 07 40 */	addi r4, r31, lbl_80410740@l
/* 802D25D0 002C8350  38 A5 06 DC */	addi r5, r5, lbl_804106DC@l
/* 802D25D4 002C8354  3C 60 80 53 */	lis r3, lbl_805327C4@ha
/* 802D25D8 002C8358  90 A1 00 08 */	stw r5, 0x8(r1)
/* 802D25DC 002C835C  38 00 00 05 */	li r0, 0x5
/* 802D25E0 002C8360  3C A0 80 53 */	lis r5, lbl_80532730@ha
/* 802D25E4 002C8364  38 63 27 C4 */	addi r3, r3, lbl_805327C4@l
/* 802D25E8 002C8368  90 01 00 0C */	stw r0, 0xc(r1)
/* 802D25EC 002C836C  38 84 00 21 */	addi r4, r4, 0x21
/* 802D25F0 002C8370  38 A5 27 30 */	addi r5, r5, lbl_80532730@l
/* 802D25F4 002C8374  38 C0 00 50 */	li r6, 0x50
/* 802D25F8 002C8378  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802D25FC 002C837C  38 E0 00 00 */	li r7, 0x0
/* 802D2600 002C8380  39 00 00 00 */	li r8, 0x0
/* 802D2604 002C8384  39 20 00 00 */	li r9, 0x0
/* 802D2608 002C8388  39 40 00 00 */	li r10, 0x0
/* 802D260C 002C838C  4B FA A1 FD */	bl fn_8027C808
/* 802D2610 002C8390  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D2614 002C8394  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D2618 002C8398  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D261C 002C839C  7C 08 03 A6 */	mtlr r0
/* 802D2620 002C83A0  38 21 00 20 */	addi r1, r1, 0x20
/* 802D2624 002C83A4  4E 80 00 20 */	blr
.endfn fn_802D256C

# 0x80406674..0x80406678 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802D256C
