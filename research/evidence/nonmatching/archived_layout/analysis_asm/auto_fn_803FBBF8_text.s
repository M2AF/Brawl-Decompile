.include "macros.inc"
.file "auto_fn_803FBBF8_text"

# 0x800096FC..0x80009704 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800096FC | size: 0x8
.obj "@etb_800096FC", local
.hidden "@etb_800096FC"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_800096FC"

# 0x8000C7C0..0x8000C7CC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C7C0 | size: 0xC
.obj "@eti_8000C7C0", local
.hidden "@eti_8000C7C0"
	.4byte fn_803FBBF8
	.4byte 0x00000084
	.4byte "@etb_800096FC"
.endobj "@eti_8000C7C0"

# 0x803FBBF8..0x803FBC7C | size: 0x84
.text
.balign 4

# .text:0x0 | 0x803FBBF8 | size: 0x84
.fn fn_803FBBF8, global
/* 803FBBF8 003F1978  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FBBFC 003F197C  7C 08 02 A6 */	mflr r0
/* 803FBC00 003F1980  3C 80 80 40 */	lis r4, fn_803FA078@ha
/* 803FBC04 003F1984  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FBC08 003F1988  38 00 00 00 */	li r0, 0x0
/* 803FBC0C 003F198C  38 84 A0 78 */	addi r4, r4, fn_803FA078@l
/* 803FBC10 003F1990  38 A1 00 10 */	addi r5, r1, 0x10
/* 803FBC14 003F1994  90 61 00 10 */	stw r3, 0x10(r1)
/* 803FBC18 003F1998  3C 60 80 00 */	lis r3, 0x8000
/* 803FBC1C 003F199C  38 63 FF FF */	subi r3, r3, 0x1
/* 803FBC20 003F19A0  38 C1 00 08 */	addi r6, r1, 0x8
/* 803FBC24 003F19A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FBC28 003F19A8  38 E1 00 0C */	addi r7, r1, 0xc
/* 803FBC2C 003F19AC  4B FF EB D9 */	bl fn_803FA804
/* 803FBC30 003F19B0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803FBC34 003F19B4  FC 40 0A 10 */	fabs f2, f1
/* 803FBC38 003F19B8  2C 00 00 00 */	cmpwi r0, 0x0
/* 803FBC3C 003F19BC  40 82 00 28 */	bne .L_803FBC64
/* 803FBC40 003F19C0  C8 02 B8 C8 */	lfd f0, lbl_805A4BE8@sda21(r0)
/* 803FBC44 003F19C4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 803FBC48 003F19C8  41 82 00 24 */	beq .L_803FBC6C
/* 803FBC4C 003F19CC  C8 02 B8 D0 */	lfd f0, lbl_805A4BF0@sda21(r0)
/* 803FBC50 003F19D0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 803FBC54 003F19D4  41 80 00 10 */	blt .L_803FBC64
/* 803FBC58 003F19D8  C8 02 B8 D8 */	lfd f0, lbl_805A4BF8@sda21(r0)
/* 803FBC5C 003F19DC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 803FBC60 003F19E0  40 81 00 0C */	ble .L_803FBC6C
.L_803FBC64:
/* 803FBC64 003F19E4  38 00 00 22 */	li r0, 0x22
/* 803FBC68 003F19E8  90 0D CE C0 */	stw r0, lbl_805A12E0@sda21(r0)
.L_803FBC6C:
/* 803FBC6C 003F19EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FBC70 003F19F0  7C 08 03 A6 */	mtlr r0
/* 803FBC74 003F19F4  38 21 00 20 */	addi r1, r1, 0x20
/* 803FBC78 003F19F8  4E 80 00 20 */	blr
.endfn fn_803FBBF8
