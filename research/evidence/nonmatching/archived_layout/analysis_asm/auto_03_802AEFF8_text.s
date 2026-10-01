.include "macros.inc"
.file "auto_03_802AEFF8_text"

# 0x802AEFF8..0x802AF010 | size: 0x18
.text
.balign 4

# .text:0x0 | 0x802AEFF8 | size: 0x18
.fn fn_802AEFF8, global
/* 802AEFF8 002A4D78  80 63 00 10 */	lwz r3, 0x10(r3)
/* 802AEFFC 002A4D7C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 802AF000 002A4D80  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802AF004 002A4D84  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802AF008 002A4D88  7D 89 03 A6 */	mtctr r12
/* 802AF00C 002A4D8C  4E 80 04 20 */	bctr
.endfn fn_802AEFF8
