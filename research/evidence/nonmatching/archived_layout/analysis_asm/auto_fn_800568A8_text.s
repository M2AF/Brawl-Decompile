.include "macros.inc"
.file "auto_fn_800568A8_text"

# 0x800568A8..0x800568C8 | size: 0x20
.text
.balign 4

# .text:0x0 | 0x800568A8 | size: 0x20
.fn fn_800568A8, global
/* 800568A8 0004C628  38 00 00 00 */	li r0, 0x0
/* 800568AC 0004C62C  3C 80 80 02 */	lis r4, fn_80020B38@ha
/* 800568B0 0004C630  3C A0 80 49 */	lis r5, lbl_804977F0@ha
/* 800568B4 0004C634  90 0D BC CC */	stw r0, lbl_805A00EC@sda21(r0)
/* 800568B8 0004C638  38 84 0B 38 */	addi r4, r4, fn_80020B38@l
/* 800568BC 0004C63C  38 6D BC CC */	li r3, lbl_805A00EC@sda21
/* 800568C0 0004C640  38 A5 77 F0 */	addi r5, r5, lbl_804977F0@l
/* 800568C4 0004C644  48 39 9E 60 */	b __register_global_object
.endfn fn_800568A8

# 0x8040651C..0x80406520 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_800568A8
