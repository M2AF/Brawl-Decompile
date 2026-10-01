.include "macros.inc"
.file "auto_fn_8009F4CC_text"

# 0x8009F4CC..0x8009F504 | size: 0x38
.text
.balign 4

# .text:0x0 | 0x8009F4CC | size: 0x38
.fn fn_8009F4CC, global
/* 8009F4CC 0009524C  3C C0 80 4A */	lis r6, lbl_8049DEDC@ha
/* 8009F4D0 00095250  38 00 00 00 */	li r0, 0x0
/* 8009F4D4 00095254  38 66 DE DC */	addi r3, r6, lbl_8049DEDC@l
/* 8009F4D8 00095258  3C 80 80 0A */	lis r4, fn_8009F504@ha
/* 8009F4DC 0009525C  90 03 00 04 */	stw r0, 0x4(r3)
/* 8009F4E0 00095260  38 E3 00 04 */	addi r7, r3, 0x4
/* 8009F4E4 00095264  3C A0 80 4A */	lis r5, lbl_8049DED0@ha
/* 8009F4E8 00095268  38 84 F5 04 */	addi r4, r4, fn_8009F504@l
/* 8009F4EC 0009526C  90 03 00 08 */	stw r0, 0x8(r3)
/* 8009F4F0 00095270  38 A5 DE D0 */	addi r5, r5, lbl_8049DED0@l
/* 8009F4F4 00095274  90 06 DE DC */	stw r0, lbl_8049DEDC@l(r6)
/* 8009F4F8 00095278  90 E3 00 04 */	stw r7, 0x4(r3)
/* 8009F4FC 0009527C  90 E3 00 08 */	stw r7, 0x8(r3)
/* 8009F500 00095280  48 35 12 24 */	b __register_global_object
.endfn fn_8009F4CC

# 0x80406530..0x80406534 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8009F4CC
