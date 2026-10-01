.include "macros.inc"
.file "auto_fn_802D0B94_text"

# 0x800083F8..0x80008400 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800083F8 | size: 0x8
.obj "@etb_800083F8", local
.hidden "@etb_800083F8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800083F8"

# 0x8000B164..0x8000B170 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B164 | size: 0xC
.obj "@eti_8000B164", local
.hidden "@eti_8000B164"
	.4byte fn_802D0B94
	.4byte 0x00000048
	.4byte "@etb_800083F8"
.endobj "@eti_8000B164"

# 0x802D0B94..0x802D0BDC | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802D0B94 | size: 0x48
.fn fn_802D0B94, global
/* 802D0B94 002C6914  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802D0B98 002C6918  7C 2C 0B 78 */	mr r12, r1
/* 802D0B9C 002C691C  21 6B FF C0 */	subfic r11, r11, -0x40
/* 802D0BA0 002C6920  7C 21 59 6E */	stwux r1, r1, r11
/* 802D0BA4 002C6924  34 01 00 10 */	addic. r0, r1, 0x10
/* 802D0BA8 002C6928  41 82 00 24 */	beq .L_802D0BCC
/* 802D0BAC 002C692C  3C 80 80 48 */	lis r4, lbl_80487488@ha
/* 802D0BB0 002C6930  3C 60 80 48 */	lis r3, lbl_804873E8@ha
/* 802D0BB4 002C6934  38 84 74 88 */	addi r4, r4, lbl_80487488@l
/* 802D0BB8 002C6938  38 00 00 01 */	li r0, 0x1
/* 802D0BBC 002C693C  38 63 73 E8 */	addi r3, r3, lbl_804873E8@l
/* 802D0BC0 002C6940  B0 01 00 16 */	sth r0, 0x16(r1)
/* 802D0BC4 002C6944  90 81 00 10 */	stw r4, 0x10(r1)
/* 802D0BC8 002C6948  90 61 00 20 */	stw r3, 0x20(r1)
.L_802D0BCC:
/* 802D0BCC 002C694C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802D0BD0 002C6950  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802D0BD4 002C6954  7D 41 53 78 */	mr r1, r10
/* 802D0BD8 002C6958  4E 80 00 20 */	blr
.endfn fn_802D0B94
