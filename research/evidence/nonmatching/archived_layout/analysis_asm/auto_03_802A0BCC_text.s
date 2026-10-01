.include "macros.inc"
.file "auto_03_802A0BCC_text"

# 0x802A0BCC..0x802A0BF8 | size: 0x2C
.text
.balign 4

# .text:0x0 | 0x802A0BCC | size: 0xC
.fn fn_802A0BCC, global
/* 802A0BCC 0029694C  FC 20 0A 10 */	fabs f1, f1
/* 802A0BD0 00296950  FC 20 08 18 */	frsp f1, f1
/* 802A0BD4 00296954  4E 80 00 20 */	blr
.endfn fn_802A0BCC

# .text:0xC | 0x802A0BD8 | size: 0x18
.fn fn_802A0BD8, global
/* 802A0BD8 00296958  88 03 00 00 */	lbz r0, 0x0(r3)
/* 802A0BDC 0029695C  7C 03 07 74 */	extsb r3, r0
/* 802A0BE0 00296960  7C 03 00 D0 */	neg r0, r3
/* 802A0BE4 00296964  7C 00 1B 78 */	or r0, r0, r3
/* 802A0BE8 00296968  54 03 0F FE */	srwi r3, r0, 31
/* 802A0BEC 0029696C  4E 80 00 20 */	blr
.endfn fn_802A0BD8

# .text:0x24 | 0x802A0BF0 | size: 0x8
.fn fn_802A0BF0, global
/* 802A0BF0 00296970  98 83 00 00 */	stb r4, 0x0(r3)
/* 802A0BF4 00296974  4E 80 00 20 */	blr
.endfn fn_802A0BF0
