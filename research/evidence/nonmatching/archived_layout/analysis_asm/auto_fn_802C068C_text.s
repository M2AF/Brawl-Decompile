.include "macros.inc"
.file "auto_fn_802C068C_text"

# 0x80007B84..0x80007B8C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007B84 | size: 0x8
.obj "@etb_80007B84", local
.hidden "@etb_80007B84"
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
.endobj "@etb_80007B84"

# 0x8000A924..0x8000A930 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A924 | size: 0xC
.obj "@eti_8000A924", local
.hidden "@eti_8000A924"
	.4byte fn_802C068C
	.4byte 0x0000008C
	.4byte "@etb_80007B84"
.endobj "@eti_8000A924"

# 0x802C068C..0x802C0718 | size: 0x8C
.text
.balign 4

# .text:0x0 | 0x802C068C | size: 0x8C
.fn fn_802C068C, global
/* 802C068C 002B640C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802C0690 002B6410  7C 08 02 A6 */	mflr r0
/* 802C0694 002B6414  3C C0 80 2C */	lis r6, fn_802C07D0@ha
/* 802C0698 002B6418  3D 20 80 2C */	lis r9, fn_802C0A08@ha
/* 802C069C 002B641C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802C06A0 002B6420  3D 00 80 2C */	lis r8, fn_802C0A2C@ha
/* 802C06A4 002B6424  3C E0 80 2C */	lis r7, fn_802C0A34@ha
/* 802C06A8 002B6428  38 C6 07 D0 */	addi r6, r6, fn_802C07D0@l
/* 802C06AC 002B642C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802C06B0 002B6430  39 29 0A 08 */	addi r9, r9, fn_802C0A08@l
/* 802C06B4 002B6434  39 08 0A 2C */	addi r8, r8, fn_802C0A2C@l
/* 802C06B8 002B6438  38 E7 0A 34 */	addi r7, r7, fn_802C0A34@l
/* 802C06BC 002B643C  38 80 00 00 */	li r4, 0x0
/* 802C06C0 002B6440  38 00 00 01 */	li r0, 0x1
/* 802C06C4 002B6444  98 81 00 18 */	stb r4, 0x18(r1)
/* 802C06C8 002B6448  7C 7F 1B 78 */	mr r31, r3
/* 802C06CC 002B644C  38 81 00 08 */	addi r4, r1, 0x8
/* 802C06D0 002B6450  38 A0 00 1A */	li r5, 0x1a
/* 802C06D4 002B6454  90 C1 00 08 */	stw r6, 0x8(r1)
/* 802C06D8 002B6458  38 C0 FF FF */	li r6, -0x1
/* 802C06DC 002B645C  91 21 00 0C */	stw r9, 0xc(r1)
/* 802C06E0 002B6460  91 01 00 10 */	stw r8, 0x10(r1)
/* 802C06E4 002B6464  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802C06E8 002B6468  98 01 00 19 */	stb r0, 0x19(r1)
/* 802C06EC 002B646C  48 00 BA 01 */	bl fn_802CC0EC
/* 802C06F0 002B6470  7F E3 FB 78 */	mr r3, r31
/* 802C06F4 002B6474  38 81 00 08 */	addi r4, r1, 0x8
/* 802C06F8 002B6478  38 A0 FF FF */	li r5, -0x1
/* 802C06FC 002B647C  38 C0 00 1A */	li r6, 0x1a
/* 802C0700 002B6480  48 00 B9 ED */	bl fn_802CC0EC
/* 802C0704 002B6484  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802C0708 002B6488  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802C070C 002B648C  7C 08 03 A6 */	mtlr r0
/* 802C0710 002B6490  38 21 00 30 */	addi r1, r1, 0x30
/* 802C0714 002B6494  4E 80 00 20 */	blr
.endfn fn_802C068C
