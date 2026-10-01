.include "macros.inc"
.file "auto_03_80294C28_text"

# 0x80294C28..0x80294C80 | size: 0x58
.text
.balign 4

# .text:0x0 | 0x80294C28 | size: 0x14
.fn fn_80294C28, global
/* 80294C28 0028A9A8  3C 80 04 0C */	lis r4, 0x40c
/* 80294C2C 0028A9AC  D0 23 00 04 */	stfs f1, 0x4(r3)
/* 80294C30 0028A9B0  38 04 00 08 */	addi r0, r4, 0x8
/* 80294C34 0028A9B4  90 03 00 00 */	stw r0, 0x0(r3)
/* 80294C38 0028A9B8  4E 80 00 20 */	blr
.endfn fn_80294C28

# .text:0x14 | 0x80294C3C | size: 0x1C
.fn fn_80294C3C, global
/* 80294C3C 0028A9BC  C0 03 00 04 */	lfs f0, 0x4(r3)
/* 80294C40 0028A9C0  C0 23 00 00 */	lfs f1, 0x0(r3)
/* 80294C44 0028A9C4  EC 40 00 32 */	fmuls f2, f0, f0
/* 80294C48 0028A9C8  C0 03 00 08 */	lfs f0, 0x8(r3)
/* 80294C4C 0028A9CC  EC 21 10 7A */	fmadds f1, f1, f1, f2
/* 80294C50 0028A9D0  EC 20 08 3A */	fmadds f1, f0, f0, f1
/* 80294C54 0028A9D4  4E 80 00 20 */	blr
.endfn fn_80294C3C

# .text:0x30 | 0x80294C58 | size: 0x28
.fn fn_80294C58, global
/* 80294C58 0028A9D8  C0 23 00 04 */	lfs f1, 0x4(r3)
/* 80294C5C 0028A9DC  C0 04 00 04 */	lfs f0, 0x4(r4)
/* 80294C60 0028A9E0  C0 63 00 00 */	lfs f3, 0x0(r3)
/* 80294C64 0028A9E4  EC 81 00 32 */	fmuls f4, f1, f0
/* 80294C68 0028A9E8  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 80294C6C 0028A9EC  C0 23 00 08 */	lfs f1, 0x8(r3)
/* 80294C70 0028A9F0  C0 04 00 08 */	lfs f0, 0x8(r4)
/* 80294C74 0028A9F4  EC 43 20 BA */	fmadds f2, f3, f2, f4
/* 80294C78 0028A9F8  EC 21 10 3A */	fmadds f1, f1, f0, f2
/* 80294C7C 0028A9FC  4E 80 00 20 */	blr
.endfn fn_80294C58
