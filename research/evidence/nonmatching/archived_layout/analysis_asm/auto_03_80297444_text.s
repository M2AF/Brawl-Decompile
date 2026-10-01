.include "macros.inc"
.file "auto_03_80297444_text"

# 0x80297444..0x80297498 | size: 0x54
.text
.balign 4

# .text:0x0 | 0x80297444 | size: 0x44
.fn fn_80297444, global
/* 80297444 0028D1C4  C0 63 00 00 */	lfs f3, 0x0(r3)
/* 80297448 0028D1C8  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 8029744C 0028D1CC  C0 23 00 04 */	lfs f1, 0x4(r3)
/* 80297450 0028D1D0  EC A3 10 2A */	fadds f5, f3, f2
/* 80297454 0028D1D4  C0 04 00 04 */	lfs f0, 0x4(r4)
/* 80297458 0028D1D8  C0 63 00 08 */	lfs f3, 0x8(r3)
/* 8029745C 0028D1DC  EC 81 00 2A */	fadds f4, f1, f0
/* 80297460 0028D1E0  C0 44 00 08 */	lfs f2, 0x8(r4)
/* 80297464 0028D1E4  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80297468 0028D1E8  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8029746C 0028D1EC  EC 43 10 2A */	fadds f2, f3, f2
/* 80297470 0028D1F0  D0 A3 00 00 */	stfs f5, 0x0(r3)
/* 80297474 0028D1F4  EC 01 00 2A */	fadds f0, f1, f0
/* 80297478 0028D1F8  D0 83 00 04 */	stfs f4, 0x4(r3)
/* 8029747C 0028D1FC  D0 43 00 08 */	stfs f2, 0x8(r3)
/* 80297480 0028D200  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80297484 0028D204  4E 80 00 20 */	blr
.endfn fn_80297444

# .text:0x44 | 0x80297488 | size: 0xC
.fn fn_80297488, global
/* 80297488 0028D208  54 80 10 3A */	slwi r0, r4, 2
/* 8029748C 0028D20C  7C 63 02 14 */	add r3, r3, r0
/* 80297490 0028D210  4E 80 00 20 */	blr
.endfn fn_80297488

# .text:0x50 | 0x80297494 | size: 0x4
.fn fn_80297494, global
/* 80297494 0028D214  4E 80 00 20 */	blr
.endfn fn_80297494
