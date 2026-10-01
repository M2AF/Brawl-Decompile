.include "macros.inc"
.file "auto_fn_801048AC_text"

# 0x801048AC..0x801048DC | size: 0x30
.text
.balign 4

# .text:0x0 | 0x801048AC | size: 0x30
.fn fn_801048AC, global
/* 801048AC 000FA62C  88 0D BE F4 */	lbz r0, lbl_805A0314@sda21(r0)
/* 801048B0 000FA630  7C 00 07 75 */	extsb. r0, r0
/* 801048B4 000FA634  4C 82 00 20 */	bnelr
/* 801048B8 000FA638  3C 80 80 4A */	lis r4, lbl_8049E560@ha
/* 801048BC 000FA63C  38 A0 00 00 */	li r5, 0x0
/* 801048C0 000FA640  38 64 E5 60 */	addi r3, r4, lbl_8049E560@l
/* 801048C4 000FA644  38 00 00 01 */	li r0, 0x1
/* 801048C8 000FA648  90 A3 00 04 */	stw r5, 0x4(r3)
/* 801048CC 000FA64C  90 A4 E5 60 */	stw r5, lbl_8049E560@l(r4)
/* 801048D0 000FA650  90 A3 00 08 */	stw r5, 0x8(r3)
/* 801048D4 000FA654  98 0D BE F4 */	stb r0, lbl_805A0314@sda21(r0)
/* 801048D8 000FA658  4E 80 00 20 */	blr
.endfn fn_801048AC

# 0x80406548..0x8040654C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_801048AC
