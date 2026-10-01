.include "macros.inc"
.file "auto_fn_802CD66C_text"

# 0x800082C0..0x800082C8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800082C0 | size: 0x8
.obj "@etb_800082C0", local
.hidden "@etb_800082C0"
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
.endobj "@etb_800082C0"

# 0x8000AFA8..0x8000AFB4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AFA8 | size: 0xC
.obj "@eti_8000AFA8", local
.hidden "@eti_8000AFA8"
	.4byte fn_802CD66C
	.4byte 0x0000005C
	.4byte "@etb_800082C0"
.endobj "@eti_8000AFA8"

# 0x802CD66C..0x802CD6C8 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802CD66C | size: 0x5C
.fn fn_802CD66C, global
/* 802CD66C 002C33EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CD670 002C33F0  7C 08 02 A6 */	mflr r0
/* 802CD674 002C33F4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802CD678 002C33F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CD67C 002C33FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CD680 002C3400  7C 7F 1B 78 */	mr r31, r3
/* 802CD684 002C3404  41 82 00 2C */	beq .L_802CD6B0
/* 802CD688 002C3408  2C 04 00 00 */	cmpwi r4, 0x0
/* 802CD68C 002C340C  40 81 00 24 */	ble .L_802CD6B0
/* 802CD690 002C3410  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802CD694 002C3414  7F E4 FB 78 */	mr r4, r31
/* 802CD698 002C3418  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802CD69C 002C341C  38 C0 00 25 */	li r6, 0x25
/* 802CD6A0 002C3420  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CD6A4 002C3424  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802CD6A8 002C3428  7D 89 03 A6 */	mtctr r12
/* 802CD6AC 002C342C  4E 80 04 21 */	bctrl
.L_802CD6B0:
/* 802CD6B0 002C3430  7F E3 FB 78 */	mr r3, r31
/* 802CD6B4 002C3434  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CD6B8 002C3438  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CD6BC 002C343C  7C 08 03 A6 */	mtlr r0
/* 802CD6C0 002C3440  38 21 00 10 */	addi r1, r1, 0x10
/* 802CD6C4 002C3444  4E 80 00 20 */	blr
.endfn fn_802CD66C
