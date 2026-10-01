.include "macros.inc"
.file "auto_fn_80285A48_text"

# 0x80285A48..0x80285A6C | size: 0x24
.text
.balign 4

# .text:0x0 | 0x80285A48 | size: 0x24
.fn fn_80285A48, global
/* 80285A48 0027B7C8  3C 80 80 53 */	lis r4, lbl_80532500@ha
/* 80285A4C 0027B7CC  C0 22 AA 20 */	lfs f1, lbl_805A3D40@sda21(r0)
/* 80285A50 0027B7D0  38 64 25 00 */	addi r3, r4, lbl_80532500@l
/* 80285A54 0027B7D4  C0 02 AA 1C */	lfs f0, lbl_805A3D3C@sda21(r0)
/* 80285A58 0027B7D8  D0 24 25 00 */	stfs f1, lbl_80532500@l(r4)
/* 80285A5C 0027B7DC  D0 23 00 04 */	stfs f1, 0x4(r3)
/* 80285A60 0027B7E0  D0 23 00 08 */	stfs f1, 0x8(r3)
/* 80285A64 0027B7E4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80285A68 0027B7E8  4E 80 00 20 */	blr
.endfn fn_80285A48

# 0x8040660C..0x80406610 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80285A48
