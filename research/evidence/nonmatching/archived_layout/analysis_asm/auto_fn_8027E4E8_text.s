.include "macros.inc"
.file "auto_fn_8027E4E8_text"

# 0x8027E4E8..0x8027E514 | size: 0x2C
.text
.balign 4

# .text:0x0 | 0x8027E4E8 | size: 0x2C
.fn fn_8027E4E8, global
/* 8027E4E8 00274268  3C C0 80 28 */	lis r6, fn_8027E360@ha
/* 8027E4EC 0027426C  3C A0 80 53 */	lis r5, lbl_80532438@ha
/* 8027E4F0 00274270  38 C6 E3 60 */	addi r6, r6, fn_8027E360@l
/* 8027E4F4 00274274  80 0D CA B0 */	lwz r0, lbl_805A0ED0@sda21(r0)
/* 8027E4F8 00274278  38 65 24 38 */	addi r3, r5, lbl_80532438@l
/* 8027E4FC 0027427C  38 8D CA A0 */	li r4, lbl_805A0EC0@sda21
/* 8027E500 00274280  90 C5 24 38 */	stw r6, lbl_80532438@l(r5)
/* 8027E504 00274284  90 83 00 08 */	stw r4, 0x8(r3)
/* 8027E508 00274288  90 03 00 04 */	stw r0, 0x4(r3)
/* 8027E50C 0027428C  90 6D CA B0 */	stw r3, lbl_805A0ED0@sda21(r0)
/* 8027E510 00274290  4E 80 00 20 */	blr
.endfn fn_8027E4E8

# 0x804065F0..0x804065F4 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8027E4E8
