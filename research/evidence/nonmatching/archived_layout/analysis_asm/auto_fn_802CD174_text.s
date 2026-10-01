.include "macros.inc"
.file "auto_fn_802CD174_text"

# 0x80008290..0x80008298 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008290 | size: 0x8
.obj "@etb_80008290", local
.hidden "@etb_80008290"
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
.endobj "@etb_80008290"

# 0x8000AF60..0x8000AF6C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AF60 | size: 0xC
.obj "@eti_8000AF60", local
.hidden "@eti_8000AF60"
	.4byte fn_802CD174
	.4byte 0x0000005C
	.4byte "@etb_80008290"
.endobj "@eti_8000AF60"

# 0x802CD174..0x802CD1D0 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802CD174 | size: 0x5C
.fn fn_802CD174, global
/* 802CD174 002C2EF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CD178 002C2EF8  7C 08 02 A6 */	mflr r0
/* 802CD17C 002C2EFC  2C 03 00 00 */	cmpwi r3, 0x0
/* 802CD180 002C2F00  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CD184 002C2F04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CD188 002C2F08  7C 7F 1B 78 */	mr r31, r3
/* 802CD18C 002C2F0C  41 82 00 2C */	beq .L_802CD1B8
/* 802CD190 002C2F10  2C 04 00 00 */	cmpwi r4, 0x0
/* 802CD194 002C2F14  40 81 00 24 */	ble .L_802CD1B8
/* 802CD198 002C2F18  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802CD19C 002C2F1C  7F E4 FB 78 */	mr r4, r31
/* 802CD1A0 002C2F20  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802CD1A4 002C2F24  38 C0 00 25 */	li r6, 0x25
/* 802CD1A8 002C2F28  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CD1AC 002C2F2C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802CD1B0 002C2F30  7D 89 03 A6 */	mtctr r12
/* 802CD1B4 002C2F34  4E 80 04 21 */	bctrl
.L_802CD1B8:
/* 802CD1B8 002C2F38  7F E3 FB 78 */	mr r3, r31
/* 802CD1BC 002C2F3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CD1C0 002C2F40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CD1C4 002C2F44  7C 08 03 A6 */	mtlr r0
/* 802CD1C8 002C2F48  38 21 00 10 */	addi r1, r1, 0x10
/* 802CD1CC 002C2F4C  4E 80 00 20 */	blr
.endfn fn_802CD174
