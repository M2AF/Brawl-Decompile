.include "macros.inc"
.file "auto_03_80318BB4_text"

# 0x80318BB4..0x80318BD8 | size: 0x24
.text
.balign 4

# .text:0x0 | 0x80318BB4 | size: 0x1C
.fn fn_80318BB4, global
/* 80318BB4 0030E934  C0 02 B3 98 */	lfs f0, lbl_805A46B8@sda21(r0)
/* 80318BB8 0030E938  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80318BBC 0030E93C  40 80 00 0C */	bge .L_80318BC8
/* 80318BC0 0030E940  38 60 00 08 */	li r3, 0x8
/* 80318BC4 0030E944  4E 80 00 20 */	blr
.L_80318BC8:
/* 80318BC8 0030E948  38 60 00 00 */	li r3, 0x0
/* 80318BCC 0030E94C  4E 80 00 20 */	blr
.endfn fn_80318BB4

# .text:0x1C | 0x80318BD0 | size: 0x8
.fn fn_80318BD0, global
/* 80318BD0 0030E950  90 83 00 14 */	stw r4, 0x14(r3)
/* 80318BD4 0030E954  4E 80 00 20 */	blr
.endfn fn_80318BD0
