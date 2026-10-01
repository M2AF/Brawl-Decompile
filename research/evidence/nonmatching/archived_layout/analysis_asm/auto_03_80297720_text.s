.include "macros.inc"
.file "auto_03_80297720_text"

# 0x80297720..0x80297758 | size: 0x38
.text
.balign 4

# .text:0x0 | 0x80297720 | size: 0x34
.fn fn_80297720, global
/* 80297720 0028D4A0  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 80297724 0028D4A4  C0 64 00 04 */	lfs f3, 0x4(r4)
/* 80297728 0028D4A8  EC 81 00 32 */	fmuls f4, f1, f0
/* 8029772C 0028D4AC  C0 44 00 08 */	lfs f2, 0x8(r4)
/* 80297730 0028D4B0  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80297734 0028D4B4  EC 61 00 F2 */	fmuls f3, f1, f3
/* 80297738 0028D4B8  EC 41 00 B2 */	fmuls f2, f1, f2
/* 8029773C 0028D4BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80297740 0028D4C0  D0 83 00 00 */	stfs f4, 0x0(r3)
/* 80297744 0028D4C4  D0 63 00 04 */	stfs f3, 0x4(r3)
/* 80297748 0028D4C8  D0 43 00 08 */	stfs f2, 0x8(r3)
/* 8029774C 0028D4CC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80297750 0028D4D0  4E 80 00 20 */	blr
.endfn fn_80297720

# .text:0x34 | 0x80297754 | size: 0x4
.fn fn_80297754, global
/* 80297754 0028D4D4  4E 80 00 20 */	blr
.endfn fn_80297754
