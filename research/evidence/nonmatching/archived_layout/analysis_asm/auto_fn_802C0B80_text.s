.include "macros.inc"
.file "auto_fn_802C0B80_text"

# 0x80007BF0..0x80007C08 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007BF0 | size: 0x18
.obj "@etb_80007BF0", local
.hidden "@etb_80007BF0"
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
.endobj "@etb_80007BF0"

# 0x8000A978..0x8000A984 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A978 | size: 0xC
.obj "@eti_8000A978", local
.hidden "@eti_8000A978"
	.4byte fn_802C0B80
	.4byte 0x00000084
	.4byte "@etb_80007BF0"
.endobj "@eti_8000A978"

# 0x802C0B80..0x802C0C04 | size: 0x84
.text
.balign 4

# .text:0x0 | 0x802C0B80 | size: 0x84
.fn fn_802C0B80, global
/* 802C0B80 002B6900  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C0B84 002B6904  7C 08 02 A6 */	mflr r0
/* 802C0B88 002B6908  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C0B8C 002B690C  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802C0B90 002B6910  7C 7B 1B 78 */	mr r27, r3
/* 802C0B94 002B6914  7C 9C 23 78 */	mr r28, r4
/* 802C0B98 002B6918  7C BD 2B 78 */	mr r29, r5
/* 802C0B9C 002B691C  7C DE 33 78 */	mr r30, r6
/* 802C0BA0 002B6920  38 80 00 38 */	li r4, 0x38
/* 802C0BA4 002B6924  38 A0 00 1D */	li r5, 0x1d
/* 802C0BA8 002B6928  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802C0BAC 002B692C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C0BB0 002B6930  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802C0BB4 002B6934  7D 89 03 A6 */	mtctr r12
/* 802C0BB8 002B6938  4E 80 04 21 */	bctrl
/* 802C0BBC 002B693C  38 00 00 38 */	li r0, 0x38
/* 802C0BC0 002B6940  7C 7F 1B 79 */	mr. r31, r3
/* 802C0BC4 002B6944  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802C0BC8 002B6948  41 82 00 24 */	beq .L_802C0BEC
/* 802C0BCC 002B694C  7F 84 E3 78 */	mr r4, r28
/* 802C0BD0 002B6950  7F 65 DB 78 */	mr r5, r27
/* 802C0BD4 002B6954  7F A6 EB 78 */	mr r6, r29
/* 802C0BD8 002B6958  7F C7 F3 78 */	mr r7, r30
/* 802C0BDC 002B695C  48 00 01 51 */	bl fn_802C0D2C
/* 802C0BE0 002B6960  3C 60 80 48 */	lis r3, lbl_80486F38@ha
/* 802C0BE4 002B6964  38 63 6F 38 */	addi r3, r3, lbl_80486F38@l
/* 802C0BE8 002B6968  90 7F 00 00 */	stw r3, 0x0(r31)
.L_802C0BEC:
/* 802C0BEC 002B696C  7F E3 FB 78 */	mr r3, r31
/* 802C0BF0 002B6970  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802C0BF4 002B6974  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C0BF8 002B6978  7C 08 03 A6 */	mtlr r0
/* 802C0BFC 002B697C  38 21 00 20 */	addi r1, r1, 0x20
/* 802C0C00 002B6980  4E 80 00 20 */	blr
.endfn fn_802C0B80
