.include "macros.inc"
.file "auto_fn_8032D524_text"

# 0x80009138..0x80009140 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009138 | size: 0x8
.obj "@etb_80009138", local
.hidden "@etb_80009138"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80009138"

# 0x8000BFA4..0x8000BFB0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BFA4 | size: 0xC
.obj "@eti_8000BFA4", local
.hidden "@eti_8000BFA4"
	.4byte fn_8032D524
	.4byte 0x000000BC
	.4byte "@etb_80009138"
.endobj "@eti_8000BFA4"

# 0x8032D524..0x8032D5E0 | size: 0xBC
.text
.balign 4

# .text:0x0 | 0x8032D524 | size: 0xBC
.fn fn_8032D524, global
/* 8032D524 003232A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8032D528 003232A8  7C 08 02 A6 */	mflr r0
/* 8032D52C 003232AC  3C 80 80 41 */	lis r4, lbl_804147C0@ha
/* 8032D530 003232B0  3C 60 80 53 */	lis r3, lbl_80533360@ha
/* 8032D534 003232B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8032D538 003232B8  38 84 47 C0 */	addi r4, r4, lbl_804147C0@l
/* 8032D53C 003232BC  38 63 33 60 */	addi r3, r3, lbl_80533360@l
/* 8032D540 003232C0  38 A0 00 00 */	li r5, 0x0
/* 8032D544 003232C4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8032D548 003232C8  3F E0 80 41 */	lis r31, lbl_80414820@ha
/* 8032D54C 003232CC  38 C0 00 08 */	li r6, 0x8
/* 8032D550 003232D0  38 E0 00 00 */	li r7, 0x0
/* 8032D554 003232D4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8032D558 003232D8  3B C0 00 00 */	li r30, 0x0
/* 8032D55C 003232DC  39 00 00 00 */	li r8, 0x0
/* 8032D560 003232E0  39 20 00 00 */	li r9, 0x0
/* 8032D564 003232E4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8032D568 003232E8  3B A0 00 02 */	li r29, 0x2
/* 8032D56C 003232EC  39 40 00 00 */	li r10, 0x0
/* 8032D570 003232F0  90 81 00 08 */	stw r4, 0x8(r1)
/* 8032D574 003232F4  38 9F 48 20 */	addi r4, r31, lbl_80414820@l
/* 8032D578 003232F8  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8032D57C 003232FC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8032D580 00323300  4B F4 F2 89 */	bl fn_8027C808
/* 8032D584 00323304  3C A0 80 41 */	lis r5, lbl_804147F8@ha
/* 8032D588 00323308  38 9F 48 20 */	addi r4, r31, lbl_80414820@l
/* 8032D58C 0032330C  38 A5 47 F8 */	addi r5, r5, lbl_804147F8@l
/* 8032D590 00323310  3C 60 80 53 */	lis r3, lbl_80533384@ha
/* 8032D594 00323314  90 A1 00 08 */	stw r5, 0x8(r1)
/* 8032D598 00323318  38 63 33 84 */	addi r3, r3, lbl_80533384@l
/* 8032D59C 0032331C  38 84 00 1C */	addi r4, r4, 0x1c
/* 8032D5A0 00323320  38 A0 00 00 */	li r5, 0x0
/* 8032D5A4 00323324  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8032D5A8 00323328  38 C0 00 0C */	li r6, 0xc
/* 8032D5AC 0032332C  38 E0 00 00 */	li r7, 0x0
/* 8032D5B0 00323330  39 00 00 00 */	li r8, 0x0
/* 8032D5B4 00323334  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8032D5B8 00323338  39 20 00 00 */	li r9, 0x0
/* 8032D5BC 0032333C  39 40 00 00 */	li r10, 0x0
/* 8032D5C0 00323340  4B F4 F2 49 */	bl fn_8027C808
/* 8032D5C4 00323344  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8032D5C8 00323348  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8032D5CC 0032334C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8032D5D0 00323350  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8032D5D4 00323354  7C 08 03 A6 */	mtlr r0
/* 8032D5D8 00323358  38 21 00 30 */	addi r1, r1, 0x30
/* 8032D5DC 0032335C  4E 80 00 20 */	blr
.endfn fn_8032D524

# 0x80406770..0x80406774 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8032D524
