.include "macros.inc"
.file "auto_fn_80037DAC_text"

# 0x80037DAC..0x80037DC8 | size: 0x1C
.text
.balign 4

# .text:0x0 | 0x80037DAC | size: 0x1C
.fn fn_80037DAC, global
/* 80037DAC 0002DB2C  3C 60 80 49 */	lis r3, lbl_804953D0@ha
/* 80037DB0 0002DB30  38 00 00 00 */	li r0, 0x0
/* 80037DB4 0002DB34  3C 80 80 42 */	lis r4, lbl_80423380@ha
/* 80037DB8 0002DB38  98 03 53 D0 */	stb r0, lbl_804953D0@l(r3)
/* 80037DBC 0002DB3C  38 63 53 D0 */	addi r3, r3, lbl_804953D0@l
/* 80037DC0 0002DB40  38 84 33 80 */	addi r4, r4, lbl_80423380@l
/* 80037DC4 0002DB44  48 3C 25 C0 */	b fn_803FA384
.endfn fn_80037DAC

# 0x80406504..0x80406508 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80037DAC
