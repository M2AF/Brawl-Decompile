.include "macros.inc"
.file "auto_fn_802B86B8_text"

# 0x8000766C..0x80007684 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000766C | size: 0x18
.obj "@etb_8000766C", local
.hidden "@etb_8000766C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r27-r31
 * 
 * PC actions:
 * PC=00000060, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DELETEPOINTER
 * Pointer: r31)
 * Dtor: "dtor_802A1FD4"
 * Has end bit
 */
	.4byte 0x28080000
	.4byte 0x00000060
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8A80001F
	.4byte dtor_802A1FD4
.endobj "@etb_8000766C"

# 0x8000A5DC..0x8000A5E8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A5DC | size: 0xC
.obj "@eti_8000A5DC", local
.hidden "@eti_8000A5DC"
	.4byte fn_802B86B8
	.4byte 0x00000084
	.4byte "@etb_8000766C"
.endobj "@eti_8000A5DC"

# 0x802B86B8..0x802B873C | size: 0x84
.text
.balign 4

# .text:0x0 | 0x802B86B8 | size: 0x84
.fn fn_802B86B8, global
/* 802B86B8 002AE438  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B86BC 002AE43C  7C 08 02 A6 */	mflr r0
/* 802B86C0 002AE440  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B86C4 002AE444  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802B86C8 002AE448  7C 7B 1B 78 */	mr r27, r3
/* 802B86CC 002AE44C  7C 9C 23 78 */	mr r28, r4
/* 802B86D0 002AE450  7C BD 2B 78 */	mr r29, r5
/* 802B86D4 002AE454  7C DE 33 78 */	mr r30, r6
/* 802B86D8 002AE458  38 80 00 20 */	li r4, 0x20
/* 802B86DC 002AE45C  38 A0 00 1D */	li r5, 0x1d
/* 802B86E0 002AE460  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802B86E4 002AE464  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B86E8 002AE468  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802B86EC 002AE46C  7D 89 03 A6 */	mtctr r12
/* 802B86F0 002AE470  4E 80 04 21 */	bctrl
/* 802B86F4 002AE474  38 00 00 20 */	li r0, 0x20
/* 802B86F8 002AE478  7C 7F 1B 79 */	mr. r31, r3
/* 802B86FC 002AE47C  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802B8700 002AE480  41 82 00 24 */	beq .L_802B8724
/* 802B8704 002AE484  7F 84 E3 78 */	mr r4, r28
/* 802B8708 002AE488  7F 65 DB 78 */	mr r5, r27
/* 802B870C 002AE48C  7F A6 EB 78 */	mr r6, r29
/* 802B8710 002AE490  7F C7 F3 78 */	mr r7, r30
/* 802B8714 002AE494  48 00 00 A5 */	bl fn_802B87B8
/* 802B8718 002AE498  3C 60 80 48 */	lis r3, lbl_80486A30@ha
/* 802B871C 002AE49C  38 63 6A 30 */	addi r3, r3, lbl_80486A30@l
/* 802B8720 002AE4A0  90 7F 00 00 */	stw r3, 0x0(r31)
.L_802B8724:
/* 802B8724 002AE4A4  7F E3 FB 78 */	mr r3, r31
/* 802B8728 002AE4A8  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802B872C 002AE4AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B8730 002AE4B0  7C 08 03 A6 */	mtlr r0
/* 802B8734 002AE4B4  38 21 00 20 */	addi r1, r1, 0x20
/* 802B8738 002AE4B8  4E 80 00 20 */	blr
.endfn fn_802B86B8
