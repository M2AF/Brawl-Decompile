.include "macros.inc"
.file "auto_fn_8031D6C0_text"

# 0x80008C84..0x80008C8C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008C84 | size: 0x8
.obj "@etb_80008C84", local
.hidden "@etb_80008C84"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_80008C84"

# 0x8000BBFC..0x8000BC08 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BBFC | size: 0xC
.obj "@eti_8000BBFC", local
.hidden "@eti_8000BBFC"
	.4byte fn_8031D6C0
	.4byte 0x00000070
	.4byte "@etb_80008C84"
.endobj "@eti_8000BBFC"

# 0x8031D6C0..0x8031D730 | size: 0x70
.text
.balign 4

# .text:0x0 | 0x8031D6C0 | size: 0x70
.fn fn_8031D6C0, global
/* 8031D6C0 00313440  54 2B 07 3E */	clrlwi r11, r1, 28
/* 8031D6C4 00313444  7C 2C 0B 78 */	mr r12, r1
/* 8031D6C8 00313448  21 6B FF 90 */	subfic r11, r11, -0x70
/* 8031D6CC 0031344C  7C 21 59 6E */	stwux r1, r1, r11
/* 8031D6D0 00313450  7C 08 02 A6 */	mflr r0
/* 8031D6D4 00313454  90 0C 00 04 */	stw r0, 0x4(r12)
/* 8031D6D8 00313458  38 C1 00 20 */	addi r6, r1, 0x20
/* 8031D6DC 0031345C  38 E1 00 10 */	addi r7, r1, 0x10
/* 8031D6E0 00313460  93 EC FF FC */	stw r31, -0x4(r12)
/* 8031D6E4 00313464  7C 7F 1B 78 */	mr r31, r3
/* 8031D6E8 00313468  80 A3 00 68 */	lwz r5, 0x68(r3)
/* 8031D6EC 0031346C  4B FF F8 69 */	bl fn_8031CF54
/* 8031D6F0 00313470  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8031D6F4 00313474  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8031D6F8 00313478  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8031D6FC 0031347C  40 80 00 0C */	bge .L_8031D708
/* 8031D700 00313480  38 60 00 01 */	li r3, 0x1
/* 8031D704 00313484  48 00 00 14 */	b .L_8031D718
.L_8031D708:
/* 8031D708 00313488  7F E3 FB 78 */	mr r3, r31
/* 8031D70C 0031348C  38 81 00 20 */	addi r4, r1, 0x20
/* 8031D710 00313490  48 00 01 ED */	bl fn_8031D8FC
/* 8031D714 00313494  38 60 00 00 */	li r3, 0x0
.L_8031D718:
/* 8031D718 00313498  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8031D71C 0031349C  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8031D720 003134A0  83 EA FF FC */	lwz r31, -0x4(r10)
/* 8031D724 003134A4  7C 08 03 A6 */	mtlr r0
/* 8031D728 003134A8  7D 41 53 78 */	mr r1, r10
/* 8031D72C 003134AC  4E 80 00 20 */	blr
.endfn fn_8031D6C0
