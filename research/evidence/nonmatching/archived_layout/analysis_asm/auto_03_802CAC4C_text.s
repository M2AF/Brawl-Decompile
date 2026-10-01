.include "macros.inc"
.file "auto_03_802CAC4C_text"

# 0x802CAC4C..0x802CAD00 | size: 0xB4
.text
.balign 4

# .text:0x0 | 0x802CAC4C | size: 0x14
.fn fn_802CAC4C, global
/* 802CAC4C 002C09CC  80 63 00 04 */	lwz r3, 0x4(r3)
/* 802CAC50 002C09D0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CAC54 002C09D4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802CAC58 002C09D8  7D 89 03 A6 */	mtctr r12
/* 802CAC5C 002C09DC  4E 80 04 20 */	bctr
.endfn fn_802CAC4C

# .text:0x14 | 0x802CAC60 | size: 0x20
.fn fn_802CAC60, global
/* 802CAC60 002C09E0  80 63 00 04 */	lwz r3, 0x4(r3)
/* 802CAC64 002C09E4  7C A4 2B 78 */	mr r4, r5
/* 802CAC68 002C09E8  7C C5 33 78 */	mr r5, r6
/* 802CAC6C 002C09EC  7C E6 3B 78 */	mr r6, r7
/* 802CAC70 002C09F0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CAC74 002C09F4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802CAC78 002C09F8  7D 89 03 A6 */	mtctr r12
/* 802CAC7C 002C09FC  4E 80 04 20 */	bctr
.endfn fn_802CAC60

# .text:0x34 | 0x802CAC80 | size: 0x18
.fn fn_802CAC80, global
/* 802CAC80 002C0A00  80 63 00 04 */	lwz r3, 0x4(r3)
/* 802CAC84 002C0A04  7C A4 2B 78 */	mr r4, r5
/* 802CAC88 002C0A08  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CAC8C 002C0A0C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802CAC90 002C0A10  7D 89 03 A6 */	mtctr r12
/* 802CAC94 002C0A14  4E 80 04 20 */	bctr
.endfn fn_802CAC80

# .text:0x4C | 0x802CAC98 | size: 0x18
.fn fn_802CAC98, global
/* 802CAC98 002C0A18  80 63 00 04 */	lwz r3, 0x4(r3)
/* 802CAC9C 002C0A1C  7C A4 2B 78 */	mr r4, r5
/* 802CACA0 002C0A20  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CACA4 002C0A24  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802CACA8 002C0A28  7D 89 03 A6 */	mtctr r12
/* 802CACAC 002C0A2C  4E 80 04 20 */	bctr
.endfn fn_802CAC98

# .text:0x64 | 0x802CACB0 | size: 0x18
.fn fn_802CACB0, global
/* 802CACB0 002C0A30  80 63 00 04 */	lwz r3, 0x4(r3)
/* 802CACB4 002C0A34  7C A4 2B 78 */	mr r4, r5
/* 802CACB8 002C0A38  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CACBC 002C0A3C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802CACC0 002C0A40  7D 89 03 A6 */	mtctr r12
/* 802CACC4 002C0A44  4E 80 04 20 */	bctr
.endfn fn_802CACB0

# .text:0x7C | 0x802CACC8 | size: 0x18
.fn fn_802CACC8, global
/* 802CACC8 002C0A48  80 63 00 04 */	lwz r3, 0x4(r3)
/* 802CACCC 002C0A4C  7C A4 2B 78 */	mr r4, r5
/* 802CACD0 002C0A50  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CACD4 002C0A54  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802CACD8 002C0A58  7D 89 03 A6 */	mtctr r12
/* 802CACDC 002C0A5C  4E 80 04 20 */	bctr
.endfn fn_802CACC8

# .text:0x94 | 0x802CACE0 | size: 0x18
.fn fn_802CACE0, global
/* 802CACE0 002C0A60  80 63 00 04 */	lwz r3, 0x4(r3)
/* 802CACE4 002C0A64  7C A4 2B 78 */	mr r4, r5
/* 802CACE8 002C0A68  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CACEC 002C0A6C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802CACF0 002C0A70  7D 89 03 A6 */	mtctr r12
/* 802CACF4 002C0A74  4E 80 04 20 */	bctr
.endfn fn_802CACE0

# .text:0xAC | 0x802CACF8 | size: 0x4
.fn fn_802CACF8, global
/* 802CACF8 002C0A78  4E 80 00 20 */	blr
.endfn fn_802CACF8

# .text:0xB0 | 0x802CACFC | size: 0x4
.fn fn_802CACFC, global
/* 802CACFC 002C0A7C  4E 80 00 20 */	blr
.endfn fn_802CACFC
