.include "macros.inc"
.file "auto_fn_800FBAE0_text"

# 0x800FBAE0..0x800FBB10 | size: 0x30
.text
.balign 4

# .text:0x0 | 0x800FBAE0 | size: 0x30
.fn fn_800FBAE0, global
/* 800FBAE0 000F1860  88 0D BE D8 */	lbz r0, lbl_805A02F8@sda21(r0)
/* 800FBAE4 000F1864  7C 00 07 75 */	extsb. r0, r0
/* 800FBAE8 000F1868  4C 82 00 20 */	bnelr
/* 800FBAEC 000F186C  3C 80 80 4A */	lis r4, lbl_8049E550@ha
/* 800FBAF0 000F1870  38 A0 00 00 */	li r5, 0x0
/* 800FBAF4 000F1874  38 64 E5 50 */	addi r3, r4, lbl_8049E550@l
/* 800FBAF8 000F1878  38 00 00 01 */	li r0, 0x1
/* 800FBAFC 000F187C  90 A3 00 04 */	stw r5, 0x4(r3)
/* 800FBB00 000F1880  90 A4 E5 50 */	stw r5, lbl_8049E550@l(r4)
/* 800FBB04 000F1884  90 A3 00 08 */	stw r5, 0x8(r3)
/* 800FBB08 000F1888  98 0D BE D8 */	stb r0, lbl_805A02F8@sda21(r0)
/* 800FBB0C 000F188C  4E 80 00 20 */	blr
.endfn fn_800FBAE0

# 0x80406544..0x80406548 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_800FBAE0
