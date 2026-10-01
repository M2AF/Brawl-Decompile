.include "macros.inc"
.file "auto_03_80294374_text"

# 0x80294374..0x802943E4 | size: 0x70
.text
.balign 4

# .text:0x0 | 0x80294374 | size: 0xC
.fn fn_80294374, global
/* 80294374 0028A0F4  38 03 00 37 */	addi r0, r3, 0x37
/* 80294378 0028A0F8  54 03 00 36 */	clrrwi r3, r0, 4
/* 8029437C 0028A0FC  4E 80 00 20 */	blr
.endfn fn_80294374

# .text:0xC | 0x80294380 | size: 0x18
.fn fn_80294380, global
/* 80294380 0028A100  A0 03 00 06 */	lhz r0, 0x6(r3)
/* 80294384 0028A104  38 63 00 37 */	addi r3, r3, 0x37
/* 80294388 0028A108  54 63 00 36 */	clrrwi r3, r3, 4
/* 8029438C 0028A10C  54 00 28 34 */	slwi r0, r0, 5
/* 80294390 0028A110  7C 63 02 14 */	add r3, r3, r0
/* 80294394 0028A114  4E 80 00 20 */	blr
.endfn fn_80294380

# .text:0x24 | 0x80294398 | size: 0x18
.fn fn_80294398, global
/* 80294398 0028A118  C0 02 AA F0 */	lfs f0, lbl_805A3E10@sda21(r0)
/* 8029439C 0028A11C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802943A0 0028A120  D0 03 00 08 */	stfs f0, 0x8(r3)
/* 802943A4 0028A124  D0 03 00 04 */	stfs f0, 0x4(r3)
/* 802943A8 0028A128  D0 03 00 00 */	stfs f0, 0x0(r3)
/* 802943AC 0028A12C  4E 80 00 20 */	blr
.endfn fn_80294398

# .text:0x3C | 0x802943B0 | size: 0x24
.fn fn_802943B0, global
/* 802943B0 0028A130  3D 20 01 01 */	lis r9, 0x101
/* 802943B4 0028A134  90 C3 00 04 */	stw r6, 0x4(r3)
/* 802943B8 0028A138  38 09 00 18 */	addi r0, r9, 0x18
/* 802943BC 0028A13C  90 03 00 00 */	stw r0, 0x0(r3)
/* 802943C0 0028A140  90 83 00 08 */	stw r4, 0x8(r3)
/* 802943C4 0028A144  90 A3 00 0C */	stw r5, 0xc(r3)
/* 802943C8 0028A148  90 E3 00 14 */	stw r7, 0x14(r3)
/* 802943CC 0028A14C  91 03 00 10 */	stw r8, 0x10(r3)
/* 802943D0 0028A150  4E 80 00 20 */	blr
.endfn fn_802943B0

# .text:0x60 | 0x802943D4 | size: 0x8
.fn fn_802943D4, global
/* 802943D4 0028A154  7C 63 20 50 */	subf r3, r3, r4
/* 802943D8 0028A158  4E 80 00 20 */	blr
.endfn fn_802943D4

# .text:0x68 | 0x802943DC | size: 0x4
.fn fn_802943DC, global
/* 802943DC 0028A15C  4E 80 00 20 */	blr
.endfn fn_802943DC

# .text:0x6C | 0x802943E0 | size: 0x4
.fn fn_802943E0, global
/* 802943E0 0028A160  4E 80 00 20 */	blr
.endfn fn_802943E0
