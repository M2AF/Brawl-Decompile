.include "macros.inc"
.file "auto_03_80325C20_text"

# 0x80325C20..0x80325C48 | size: 0x28
.text
.balign 4

# .text:0x0 | 0x80325C20 | size: 0x14
.fn fn_80325C20, global
/* 80325C20 0031B9A0  38 03 01 3A */	addi r0, r3, 0x13a
/* 80325C24 0031B9A4  38 63 00 10 */	addi r3, r3, 0x10
/* 80325C28 0031B9A8  7C 85 23 78 */	mr r5, r4
/* 80325C2C 0031B9AC  7C 83 00 50 */	subf r4, r3, r0
/* 80325C30 0031B9B0  4B FB 86 34 */	b fn_802DE264
.endfn fn_80325C20

# .text:0x14 | 0x80325C34 | size: 0x14
.fn fn_80325C34, global
/* 80325C34 0031B9B4  38 60 00 0C */	li r3, 0xc
/* 80325C38 0031B9B8  38 00 00 70 */	li r0, 0x70
/* 80325C3C 0031B9BC  90 65 00 04 */	stw r3, 0x4(r5)
/* 80325C40 0031B9C0  90 05 00 00 */	stw r0, 0x0(r5)
/* 80325C44 0031B9C4  4E 80 00 20 */	blr
.endfn fn_80325C34
