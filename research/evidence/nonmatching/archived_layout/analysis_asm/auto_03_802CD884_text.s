.include "macros.inc"
.file "auto_03_802CD884_text"

# 0x802CD884..0x802CD8B8 | size: 0x34
.text
.balign 4

# .text:0x0 | 0x802CD884 | size: 0x20
.fn fn_802CD884, global
/* 802CD884 002C3604  2C 03 00 00 */	cmpwi r3, 0x0
/* 802CD888 002C3608  4D 82 00 20 */	beqlr
/* 802CD88C 002C360C  3C 80 80 48 */	lis r4, lbl_80487380@ha
/* 802CD890 002C3610  38 00 00 01 */	li r0, 0x1
/* 802CD894 002C3614  38 84 73 80 */	addi r4, r4, lbl_80487380@l
/* 802CD898 002C3618  B0 03 00 06 */	sth r0, 0x6(r3)
/* 802CD89C 002C361C  90 83 00 00 */	stw r4, 0x0(r3)
/* 802CD8A0 002C3620  4E 80 00 20 */	blr
.endfn fn_802CD884

# .text:0x20 | 0x802CD8A4 | size: 0x14
.fn fn_802CD8A4, global
/* 802CD8A4 002C3624  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CD8A8 002C3628  38 80 FF FF */	li r4, -0x1
/* 802CD8AC 002C362C  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802CD8B0 002C3630  7D 89 03 A6 */	mtctr r12
/* 802CD8B4 002C3634  4E 80 04 20 */	bctr
.endfn fn_802CD8A4
