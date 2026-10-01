.include "macros.inc"
.file "auto_fn_802A21C0_text"

# 0x80006898..0x800068A0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006898 | size: 0x8
.obj "@etb_80006898", local
.hidden "@etb_80006898"
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
.endobj "@etb_80006898"

# 0x80009C7C..0x80009C88 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009C7C | size: 0xC
.obj "@eti_80009C7C", local
.hidden "@eti_80009C7C"
	.4byte fn_802A21C0
	.4byte 0x0000005C
	.4byte "@etb_80006898"
.endobj "@eti_80009C7C"

# 0x802A21C0..0x802A221C | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802A21C0 | size: 0x5C
.fn fn_802A21C0, global
/* 802A21C0 00297F40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A21C4 00297F44  7C 08 02 A6 */	mflr r0
/* 802A21C8 00297F48  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A21CC 00297F4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A21D0 00297F50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A21D4 00297F54  7C 7F 1B 78 */	mr r31, r3
/* 802A21D8 00297F58  41 82 00 2C */	beq .L_802A2204
/* 802A21DC 00297F5C  2C 04 00 00 */	cmpwi r4, 0x0
/* 802A21E0 00297F60  40 81 00 24 */	ble .L_802A2204
/* 802A21E4 00297F64  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A21E8 00297F68  7F E4 FB 78 */	mr r4, r31
/* 802A21EC 00297F6C  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802A21F0 00297F70  38 C0 00 1D */	li r6, 0x1d
/* 802A21F4 00297F74  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A21F8 00297F78  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A21FC 00297F7C  7D 89 03 A6 */	mtctr r12
/* 802A2200 00297F80  4E 80 04 21 */	bctrl
.L_802A2204:
/* 802A2204 00297F84  7F E3 FB 78 */	mr r3, r31
/* 802A2208 00297F88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A220C 00297F8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A2210 00297F90  7C 08 03 A6 */	mtlr r0
/* 802A2214 00297F94  38 21 00 10 */	addi r1, r1, 0x10
/* 802A2218 00297F98  4E 80 00 20 */	blr
.endfn fn_802A21C0
