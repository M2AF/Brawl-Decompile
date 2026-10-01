.include "macros.inc"
.file "auto_fn_803F646C_text"

# 0x80009634..0x8000963C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009634 | size: 0x8
.obj "@etb_80009634", local
.hidden "@etb_80009634"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80009634"

# 0x8000C694..0x8000C6A0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C694 | size: 0xC
.obj "@eti_8000C694", local
.hidden "@eti_8000C694"
	.4byte fn_803F646C
	.4byte 0x00000064
	.4byte "@etb_80009634"
.endobj "@eti_8000C694"

# 0x803F646C..0x803F64D0 | size: 0x64
.text
.balign 4

# .text:0x0 | 0x803F646C | size: 0x64
.fn fn_803F646C, global
/* 803F646C 003EC1EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F6470 003EC1F0  3C 00 7F 80 */	lis r0, 0x7f80
/* 803F6474 003EC1F4  D0 21 00 08 */	stfs f1, 0x8(r1)
/* 803F6478 003EC1F8  80 81 00 08 */	lwz r4, 0x8(r1)
/* 803F647C 003EC1FC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 803F6480 003EC200  7C 03 00 00 */	cmpw r3, r0
/* 803F6484 003EC204  41 82 00 14 */	beq .L_803F6498
/* 803F6488 003EC208  40 80 00 3C */	bge .L_803F64C4
/* 803F648C 003EC20C  2C 03 00 00 */	cmpwi r3, 0x0
/* 803F6490 003EC210  41 82 00 20 */	beq .L_803F64B0
/* 803F6494 003EC214  48 00 00 30 */	b .L_803F64C4
.L_803F6498:
/* 803F6498 003EC218  54 83 02 7E */	clrlwi r3, r4, 9
/* 803F649C 003EC21C  7C 03 00 D0 */	neg r0, r3
/* 803F64A0 003EC220  7C 00 1B 78 */	or r0, r0, r3
/* 803F64A4 003EC224  7C 03 FE 70 */	srawi r3, r0, 31
/* 803F64A8 003EC228  38 63 00 02 */	addi r3, r3, 0x2
/* 803F64AC 003EC22C  48 00 00 1C */	b .L_803F64C8
.L_803F64B0:
/* 803F64B0 003EC230  54 80 02 7F */	clrlwi. r0, r4, 9
/* 803F64B4 003EC234  38 60 00 03 */	li r3, 0x3
/* 803F64B8 003EC238  41 82 00 10 */	beq .L_803F64C8
/* 803F64BC 003EC23C  38 60 00 05 */	li r3, 0x5
/* 803F64C0 003EC240  48 00 00 08 */	b .L_803F64C8
.L_803F64C4:
/* 803F64C4 003EC244  38 60 00 04 */	li r3, 0x4
.L_803F64C8:
/* 803F64C8 003EC248  38 21 00 10 */	addi r1, r1, 0x10
/* 803F64CC 003EC24C  4E 80 00 20 */	blr
.endfn fn_803F646C
