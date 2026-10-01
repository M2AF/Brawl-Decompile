.include "macros.inc"
.file "auto_03_802C0590_text"

# 0x802C0590..0x802C05E8 | size: 0x58
.text
.balign 4

# .text:0x0 | 0x802C0590 | size: 0x20
.fn fn_802C0590, global
/* 802C0590 002B6310  3C 80 80 48 */	lis r4, lbl_80486EB8@ha
/* 802C0594 002B6314  38 A0 00 01 */	li r5, 0x1
/* 802C0598 002B6318  38 84 6E B8 */	addi r4, r4, lbl_80486EB8@l
/* 802C059C 002B631C  38 00 00 00 */	li r0, 0x0
/* 802C05A0 002B6320  B0 A3 00 06 */	sth r5, 0x6(r3)
/* 802C05A4 002B6324  90 03 00 08 */	stw r0, 0x8(r3)
/* 802C05A8 002B6328  90 83 00 00 */	stw r4, 0x0(r3)
/* 802C05AC 002B632C  4E 80 00 20 */	blr
.endfn fn_802C0590

# .text:0x20 | 0x802C05B0 | size: 0x4
.fn fn_802C05B0, global
/* 802C05B0 002B6330  4E 80 00 20 */	blr
.endfn fn_802C05B0

# .text:0x24 | 0x802C05B4 | size: 0x4
.fn fn_802C05B4, global
/* 802C05B4 002B6334  4E 80 00 20 */	blr
.endfn fn_802C05B4

# .text:0x28 | 0x802C05B8 | size: 0x4
.fn fn_802C05B8, global
/* 802C05B8 002B6338  4E 80 00 20 */	blr
.endfn fn_802C05B8

# .text:0x2C | 0x802C05BC | size: 0xC
.fn fn_802C05BC, global
/* 802C05BC 002B633C  3C 60 80 53 */	lis r3, lbl_805325BC@ha
/* 802C05C0 002B6340  38 63 25 BC */	addi r3, r3, lbl_805325BC@l
/* 802C05C4 002B6344  4E 80 00 20 */	blr
.endfn fn_802C05BC

# .text:0x38 | 0x802C05C8 | size: 0xC
.fn fn_802C05C8, global
/* 802C05C8 002B6348  3C 60 80 53 */	lis r3, lbl_805325BC@ha
/* 802C05CC 002B634C  38 63 25 BC */	addi r3, r3, lbl_805325BC@l
/* 802C05D0 002B6350  4E 80 00 20 */	blr
.endfn fn_802C05C8

# .text:0x44 | 0x802C05D4 | size: 0x4
.fn fn_802C05D4, global
/* 802C05D4 002B6354  4E 80 00 20 */	blr
.endfn fn_802C05D4

# .text:0x48 | 0x802C05D8 | size: 0x4
.fn fn_802C05D8, global
/* 802C05D8 002B6358  4E 80 00 20 */	blr
.endfn fn_802C05D8

# .text:0x4C | 0x802C05DC | size: 0x4
.fn fn_802C05DC, global
/* 802C05DC 002B635C  4E 80 00 20 */	blr
.endfn fn_802C05DC

# .text:0x50 | 0x802C05E0 | size: 0x4
.fn fn_802C05E0, global
/* 802C05E0 002B6360  4E 80 00 20 */	blr
.endfn fn_802C05E0

# .text:0x54 | 0x802C05E4 | size: 0x4
.fn fn_802C05E4, global
/* 802C05E4 002B6364  4E 80 00 20 */	blr
.endfn fn_802C05E4
