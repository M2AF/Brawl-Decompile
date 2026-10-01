.include "macros.inc"
.file "auto_fn_802D9A94_text"

# 0x802D9A94..0x802D9AD8 | size: 0x44
.text
.balign 4

# .text:0x0 | 0x802D9A94 | size: 0x44
.fn fn_802D9A94, global
/* 802D9A94 002CF814  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D9A98 002CF818  7C 08 02 A6 */	mflr r0
/* 802D9A9C 002CF81C  3C 60 80 53 */	lis r3, lbl_80532A10@ha
/* 802D9AA0 002CF820  3C 80 80 2E */	lis r4, fn_802D9AD8@ha
/* 802D9AA4 002CF824  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D9AA8 002CF828  38 63 2A 10 */	addi r3, r3, lbl_80532A10@l
/* 802D9AAC 002CF82C  38 A0 00 00 */	li r5, 0x0
/* 802D9AB0 002CF830  38 84 9A D8 */	addi r4, r4, fn_802D9AD8@l
/* 802D9AB4 002CF834  38 C0 00 20 */	li r6, 0x20
/* 802D9AB8 002CF838  38 E0 00 02 */	li r7, 0x2
/* 802D9ABC 002CF83C  48 11 71 21 */	bl fn_803F0BDC
/* 802D9AC0 002CF840  38 00 00 00 */	li r0, 0x0
/* 802D9AC4 002CF844  98 0D CA F8 */	stb r0, lbl_805A0F18@sda21(r0)
/* 802D9AC8 002CF848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D9ACC 002CF84C  7C 08 03 A6 */	mtlr r0
/* 802D9AD0 002CF850  38 21 00 10 */	addi r1, r1, 0x10
/* 802D9AD4 002CF854  4E 80 00 20 */	blr
.endfn fn_802D9A94

# 0x804066B4..0x804066B8 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802D9A94
