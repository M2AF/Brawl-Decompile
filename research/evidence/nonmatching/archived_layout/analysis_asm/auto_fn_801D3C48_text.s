.include "macros.inc"
.file "auto_fn_801D3C48_text"

# 0x801D3C48..0x801D3C54 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x801D3C48 | size: 0xC
.fn fn_801D3C48, global
/* 801D3C48 001C99C8  38 0D C1 58 */	li r0, lbl_805A0578@sda21
/* 801D3C4C 001C99CC  90 0D C2 08 */	stw r0, lbl_805A0628@sda21(r0)
/* 801D3C50 001C99D0  4E 80 00 20 */	blr
.endfn fn_801D3C48

# 0x804065D0..0x804065D4 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_801D3C48
