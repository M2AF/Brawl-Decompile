.include "macros.inc"
.file "auto_fn_80043AEC_text"

# 0x80043AEC..0x80043B18 | size: 0x2C
.text
.balign 4

# .text:0x0 | 0x80043AEC | size: 0x2C
.fn fn_80043AEC, global
/* 80043AEC 0003986C  3C C0 80 49 */	lis r6, lbl_804977B4@ha
/* 80043AF0 00039870  38 00 00 00 */	li r0, 0x0
/* 80043AF4 00039874  38 66 77 B4 */	addi r3, r6, lbl_804977B4@l
/* 80043AF8 00039878  3C 80 80 04 */	lis r4, fn_80043A20@ha
/* 80043AFC 0003987C  3C A0 80 49 */	lis r5, lbl_804977A8@ha
/* 80043B00 00039880  90 06 77 B4 */	stw r0, lbl_804977B4@l(r6)
/* 80043B04 00039884  38 84 3A 20 */	addi r4, r4, fn_80043A20@l
/* 80043B08 00039888  90 03 00 04 */	stw r0, 0x4(r3)
/* 80043B0C 0003988C  38 A5 77 A8 */	addi r5, r5, lbl_804977A8@l
/* 80043B10 00039890  90 03 00 08 */	stw r0, 0x8(r3)
/* 80043B14 00039894  48 3A CC 10 */	b __register_global_object
.endfn fn_80043AEC

# 0x80406514..0x80406518 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80043AEC
