.include "macros.inc"
.file "auto_fn_80011C30_text"

# 0x80011C30..0x80011C70 | size: 0x40
.text
.balign 4

# .text:0x0 | 0x80011C30 | size: 0x40
.fn fn_80011C30, global
/* 80011C30 000079B0  3C 60 80 42 */	lis r3, lbl_804207F8@ha
/* 80011C34 000079B4  38 E0 00 80 */	li r7, 0x80
/* 80011C38 000079B8  38 CD BB 6C */	li r6, lbl_8059FF8C@sda21
/* 80011C3C 000079BC  38 00 00 60 */	li r0, 0x60
/* 80011C40 000079C0  38 63 07 F8 */	addi r3, r3, lbl_804207F8@l
/* 80011C44 000079C4  3C 80 80 01 */	lis r4, fn_8000C998@ha
/* 80011C48 000079C8  3C A0 80 49 */	lis r5, lbl_80494880@ha
/* 80011C4C 000079CC  90 6D BB 68 */	stw r3, lbl_8059FF88@sda21(r0)
/* 80011C50 000079D0  38 84 C9 98 */	addi r4, r4, fn_8000C998@l
/* 80011C54 000079D4  38 6D BB 6C */	li r3, lbl_8059FF8C@sda21
/* 80011C58 000079D8  98 ED BB 6C */	stb r7, lbl_8059FF8C@sda21(r0)
/* 80011C5C 000079DC  38 A5 48 80 */	addi r5, r5, lbl_80494880@l
/* 80011C60 000079E0  98 E6 00 01 */	stb r7, 0x1(r6)
/* 80011C64 000079E4  98 E6 00 02 */	stb r7, 0x2(r6)
/* 80011C68 000079E8  98 06 00 03 */	stb r0, 0x3(r6)
/* 80011C6C 000079EC  48 3D EA B8 */	b __register_global_object
.endfn fn_80011C30

# 0x804064E4..0x804064E8 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80011C30
