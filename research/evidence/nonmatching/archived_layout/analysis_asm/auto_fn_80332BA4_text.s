.include "macros.inc"
.file "auto_fn_80332BA4_text"

# 0x80332BA4..0x80332BD0 | size: 0x2C
.text
.balign 4

# .text:0x0 | 0x80332BA4 | size: 0x2C
.fn fn_80332BA4, global
/* 80332BA4 00328924  3C C0 80 33 */	lis r6, fn_803326EC@ha
/* 80332BA8 00328928  3C A0 80 53 */	lis r5, lbl_805336B0@ha
/* 80332BAC 0032892C  38 C6 26 EC */	addi r6, r6, fn_803326EC@l
/* 80332BB0 00328930  80 0D CA B0 */	lwz r0, lbl_805A0ED0@sda21(r0)
/* 80332BB4 00328934  38 65 36 B0 */	addi r3, r5, lbl_805336B0@l
/* 80332BB8 00328938  38 8D CB 18 */	li r4, lbl_805A0F38@sda21
/* 80332BBC 0032893C  90 C5 36 B0 */	stw r6, lbl_805336B0@l(r5)
/* 80332BC0 00328940  90 83 00 08 */	stw r4, 0x8(r3)
/* 80332BC4 00328944  90 03 00 04 */	stw r0, 0x4(r3)
/* 80332BC8 00328948  90 6D CA B0 */	stw r3, lbl_805A0ED0@sda21(r0)
/* 80332BCC 0032894C  4E 80 00 20 */	blr
.endfn fn_80332BA4

# 0x804067B4..0x804067B8 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80332BA4
