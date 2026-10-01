.include "macros.inc"
.file "auto_fn_802D71A8_text"

# 0x80008644..0x8000864C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008644 | size: 0x8
.obj "@etb_80008644", local
.hidden "@etb_80008644"
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
.endobj "@etb_80008644"

# 0x8000B4B8..0x8000B4C4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B4B8 | size: 0xC
.obj "@eti_8000B4B8", local
.hidden "@eti_8000B4B8"
	.4byte fn_802D71A8
	.4byte 0x00000064
	.4byte "@etb_80008644"
.endobj "@eti_8000B4B8"

# 0x802D71A8..0x802D720C | size: 0x64
.text
.balign 4

# .text:0x0 | 0x802D71A8 | size: 0x64
.fn fn_802D71A8, global
/* 802D71A8 002CCF28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D71AC 002CCF2C  7C 08 02 A6 */	mflr r0
/* 802D71B0 002CCF30  7C 66 1B 78 */	mr r6, r3
/* 802D71B4 002CCF34  38 A0 00 01 */	li r5, 0x1
/* 802D71B8 002CCF38  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D71BC 002CCF3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D71C0 002CCF40  7C 9F 23 78 */	mr r31, r4
/* 802D71C4 002CCF44  3C 80 80 41 */	lis r4, lbl_80410FB0@ha
/* 802D71C8 002CCF48  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 802D71CC 002CCF4C  38 84 0F B0 */	addi r4, r4, lbl_80410FB0@l
/* 802D71D0 002CCF50  7F E3 FB 78 */	mr r3, r31
/* 802D71D4 002CCF54  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802D71D8 002CCF58  38 84 00 10 */	addi r4, r4, 0x10
/* 802D71DC 002CCF5C  7D 89 03 A6 */	mtctr r12
/* 802D71E0 002CCF60  4E 80 04 21 */	bctrl
/* 802D71E4 002CCF64  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 802D71E8 002CCF68  7F E3 FB 78 */	mr r3, r31
/* 802D71EC 002CCF6C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802D71F0 002CCF70  7D 89 03 A6 */	mtctr r12
/* 802D71F4 002CCF74  4E 80 04 21 */	bctrl
/* 802D71F8 002CCF78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D71FC 002CCF7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D7200 002CCF80  7C 08 03 A6 */	mtlr r0
/* 802D7204 002CCF84  38 21 00 10 */	addi r1, r1, 0x10
/* 802D7208 002CCF88  4E 80 00 20 */	blr
.endfn fn_802D71A8
