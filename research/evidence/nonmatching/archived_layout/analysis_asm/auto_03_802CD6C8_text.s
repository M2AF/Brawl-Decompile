.include "macros.inc"
.file "auto_03_802CD6C8_text"

# 0x802CD6C8..0x802CD71C | size: 0x54
.text
.balign 4

# .text:0x0 | 0x802CD6C8 | size: 0x40
.fn fn_802CD6C8, global
/* 802CD6C8 002C3448  2C 03 00 00 */	cmpwi r3, 0x0
/* 802CD6CC 002C344C  4D 82 00 20 */	beqlr
/* 802CD6D0 002C3450  3C E0 80 48 */	lis r7, lbl_80487320@ha
/* 802CD6D4 002C3454  38 00 00 01 */	li r0, 0x1
/* 802CD6D8 002C3458  38 E7 73 20 */	addi r7, r7, lbl_80487320@l
/* 802CD6DC 002C345C  B0 03 00 06 */	sth r0, 0x6(r3)
/* 802CD6E0 002C3460  38 C7 00 10 */	addi r6, r7, 0x10
/* 802CD6E4 002C3464  38 A7 00 20 */	addi r5, r7, 0x20
/* 802CD6E8 002C3468  38 87 00 30 */	addi r4, r7, 0x30
/* 802CD6EC 002C346C  38 07 00 40 */	addi r0, r7, 0x40
/* 802CD6F0 002C3470  90 E3 00 00 */	stw r7, 0x0(r3)
/* 802CD6F4 002C3474  90 C3 00 08 */	stw r6, 0x8(r3)
/* 802CD6F8 002C3478  90 A3 00 0C */	stw r5, 0xc(r3)
/* 802CD6FC 002C347C  90 83 00 10 */	stw r4, 0x10(r3)
/* 802CD700 002C3480  90 03 00 14 */	stw r0, 0x14(r3)
/* 802CD704 002C3484  4E 80 00 20 */	blr
.endfn fn_802CD6C8

# .text:0x40 | 0x802CD708 | size: 0x14
.fn fn_802CD708, global
/* 802CD708 002C3488  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CD70C 002C348C  38 80 FF FF */	li r4, -0x1
/* 802CD710 002C3490  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802CD714 002C3494  7D 89 03 A6 */	mtctr r12
/* 802CD718 002C3498  4E 80 04 20 */	bctr
.endfn fn_802CD708
