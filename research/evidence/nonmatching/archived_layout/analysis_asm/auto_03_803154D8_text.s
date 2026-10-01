.include "macros.inc"
.file "auto_03_803154D8_text"

# 0x803154D8..0x803154E4 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x803154D8 | size: 0xC
.fn fn_803154D8, global
/* 803154D8 0030B258  C0 02 B3 40 */	lfs f0, lbl_805A4660@sda21(r0)
/* 803154DC 0030B25C  D0 03 00 00 */	stfs f0, 0x0(r3)
/* 803154E0 0030B260  4E 80 00 20 */	blr
.endfn fn_803154D8
