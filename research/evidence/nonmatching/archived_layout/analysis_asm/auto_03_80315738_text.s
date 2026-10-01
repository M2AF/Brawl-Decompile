.include "macros.inc"
.file "auto_03_80315738_text"

# 0x80315738..0x80315780 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x80315738 | size: 0x14
.fn fn_80315738, global
/* 80315738 0030B4B8  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8031573C 0030B4BC  2C 00 00 00 */	cmpwi r0, 0x0
/* 80315740 0030B4C0  4D 82 00 20 */	beqlr
/* 80315744 0030B4C4  48 00 54 00 */	b fn_8031AB44
/* 80315748 0030B4C8  4E 80 00 20 */	blr
.endfn fn_80315738

# .text:0x14 | 0x8031574C | size: 0x30
.fn fn_8031574C, global
/* 8031574C 0030B4CC  80 AD CA A8 */	lwz r5, lbl_805A0EC8@sda21(r0)
/* 80315750 0030B4D0  7C 64 1B 78 */	mr r4, r3
/* 80315754 0030B4D4  90 65 00 10 */	stw r3, 0x10(r5)
/* 80315758 0030B4D8  80 05 00 18 */	lwz r0, 0x18(r5)
/* 8031575C 0030B4DC  7C 03 00 40 */	cmplw r3, r0
/* 80315760 0030B4E0  4C 82 00 20 */	bnelr
/* 80315764 0030B4E4  81 85 00 00 */	lwz r12, 0x0(r5)
/* 80315768 0030B4E8  7C A3 2B 78 */	mr r3, r5
/* 8031576C 0030B4EC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80315770 0030B4F0  7D 89 03 A6 */	mtctr r12
/* 80315774 0030B4F4  4E 80 04 20 */	bctr
/* 80315778 0030B4F8  4E 80 00 20 */	blr
.endfn fn_8031574C

# .text:0x44 | 0x8031577C | size: 0x4
.fn fn_8031577C, global
/* 8031577C 0030B4FC  4E 80 00 20 */	blr
.endfn fn_8031577C
