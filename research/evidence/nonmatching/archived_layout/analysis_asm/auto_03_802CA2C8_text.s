.include "macros.inc"
.file "auto_03_802CA2C8_text"

# 0x802CA2C8..0x802CA32C | size: 0x64
.text
.balign 4

# .text:0x0 | 0x802CA2C8 | size: 0x14
.fn fn_802CA2C8, global
/* 802CA2C8 002C0048  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802CA2CC 002C004C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CA2D0 002C0050  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802CA2D4 002C0054  7D 89 03 A6 */	mtctr r12
/* 802CA2D8 002C0058  4E 80 04 20 */	bctr
.endfn fn_802CA2C8

# .text:0x14 | 0x802CA2DC | size: 0x14
.fn fn_802CA2DC, global
/* 802CA2DC 002C005C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802CA2E0 002C0060  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CA2E4 002C0064  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802CA2E8 002C0068  7D 89 03 A6 */	mtctr r12
/* 802CA2EC 002C006C  4E 80 04 20 */	bctr
.endfn fn_802CA2DC

# .text:0x28 | 0x802CA2F0 | size: 0x14
.fn fn_802CA2F0, global
/* 802CA2F0 002C0070  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802CA2F4 002C0074  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CA2F8 002C0078  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802CA2FC 002C007C  7D 89 03 A6 */	mtctr r12
/* 802CA300 002C0080  4E 80 04 20 */	bctr
.endfn fn_802CA2F0

# .text:0x3C | 0x802CA304 | size: 0x14
.fn fn_802CA304, global
/* 802CA304 002C0084  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802CA308 002C0088  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CA30C 002C008C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802CA310 002C0090  7D 89 03 A6 */	mtctr r12
/* 802CA314 002C0094  4E 80 04 20 */	bctr
.endfn fn_802CA304

# .text:0x50 | 0x802CA318 | size: 0x14
.fn fn_802CA318, global
/* 802CA318 002C0098  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802CA31C 002C009C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CA320 002C00A0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802CA324 002C00A4  7D 89 03 A6 */	mtctr r12
/* 802CA328 002C00A8  4E 80 04 20 */	bctr
.endfn fn_802CA318
