.include "macros.inc"
.file "auto_03_803D0610_text"

# 0x803D0610..0x803D063C | size: 0x2C
.text
.balign 4

# .text:0x0 | 0x803D0610 | size: 0x14
.fn fn_803D0610, global
/* 803D0610 003C6390  3C 80 80 42 */	lis r4, lbl_8041ADD0@ha
/* 803D0614 003C6394  54 60 10 3A */	slwi r0, r3, 2
/* 803D0618 003C6398  38 84 AD D0 */	addi r4, r4, lbl_8041ADD0@l
/* 803D061C 003C639C  7C 64 00 2E */	lwzx r3, r4, r0
/* 803D0620 003C63A0  4E 80 00 20 */	blr
.endfn fn_803D0610

# .text:0x14 | 0x803D0624 | size: 0x18
.fn fn_803D0624, global
/* 803D0624 003C63A4  A0 03 00 00 */	lhz r0, 0x0(r3)
/* 803D0628 003C63A8  3C 60 80 42 */	lis r3, lbl_8041AD60@ha
/* 803D062C 003C63AC  38 63 AD 60 */	addi r3, r3, lbl_8041AD60@l
/* 803D0630 003C63B0  54 00 C6 FA */	rlwinm r0, r0, 24, 27, 29
/* 803D0634 003C63B4  7C 63 00 2E */	lwzx r3, r3, r0
/* 803D0638 003C63B8  4E 80 00 20 */	blr
.endfn fn_803D0624
