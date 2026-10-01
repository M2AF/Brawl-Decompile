.include "macros.inc"
.file "auto_fn_8013CFB8_text"

# 0x8013CFB8..0x8013D004 | size: 0x4C
.text
.balign 4

# .text:0x0 | 0x8013CFB8 | size: 0x4C
.fn fn_8013CFB8, global
/* 8013CFB8 00132D38  3C 60 80 46 */	lis r3, lbl_8045DDC4@ha
/* 8013CFBC 00132D3C  3C C0 80 46 */	lis r6, lbl_8045DF78@ha
/* 8013CFC0 00132D40  38 63 DD C4 */	addi r3, r3, lbl_8045DDC4@l
/* 8013CFC4 00132D44  39 20 00 00 */	li r9, 0x0
/* 8013CFC8 00132D48  90 6D BF 58 */	stw r3, lbl_805A0378@sda21(r0)
/* 8013CFCC 00132D4C  38 C6 DF 78 */	addi r6, r6, lbl_8045DF78@l
/* 8013CFD0 00132D50  39 0D BF 50 */	li r8, lbl_805A0370@sda21
/* 8013CFD4 00132D54  38 00 00 01 */	li r0, 0x1
/* 8013CFD8 00132D58  38 ED BF 58 */	li r7, lbl_805A0378@sda21
/* 8013CFDC 00132D5C  3C 80 80 14 */	lis r4, fn_8013CF04@ha
/* 8013CFE0 00132D60  3C A0 80 4A */	lis r5, lbl_8049EA10@ha
/* 8013CFE4 00132D64  91 2D BF 50 */	stw r9, lbl_805A0370@sda21(r0)
/* 8013CFE8 00132D68  38 84 CF 04 */	addi r4, r4, fn_8013CF04@l
/* 8013CFEC 00132D6C  38 6D BF 58 */	li r3, lbl_805A0378@sda21
/* 8013CFF0 00132D70  99 28 00 04 */	stb r9, 0x4(r8)
/* 8013CFF4 00132D74  38 A5 EA 10 */	addi r5, r5, lbl_8049EA10@l
/* 8013CFF8 00132D78  98 07 00 04 */	stb r0, 0x4(r7)
/* 8013CFFC 00132D7C  90 CD BF 58 */	stw r6, lbl_805A0378@sda21(r0)
/* 8013D000 00132D80  48 2B 37 24 */	b __register_global_object
.endfn fn_8013CFB8

# 0x80406554..0x80406558 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8013CFB8
