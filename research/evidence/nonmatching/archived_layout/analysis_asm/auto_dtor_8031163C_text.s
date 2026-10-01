.include "macros.inc"
.file "auto_dtor_8031163C_text"

# 0x80008AC0..0x80008AC8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008AC0 | size: 0x8
.obj "@etb_80008AC0", local
.hidden "@etb_80008AC0"
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
.endobj "@etb_80008AC0"

# 0x8000B9A4..0x8000B9B0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B9A4 | size: 0xC
.obj "@eti_8000B9A4", local
.hidden "@eti_8000B9A4"
	.4byte dtor_8031163C
	.4byte 0x00000090
	.4byte "@etb_80008AC0"
.endobj "@eti_8000B9A4"

# 0x8031163C..0x803116CC | size: 0x90
.text
.balign 4

# .text:0x0 | 0x8031163C | size: 0x90
.fn dtor_8031163C, global
/* 8031163C 003073BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80311640 003073C0  7C 08 02 A6 */	mflr r0
/* 80311644 003073C4  2C 03 00 00 */	cmpwi r3, 0x0
/* 80311648 003073C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031164C 003073CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80311650 003073D0  7C 9F 23 78 */	mr r31, r4
/* 80311654 003073D4  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80311658 003073D8  7C 7E 1B 78 */	mr r30, r3
/* 8031165C 003073DC  41 82 00 54 */	beq .L_803116B0
/* 80311660 003073E0  80 83 00 00 */	lwz r4, 0x0(r3)
/* 80311664 003073E4  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 80311668 003073E8  90 83 00 10 */	stw r4, 0x10(r3)
/* 8031166C 003073EC  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80311670 003073F0  7C 04 00 40 */	cmplw r4, r0
/* 80311674 003073F4  40 82 00 14 */	bne .L_80311688
/* 80311678 003073F8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8031167C 003073FC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80311680 00307400  7D 89 03 A6 */	mtctr r12
/* 80311684 00307404  4E 80 04 21 */	bctrl
.L_80311688:
/* 80311688 00307408  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8031168C 0030740C  40 81 00 24 */	ble .L_803116B0
/* 80311690 00307410  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 80311694 00307414  7F C4 F3 78 */	mr r4, r30
/* 80311698 00307418  38 A0 00 08 */	li r5, 0x8
/* 8031169C 0030741C  38 C0 00 15 */	li r6, 0x15
/* 803116A0 00307420  81 83 00 00 */	lwz r12, 0x0(r3)
/* 803116A4 00307424  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 803116A8 00307428  7D 89 03 A6 */	mtctr r12
/* 803116AC 0030742C  4E 80 04 21 */	bctrl
.L_803116B0:
/* 803116B0 00307430  7F C3 F3 78 */	mr r3, r30
/* 803116B4 00307434  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803116B8 00307438  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803116BC 0030743C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803116C0 00307440  7C 08 03 A6 */	mtlr r0
/* 803116C4 00307444  38 21 00 10 */	addi r1, r1, 0x10
/* 803116C8 00307448  4E 80 00 20 */	blr
.endfn dtor_8031163C
