.include "macros.inc"
.file "auto_fn_8027C7DC_text"

# 0x8027C7DC..0x8027C808 | size: 0x2C
.text
.balign 4

# .text:0x0 | 0x8027C7DC | size: 0x2C
.fn fn_8027C7DC, global
/* 8027C7DC 0027255C  3C C0 80 28 */	lis r6, fn_8027BDFC@ha
/* 8027C7E0 00272560  3C A0 80 53 */	lis r5, lbl_80532368@ha
/* 8027C7E4 00272564  38 C6 BD FC */	addi r6, r6, fn_8027BDFC@l
/* 8027C7E8 00272568  80 0D CA B0 */	lwz r0, lbl_805A0ED0@sda21(r0)
/* 8027C7EC 0027256C  38 65 23 68 */	addi r3, r5, lbl_80532368@l
/* 8027C7F0 00272570  38 8D CA 88 */	li r4, lbl_805A0EA8@sda21
/* 8027C7F4 00272574  90 C5 23 68 */	stw r6, lbl_80532368@l(r5)
/* 8027C7F8 00272578  90 83 00 08 */	stw r4, 0x8(r3)
/* 8027C7FC 0027257C  90 03 00 04 */	stw r0, 0x4(r3)
/* 8027C800 00272580  90 6D CA B0 */	stw r3, lbl_805A0ED0@sda21(r0)
/* 8027C804 00272584  4E 80 00 20 */	blr
.endfn fn_8027C7DC

# 0x804065DC..0x804065E0 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8027C7DC
