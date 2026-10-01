.include "macros.inc"
.file "auto_fn_8005C574_text"

# 0x8005C574..0x8005C5B0 | size: 0x3C
.text
.balign 4

# .text:0x0 | 0x8005C574 | size: 0x3C
.fn fn_8005C574, global
/* 8005C574 000522F4  3C 80 80 42 */	lis r4, lbl_80420BA0@ha
/* 8005C578 000522F8  3C 60 80 43 */	lis r3, lbl_8042EBE0@ha
/* 8005C57C 000522FC  38 CD BC E8 */	li r6, lbl_805A0108@sda21
/* 8005C580 00052300  38 00 00 00 */	li r0, 0x0
/* 8005C584 00052304  38 84 0B A0 */	addi r4, r4, lbl_80420BA0@l
/* 8005C588 00052308  3C A0 80 49 */	lis r5, lbl_80497800@ha
/* 8005C58C 0005230C  90 86 00 04 */	stw r4, 0x4(r6)
/* 8005C590 00052310  38 63 EB E0 */	addi r3, r3, lbl_8042EBE0@l
/* 8005C594 00052314  3C 80 80 06 */	lis r4, fn_8005C5B0@ha
/* 8005C598 00052318  38 A5 78 00 */	addi r5, r5, lbl_80497800@l
/* 8005C59C 0005231C  90 66 00 04 */	stw r3, 0x4(r6)
/* 8005C5A0 00052320  38 84 C5 B0 */	addi r4, r4, fn_8005C5B0@l
/* 8005C5A4 00052324  38 6D BC E8 */	li r3, lbl_805A0108@sda21
/* 8005C5A8 00052328  90 0D BC E8 */	stw r0, lbl_805A0108@sda21(r0)
/* 8005C5AC 0005232C  48 39 41 78 */	b __register_global_object
.endfn fn_8005C574

# 0x80406520..0x80406524 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8005C574
