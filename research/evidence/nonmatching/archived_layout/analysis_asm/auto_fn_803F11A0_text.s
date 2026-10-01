.include "macros.inc"
.file "auto_fn_803F11A0_text"

# 0x8000952C..0x80009534 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000952C | size: 0x8
.obj "@etb_8000952C", local
.hidden "@etb_8000952C"
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
.endobj "@etb_8000952C"

# 0x8000C52C..0x8000C538 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C52C | size: 0xC
.obj "@eti_8000C52C", local
.hidden "@eti_8000C52C"
	.4byte fn_803F11A0
	.4byte 0x00000040
	.4byte "@etb_8000952C"
.endobj "@eti_8000C52C"

# 0x803F11A0..0x803F11E0 | size: 0x40
.text
.balign 4

# .text:0x0 | 0x803F11A0 | size: 0x40
.fn fn_803F11A0, global
/* 803F11A0 003E6F20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F11A4 003E6F24  7C 08 02 A6 */	mflr r0
/* 803F11A8 003E6F28  2C 03 00 00 */	cmpwi r3, 0x0
/* 803F11AC 003E6F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F11B0 003E6F30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F11B4 003E6F34  7C 7F 1B 78 */	mr r31, r3
/* 803F11B8 003E6F38  41 82 00 10 */	beq .L_803F11C8
/* 803F11BC 003E6F3C  2C 04 00 00 */	cmpwi r4, 0x0
/* 803F11C0 003E6F40  40 81 00 08 */	ble .L_803F11C8
/* 803F11C4 003E6F44  4B C1 B7 05 */	bl fn_8000C8C8
.L_803F11C8:
/* 803F11C8 003E6F48  7F E3 FB 78 */	mr r3, r31
/* 803F11CC 003E6F4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F11D0 003E6F50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F11D4 003E6F54  7C 08 03 A6 */	mtlr r0
/* 803F11D8 003E6F58  38 21 00 10 */	addi r1, r1, 0x10
/* 803F11DC 003E6F5C  4E 80 00 20 */	blr
.endfn fn_803F11A0
