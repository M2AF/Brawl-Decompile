.include "macros.inc"
.file "auto_03_80295068_text"

# 0x80295068..0x80295098 | size: 0x30
.text
.balign 4

# .text:0x0 | 0x80295068 | size: 0x14
.fn fn_80295068, global
/* 80295068 0028ADE8  3C 80 09 0D */	lis r4, 0x90d
/* 8029506C 0028ADEC  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 80295070 0028ADF0  38 04 00 1C */	addi r0, r4, 0x1c
/* 80295074 0028ADF4  90 03 00 00 */	stw r0, 0x0(r3)
/* 80295078 0028ADF8  4E 80 00 20 */	blr
.endfn fn_80295068

# .text:0x14 | 0x8029507C | size: 0xC
.fn fn_8029507C, global
/* 8029507C 0028ADFC  EC 01 00 B2 */	fmuls f0, f1, f2
/* 80295080 0028AE00  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80295084 0028AE04  4E 80 00 20 */	blr
.endfn fn_8029507C

# .text:0x20 | 0x80295088 | size: 0x10
.fn fn_80295088, global
/* 80295088 0028AE08  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8029508C 0028AE0C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80295090 0028AE10  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80295094 0028AE14  4E 80 00 20 */	blr
.endfn fn_80295088
