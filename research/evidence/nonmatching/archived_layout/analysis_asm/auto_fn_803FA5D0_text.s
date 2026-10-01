.include "macros.inc"
.file "auto_fn_803FA5D0_text"

# 0x800096E4..0x800096EC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800096E4 | size: 0x8
.obj "@etb_800096E4", local
.hidden "@etb_800096E4"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800096E4"

# 0x8000C79C..0x8000C7A8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C79C | size: 0xC
.obj "@eti_8000C79C", local
.hidden "@eti_8000C79C"
	.4byte fn_803FA5D0
	.4byte 0x000000A4
	.4byte "@etb_800096E4"
.endobj "@eti_8000C79C"

# 0x803FA5D0..0x803FA674 | size: 0xA4
.text
.balign 4

# .text:0x0 | 0x803FA5D0 | size: 0xA4
.fn fn_803FA5D0, global
/* 803FA5D0 003F0350  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FA5D4 003F0354  38 00 00 00 */	li r0, 0x0
/* 803FA5D8 003F0358  39 04 FF FF */	subi r8, r4, 0x1
/* 803FA5DC 003F035C  38 80 00 01 */	li r4, 0x1
/* 803FA5E0 003F0360  90 01 00 08 */	stw r0, 0x8(r1)
/* 803FA5E4 003F0364  38 C1 00 08 */	addi r6, r1, 0x8
/* 803FA5E8 003F0368  90 01 00 0C */	stw r0, 0xc(r1)
/* 803FA5EC 003F036C  90 01 00 10 */	stw r0, 0x10(r1)
/* 803FA5F0 003F0370  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FA5F4 003F0374  90 01 00 18 */	stw r0, 0x18(r1)
/* 803FA5F8 003F0378  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803FA5FC 003F037C  90 01 00 20 */	stw r0, 0x20(r1)
/* 803FA600 003F0380  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FA604 003F0384  48 00 00 20 */	b .L_803FA624
.L_803FA608:
/* 803FA608 003F0388  54 07 EE FE */	extrwi r7, r0, 5, 24
/* 803FA60C 003F038C  54 00 07 7E */	clrlwi r0, r0, 29
/* 803FA610 003F0390  7C 80 00 30 */	slw r0, r4, r0
/* 803FA614 003F0394  7C A6 38 AE */	lbzx r5, r6, r7
/* 803FA618 003F0398  54 00 06 3E */	clrlwi r0, r0, 24
/* 803FA61C 003F039C  7C A0 03 78 */	or r0, r5, r0
/* 803FA620 003F03A0  7C 06 39 AE */	stbx r0, r6, r7
.L_803FA624:
/* 803FA624 003F03A4  8C 08 00 01 */	lbzu r0, 0x1(r8)
/* 803FA628 003F03A8  2C 00 00 00 */	cmpwi r0, 0x0
/* 803FA62C 003F03AC  40 82 FF DC */	bne .L_803FA608
/* 803FA630 003F03B0  38 E3 FF FF */	subi r7, r3, 0x1
/* 803FA634 003F03B4  38 C1 00 08 */	addi r6, r1, 0x8
/* 803FA638 003F03B8  38 80 00 01 */	li r4, 0x1
/* 803FA63C 003F03BC  48 00 00 20 */	b .L_803FA65C
.L_803FA640:
/* 803FA640 003F03C0  54 05 EE FE */	extrwi r5, r0, 5, 24
/* 803FA644 003F03C4  54 00 07 7E */	clrlwi r0, r0, 29
/* 803FA648 003F03C8  7C 80 00 30 */	slw r0, r4, r0
/* 803FA64C 003F03CC  7C A6 28 AE */	lbzx r5, r6, r5
/* 803FA650 003F03D0  54 00 06 3E */	clrlwi r0, r0, 24
/* 803FA654 003F03D4  7C A0 00 39 */	and. r0, r5, r0
/* 803FA658 003F03D8  40 82 00 10 */	bne .L_803FA668
.L_803FA65C:
/* 803FA65C 003F03DC  8C 07 00 01 */	lbzu r0, 0x1(r7)
/* 803FA660 003F03E0  2C 00 00 00 */	cmpwi r0, 0x0
/* 803FA664 003F03E4  40 82 FF DC */	bne .L_803FA640
.L_803FA668:
/* 803FA668 003F03E8  7C 63 38 50 */	subf r3, r3, r7
/* 803FA66C 003F03EC  38 21 00 30 */	addi r1, r1, 0x30
/* 803FA670 003F03F0  4E 80 00 20 */	blr
.endfn fn_803FA5D0
