.include "macros.inc"
.file "auto_fn_802C2558_text"

# 0x80007D18..0x80007D20 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007D18 | size: 0x8
.obj "@etb_80007D18", local
.hidden "@etb_80007D18"
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
.endobj "@etb_80007D18"

# 0x8000AA8C..0x8000AA98 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AA8C | size: 0xC
.obj "@eti_8000AA8C", local
.hidden "@eti_8000AA8C"
	.4byte fn_802C2558
	.4byte 0x00000078
	.4byte "@etb_80007D18"
.endobj "@eti_8000AA8C"

# 0x802C2558..0x802C25D0 | size: 0x78
.text
.balign 4

# .text:0x0 | 0x802C2558 | size: 0x78
.fn fn_802C2558, global
/* 802C2558 002B82D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C255C 002B82DC  7C 08 02 A6 */	mflr r0
/* 802C2560 002B82E0  38 80 00 10 */	li r4, 0x10
/* 802C2564 002B82E4  38 A0 00 1D */	li r5, 0x1d
/* 802C2568 002B82E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C256C 002B82EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C2570 002B82F0  7C DF 33 78 */	mr r31, r6
/* 802C2574 002B82F4  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802C2578 002B82F8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C257C 002B82FC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802C2580 002B8300  7D 89 03 A6 */	mtctr r12
/* 802C2584 002B8304  4E 80 04 21 */	bctrl
/* 802C2588 002B8308  38 00 00 10 */	li r0, 0x10
/* 802C258C 002B830C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C2590 002B8310  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802C2594 002B8314  41 82 00 28 */	beq .L_802C25BC
/* 802C2598 002B8318  38 00 00 01 */	li r0, 0x1
/* 802C259C 002B831C  3C A0 80 48 */	lis r5, lbl_80486FEC@ha
/* 802C25A0 002B8320  B0 03 00 06 */	sth r0, 0x6(r3)
/* 802C25A4 002B8324  3C 80 00 01 */	lis r4, 0x1
/* 802C25A8 002B8328  38 A5 6F EC */	addi r5, r5, lbl_80486FEC@l
/* 802C25AC 002B832C  93 E3 00 08 */	stw r31, 0x8(r3)
/* 802C25B0 002B8330  38 04 FF FF */	subi r0, r4, 0x1
/* 802C25B4 002B8334  90 A3 00 00 */	stw r5, 0x0(r3)
/* 802C25B8 002B8338  B0 03 00 0C */	sth r0, 0xc(r3)
.L_802C25BC:
/* 802C25BC 002B833C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C25C0 002B8340  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C25C4 002B8344  7C 08 03 A6 */	mtlr r0
/* 802C25C8 002B8348  38 21 00 10 */	addi r1, r1, 0x10
/* 802C25CC 002B834C  4E 80 00 20 */	blr
.endfn fn_802C2558
