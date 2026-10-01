.include "macros.inc"
.file "auto_fn_8001B694_text"

# 0x8001B694..0x8001B6D0 | size: 0x3C
.text
.balign 4

# .text:0x0 | 0x8001B694 | size: 0x3C
.fn fn_8001B694, global
/* 8001B694 00011414  3C 80 80 42 */	lis r4, lbl_80420BA0@ha
/* 8001B698 00011418  3C E0 80 49 */	lis r7, lbl_804948F4@ha
/* 8001B69C 0001141C  38 67 48 F4 */	addi r3, r7, lbl_804948F4@l
/* 8001B6A0 00011420  3C C0 80 42 */	lis r6, lbl_80420BC0@ha
/* 8001B6A4 00011424  38 84 0B A0 */	addi r4, r4, lbl_80420BA0@l
/* 8001B6A8 00011428  38 00 00 00 */	li r0, 0x0
/* 8001B6AC 0001142C  90 83 00 04 */	stw r4, 0x4(r3)
/* 8001B6B0 00011430  38 C6 0B C0 */	addi r6, r6, lbl_80420BC0@l
/* 8001B6B4 00011434  3C 80 80 02 */	lis r4, fn_8001B6D0@ha
/* 8001B6B8 00011438  3C A0 80 49 */	lis r5, lbl_804948E8@ha
/* 8001B6BC 0001143C  90 07 48 F4 */	stw r0, lbl_804948F4@l(r7)
/* 8001B6C0 00011440  38 84 B6 D0 */	addi r4, r4, fn_8001B6D0@l
/* 8001B6C4 00011444  38 A5 48 E8 */	addi r5, r5, lbl_804948E8@l
/* 8001B6C8 00011448  90 C3 00 04 */	stw r6, 0x4(r3)
/* 8001B6CC 0001144C  48 3D 50 58 */	b __register_global_object
.endfn fn_8001B694

# 0x804064EC..0x804064F0 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8001B694
