.include "macros.inc"
.file "auto_fn_802D2670_text"

# 0x800084B0..0x800084B8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800084B0 | size: 0x8
.obj "@etb_800084B0", local
.hidden "@etb_800084B0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800084B0"

# 0x8000B278..0x8000B284 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B278 | size: 0xC
.obj "@eti_8000B278", local
.hidden "@eti_8000B278"
	.4byte fn_802D2670
	.4byte 0x0000005C
	.4byte "@etb_800084B0"
.endobj "@eti_8000B278"

# 0x802D2670..0x802D26CC | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802D2670 | size: 0x5C
.fn fn_802D2670, global
/* 802D2670 002C83F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D2674 002C83F4  7C 08 02 A6 */	mflr r0
/* 802D2678 002C83F8  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D267C 002C83FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D2680 002C8400  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D2684 002C8404  7C 7F 1B 78 */	mr r31, r3
/* 802D2688 002C8408  41 82 00 2C */	beq .L_802D26B4
/* 802D268C 002C840C  2C 04 00 00 */	cmpwi r4, 0x0
/* 802D2690 002C8410  40 81 00 24 */	ble .L_802D26B4
/* 802D2694 002C8414  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802D2698 002C8418  7F E4 FB 78 */	mr r4, r31
/* 802D269C 002C841C  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802D26A0 002C8420  38 C0 00 25 */	li r6, 0x25
/* 802D26A4 002C8424  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D26A8 002C8428  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802D26AC 002C842C  7D 89 03 A6 */	mtctr r12
/* 802D26B0 002C8430  4E 80 04 21 */	bctrl
.L_802D26B4:
/* 802D26B4 002C8434  7F E3 FB 78 */	mr r3, r31
/* 802D26B8 002C8438  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D26BC 002C843C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D26C0 002C8440  7C 08 03 A6 */	mtlr r0
/* 802D26C4 002C8444  38 21 00 10 */	addi r1, r1, 0x10
/* 802D26C8 002C8448  4E 80 00 20 */	blr
.endfn fn_802D2670
