.include "macros.inc"
.file "auto_03_802B1B08_text"

# 0x802B1B08..0x802B1B3C | size: 0x34
.text
.balign 4

# .text:0x0 | 0x802B1B08 | size: 0x34
.fn fn_802B1B08, global
/* 802B1B08 002A7888  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 802B1B0C 002A788C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802B1B10 002A7890  40 82 00 0C */	bne .L_802B1B1C
/* 802B1B14 002A7894  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 802B1B18 002A7898  4E 80 00 20 */	blr
.L_802B1B1C:
/* 802B1B1C 002A789C  C0 02 AC 18 */	lfs f0, lbl_805A3F38@sda21(r0)
/* 802B1B20 002A78A0  C0 22 AC 1C */	lfs f1, lbl_805A3F3C@sda21(r0)
/* 802B1B24 002A78A4  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802B1B28 002A78A8  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 802B1B2C 002A78AC  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 802B1B30 002A78B0  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 802B1B34 002A78B4  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 802B1B38 002A78B8  4E 80 00 20 */	blr
.endfn fn_802B1B08
