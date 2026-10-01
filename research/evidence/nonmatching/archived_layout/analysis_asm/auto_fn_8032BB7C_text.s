.include "macros.inc"
.file "auto_fn_8032BB7C_text"

# 0x80009100..0x80009118 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009100 | size: 0x18
.obj "@etb_80009100", local
.hidden "@etb_80009100"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * 
 * PC actions:
 * PC=0000002C, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DESTROYLOCAL
 * Local: 0x8(SP)
 * Dtor: "dtor_802D75E0"
 * Has end bit
 */
	.4byte 0x00080000
	.4byte 0x0000002C
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte dtor_802D75E0
.endobj "@etb_80009100"

# 0x8000BF68..0x8000BF74 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BF68 | size: 0xC
.obj "@eti_8000BF68", local
.hidden "@eti_8000BF68"
	.4byte fn_8032BB7C
	.4byte 0x00000060
	.4byte "@etb_80009100"
.endobj "@eti_8000BF68"

# 0x8032BB7C..0x8032BBDC | size: 0x60
.text
.balign 4

# .text:0x0 | 0x8032BB7C | size: 0x60
.fn fn_8032BB7C, global
/* 8032BB7C 003218FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032BB80 00321900  7C 08 02 A6 */	mflr r0
/* 8032BB84 00321904  3C C0 80 00 */	lis r6, 0x8000
/* 8032BB88 00321908  38 E0 00 01 */	li r7, 0x1
/* 8032BB8C 0032190C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032BB90 00321910  38 06 00 01 */	addi r0, r6, 0x1
/* 8032BB94 00321914  90 A1 00 08 */	stw r5, 0x8(r1)
/* 8032BB98 00321918  38 A1 00 08 */	addi r5, r1, 0x8
/* 8032BB9C 0032191C  90 E1 00 0C */	stw r7, 0xc(r1)
/* 8032BBA0 00321920  90 01 00 10 */	stw r0, 0x10(r1)
/* 8032BBA4 00321924  4B FF FD 39 */	bl fn_8032B8DC
/* 8032BBA8 00321928  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8032BBAC 0032192C  54 00 00 01 */	clrrwi. r0, r0, 31
/* 8032BBB0 00321930  40 82 00 1C */	bne .L_8032BBCC
/* 8032BBB4 00321934  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8032BBB8 00321938  38 C0 00 15 */	li r6, 0x15
/* 8032BBBC 0032193C  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 8032BBC0 00321940  80 81 00 08 */	lwz r4, 0x8(r1)
/* 8032BBC4 00321944  54 05 10 3A */	slwi r5, r0, 2
/* 8032BBC8 00321948  4B F5 2E F5 */	bl fn_8027EABC
.L_8032BBCC:
/* 8032BBCC 0032194C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032BBD0 00321950  7C 08 03 A6 */	mtlr r0
/* 8032BBD4 00321954  38 21 00 20 */	addi r1, r1, 0x20
/* 8032BBD8 00321958  4E 80 00 20 */	blr
.endfn fn_8032BB7C
