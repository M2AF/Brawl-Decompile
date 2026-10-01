.include "macros.inc"
.file "auto_fn_800B95A4_text"

# 0x800B95A4..0x800B9600 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x800B95A4 | size: 0x5C
.fn fn_800B95A4, global
/* 800B95A4 000AF324  38 00 00 00 */	li r0, 0x0
/* 800B95A8 000AF328  3C 60 80 4A */	lis r3, lbl_8049E01C@ha
/* 800B95AC 000AF32C  9C 03 E0 1C */	stbu r0, lbl_8049E01C@l(r3)
/* 800B95B0 000AF330  3C 80 80 0C */	lis r4, fn_800B9600@ha
/* 800B95B4 000AF334  3C A0 80 4A */	lis r5, lbl_8049E010@ha
/* 800B95B8 000AF338  98 03 00 01 */	stb r0, 0x1(r3)
/* 800B95BC 000AF33C  38 84 96 00 */	addi r4, r4, fn_800B9600@l
/* 800B95C0 000AF340  38 A5 E0 10 */	addi r5, r5, lbl_8049E010@l
/* 800B95C4 000AF344  98 03 00 02 */	stb r0, 0x2(r3)
/* 800B95C8 000AF348  98 03 00 03 */	stb r0, 0x3(r3)
/* 800B95CC 000AF34C  98 03 00 04 */	stb r0, 0x4(r3)
/* 800B95D0 000AF350  98 03 00 05 */	stb r0, 0x5(r3)
/* 800B95D4 000AF354  98 03 00 06 */	stb r0, 0x6(r3)
/* 800B95D8 000AF358  98 03 00 07 */	stb r0, 0x7(r3)
/* 800B95DC 000AF35C  98 03 00 08 */	stb r0, 0x8(r3)
/* 800B95E0 000AF360  98 03 00 09 */	stb r0, 0x9(r3)
/* 800B95E4 000AF364  98 03 00 0A */	stb r0, 0xa(r3)
/* 800B95E8 000AF368  98 03 00 0B */	stb r0, 0xb(r3)
/* 800B95EC 000AF36C  98 03 00 0C */	stb r0, 0xc(r3)
/* 800B95F0 000AF370  98 03 00 0D */	stb r0, 0xd(r3)
/* 800B95F4 000AF374  98 03 00 0E */	stb r0, 0xe(r3)
/* 800B95F8 000AF378  98 03 00 0F */	stb r0, 0xf(r3)
/* 800B95FC 000AF37C  48 33 71 28 */	b __register_global_object
.endfn fn_800B95A4

# 0x8040653C..0x80406540 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_800B95A4
