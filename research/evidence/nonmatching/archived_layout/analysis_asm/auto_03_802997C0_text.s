.include "macros.inc"
.file "auto_03_802997C0_text"

# 0x802997C0..0x80299808 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802997C0 | size: 0xC
.fn fn_802997C0, global
/* 802997C0 0028F540  80 03 00 00 */	lwz r0, 0x0(r3)
/* 802997C4 0028F544  7C 03 C6 70 */	srawi r3, r0, 24
/* 802997C8 0028F548  4E 80 00 20 */	blr
.endfn fn_802997C0

# .text:0xC | 0x802997CC | size: 0x4
.fn fn_802997CC, global
/* 802997CC 0028F54C  4E 80 00 20 */	blr
.endfn fn_802997CC

# .text:0x10 | 0x802997D0 | size: 0xC
.fn fn_802997D0, global
/* 802997D0 0028F550  80 03 00 08 */	lwz r0, 0x8(r3)
/* 802997D4 0028F554  7C 64 02 14 */	add r3, r4, r0
/* 802997D8 0028F558  4E 80 00 20 */	blr
.endfn fn_802997D0

# .text:0x1C | 0x802997DC | size: 0xC
.fn fn_802997DC, global
/* 802997DC 0028F55C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802997E0 0028F560  7C 64 02 14 */	add r3, r4, r0
/* 802997E4 0028F564  4E 80 00 20 */	blr
.endfn fn_802997DC

# .text:0x28 | 0x802997E8 | size: 0xC
.fn fn_802997E8, global
/* 802997E8 0028F568  80 03 00 04 */	lwz r0, 0x4(r3)
/* 802997EC 0028F56C  7C 64 02 14 */	add r3, r4, r0
/* 802997F0 0028F570  4E 80 00 20 */	blr
.endfn fn_802997E8

# .text:0x34 | 0x802997F4 | size: 0x8
.fn fn_802997F4, global
/* 802997F4 0028F574  7C 63 22 14 */	add r3, r3, r4
/* 802997F8 0028F578  4E 80 00 20 */	blr
.endfn fn_802997F4

# .text:0x3C | 0x802997FC | size: 0xC
.fn fn_802997FC, global
/* 802997FC 0028F57C  80 03 00 00 */	lwz r0, 0x0(r3)
/* 80299800 0028F580  54 03 04 3E */	clrlwi r3, r0, 16
/* 80299804 0028F584  4E 80 00 20 */	blr
.endfn fn_802997FC
