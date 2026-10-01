.include "macros.inc"
.file "auto_03_802C09F0_text"

# 0x802C09F0..0x802C0A38 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802C09F0 | size: 0x4
.fn fn_802C09F0, global
/* 802C09F0 002B6770  4E 80 00 20 */	blr
.endfn fn_802C09F0

# .text:0x4 | 0x802C09F4 | size: 0x14
.fn fn_802C09F4, global
/* 802C09F4 002B6774  81 87 00 00 */	lwz r12, 0x0(r7)
/* 802C09F8 002B6778  7C E3 3B 78 */	mr r3, r7
/* 802C09FC 002B677C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802C0A00 002B6780  7D 89 03 A6 */	mtctr r12
/* 802C0A04 002B6784  4E 80 04 20 */	bctr
.endfn fn_802C09F4

# .text:0x18 | 0x802C0A08 | size: 0x20
.fn fn_802C0A08, global
/* 802C0A08 002B6788  81 86 00 00 */	lwz r12, 0x0(r6)
/* 802C0A0C 002B678C  7C 60 1B 78 */	mr r0, r3
/* 802C0A10 002B6790  7C 85 23 78 */	mr r5, r4
/* 802C0A14 002B6794  7C C3 33 78 */	mr r3, r6
/* 802C0A18 002B6798  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802C0A1C 002B679C  7C 04 03 78 */	mr r4, r0
/* 802C0A20 002B67A0  7D 89 03 A6 */	mtctr r12
/* 802C0A24 002B67A4  4E 80 04 20 */	bctr
.endfn fn_802C0A08

# .text:0x38 | 0x802C0A28 | size: 0x4
.fn fn_802C0A28, global
/* 802C0A28 002B67A8  4E 80 00 20 */	blr
.endfn fn_802C0A28

# .text:0x3C | 0x802C0A2C | size: 0x4
.fn fn_802C0A2C, global
/* 802C0A2C 002B67AC  4E 80 00 20 */	blr
.endfn fn_802C0A2C

# .text:0x40 | 0x802C0A30 | size: 0x4
.fn fn_802C0A30, global
/* 802C0A30 002B67B0  4E 80 00 20 */	blr
.endfn fn_802C0A30

# .text:0x44 | 0x802C0A34 | size: 0x4
.fn fn_802C0A34, global
/* 802C0A34 002B67B4  4E 80 00 20 */	blr
.endfn fn_802C0A34
