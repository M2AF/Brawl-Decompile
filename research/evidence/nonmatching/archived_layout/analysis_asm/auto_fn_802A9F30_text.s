.include "macros.inc"
.file "auto_fn_802A9F30_text"

# 0x80006E74..0x80006E7C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006E74 | size: 0x8
.obj "@etb_80006E74", local
.hidden "@etb_80006E74"
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
.endobj "@etb_80006E74"

# 0x8000A06C..0x8000A078 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A06C | size: 0xC
.obj "@eti_8000A06C", local
.hidden "@eti_8000A06C"
	.4byte fn_802A9F30
	.4byte 0x00000058
	.4byte "@etb_80006E74"
.endobj "@eti_8000A06C"

# 0x802A9F30..0x802A9F88 | size: 0x58
.text
.balign 4

# .text:0x0 | 0x802A9F30 | size: 0x58
.fn fn_802A9F30, global
/* 802A9F30 0029FCB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A9F34 0029FCB4  7C 08 02 A6 */	mflr r0
/* 802A9F38 0029FCB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A9F3C 0029FCBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A9F40 0029FCC0  7C 7F 1B 78 */	mr r31, r3
/* 802A9F44 0029FCC4  80 83 00 0C */	lwz r4, 0xc(r3)
/* 802A9F48 0029FCC8  80 A3 00 08 */	lwz r5, 0x8(r3)
/* 802A9F4C 0029FCCC  38 63 00 30 */	addi r3, r3, 0x30
/* 802A9F50 0029FCD0  48 05 27 5D */	bl fn_802FC6AC
/* 802A9F54 0029FCD4  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802A9F58 0029FCD8  41 82 00 1C */	beq .L_802A9F74
/* 802A9F5C 0029FCDC  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 802A9F60 0029FCE0  7F E3 FB 78 */	mr r3, r31
/* 802A9F64 0029FCE4  38 80 00 01 */	li r4, 0x1
/* 802A9F68 0029FCE8  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802A9F6C 0029FCEC  7D 89 03 A6 */	mtctr r12
/* 802A9F70 0029FCF0  4E 80 04 21 */	bctrl
.L_802A9F74:
/* 802A9F74 0029FCF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A9F78 0029FCF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A9F7C 0029FCFC  7C 08 03 A6 */	mtlr r0
/* 802A9F80 0029FD00  38 21 00 10 */	addi r1, r1, 0x10
/* 802A9F84 0029FD04  4E 80 00 20 */	blr
.endfn fn_802A9F30
