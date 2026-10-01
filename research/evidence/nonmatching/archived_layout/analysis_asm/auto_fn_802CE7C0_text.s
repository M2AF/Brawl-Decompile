.include "macros.inc"
.file "auto_fn_802CE7C0_text"

# 0x80008330..0x80008338 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008330 | size: 0x8
.obj "@etb_80008330", local
.hidden "@etb_80008330"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008330"

# 0x8000B050..0x8000B05C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B050 | size: 0xC
.obj "@eti_8000B050", local
.hidden "@eti_8000B050"
	.4byte fn_802CE7C0
	.4byte 0x00000048
	.4byte "@etb_80008330"
.endobj "@eti_8000B050"

# 0x802CE7C0..0x802CE808 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802CE7C0 | size: 0x48
.fn fn_802CE7C0, global
/* 802CE7C0 002C4540  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802CE7C4 002C4544  7C 2C 0B 78 */	mr r12, r1
/* 802CE7C8 002C4548  21 6B FF D0 */	subfic r11, r11, -0x30
/* 802CE7CC 002C454C  7C 21 59 6E */	stwux r1, r1, r11
/* 802CE7D0 002C4550  34 01 00 10 */	addic. r0, r1, 0x10
/* 802CE7D4 002C4554  41 82 00 24 */	beq .L_802CE7F8
/* 802CE7D8 002C4558  3C 80 80 48 */	lis r4, lbl_804873C0@ha
/* 802CE7DC 002C455C  3C 60 80 48 */	lis r3, lbl_804873E8@ha
/* 802CE7E0 002C4560  38 84 73 C0 */	addi r4, r4, lbl_804873C0@l
/* 802CE7E4 002C4564  38 00 00 01 */	li r0, 0x1
/* 802CE7E8 002C4568  38 63 73 E8 */	addi r3, r3, lbl_804873E8@l
/* 802CE7EC 002C456C  B0 01 00 16 */	sth r0, 0x16(r1)
/* 802CE7F0 002C4570  90 81 00 10 */	stw r4, 0x10(r1)
/* 802CE7F4 002C4574  90 61 00 20 */	stw r3, 0x20(r1)
.L_802CE7F8:
/* 802CE7F8 002C4578  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802CE7FC 002C457C  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802CE800 002C4580  7D 41 53 78 */	mr r1, r10
/* 802CE804 002C4584  4E 80 00 20 */	blr
.endfn fn_802CE7C0
