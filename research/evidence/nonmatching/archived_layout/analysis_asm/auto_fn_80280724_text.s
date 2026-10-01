.include "macros.inc"
.file "auto_fn_80280724_text"

# 0x80280724..0x80280750 | size: 0x2C
.text
.balign 4

# .text:0x0 | 0x80280724 | size: 0x2C
.fn fn_80280724, global
/* 80280724 002764A4  3C C0 80 28 */	lis r6, fn_8028059C@ha
/* 80280728 002764A8  3C A0 80 53 */	lis r5, lbl_80532460@ha
/* 8028072C 002764AC  38 C6 05 9C */	addi r6, r6, fn_8028059C@l
/* 80280730 002764B0  80 0D CA B0 */	lwz r0, lbl_805A0ED0@sda21(r0)
/* 80280734 002764B4  38 65 24 60 */	addi r3, r5, lbl_80532460@l
/* 80280738 002764B8  38 8D CA B8 */	li r4, lbl_805A0ED8@sda21
/* 8028073C 002764BC  90 C5 24 60 */	stw r6, lbl_80532460@l(r5)
/* 80280740 002764C0  90 83 00 08 */	stw r4, 0x8(r3)
/* 80280744 002764C4  90 03 00 04 */	stw r0, 0x4(r3)
/* 80280748 002764C8  90 6D CA B0 */	stw r3, lbl_805A0ED0@sda21(r0)
/* 8028074C 002764CC  4E 80 00 20 */	blr
.endfn fn_80280724

# 0x804065F8..0x804065FC | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80280724
