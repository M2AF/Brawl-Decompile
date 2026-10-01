.include "macros.inc"
.file "auto_03_803D0920_text"

# 0x803D0920..0x803D0938 | size: 0x18
.text
.balign 4

# .text:0x0 | 0x803D0920 | size: 0xC
.fn fn_803D0920, global
/* 803D0920 003C66A0  3C 80 80 42 */	lis r4, lbl_8041AD18@ha
/* 803D0924 003C66A4  38 84 AD 18 */	addi r4, r4, lbl_8041AD18@l
/* 803D0928 003C66A8  48 00 00 D0 */	b fn_803D09F8
.endfn fn_803D0920

# .text:0xC | 0x803D092C | size: 0xC
.fn fn_803D092C, global
/* 803D092C 003C66AC  3C 80 80 42 */	lis r4, lbl_8041AD18@ha
/* 803D0930 003C66B0  38 84 AD 18 */	addi r4, r4, lbl_8041AD18@l
/* 803D0934 003C66B4  48 00 05 D0 */	b fn_803D0F04
.endfn fn_803D092C
