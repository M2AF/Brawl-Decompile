.include "macros.inc"
.file "auto_fn_8003312C_text"

# 0x8003312C..0x80033160 | size: 0x34
.text
.balign 4

# .text:0x0 | 0x8003312C | size: 0x34
.fn fn_8003312C, global
/* 8003312C 00028EAC  3C E0 80 42 */	lis r7, lbl_804230FC@ha
/* 80033130 00028EB0  3C C0 80 49 */	lis r6, lbl_804953A0@ha
/* 80033134 00028EB4  38 E7 30 FC */	addi r7, r7, lbl_804230FC@l
/* 80033138 00028EB8  3C 60 80 42 */	lis r3, lbl_804230C8@ha
/* 8003313C 00028EBC  38 A6 53 A0 */	addi r5, r6, lbl_804953A0@l
/* 80033140 00028EC0  38 80 00 00 */	li r4, 0x0
/* 80033144 00028EC4  38 00 00 01 */	li r0, 0x1
/* 80033148 00028EC8  90 E5 00 04 */	stw r7, 0x4(r5)
/* 8003314C 00028ECC  38 63 30 C8 */	addi r3, r3, lbl_804230C8@l
/* 80033150 00028ED0  90 86 53 A0 */	stw r4, lbl_804953A0@l(r6)
/* 80033154 00028ED4  90 65 00 04 */	stw r3, 0x4(r5)
/* 80033158 00028ED8  98 05 00 08 */	stb r0, 0x8(r5)
/* 8003315C 00028EDC  4E 80 00 20 */	blr
.endfn fn_8003312C

# 0x80406500..0x80406504 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8003312C
