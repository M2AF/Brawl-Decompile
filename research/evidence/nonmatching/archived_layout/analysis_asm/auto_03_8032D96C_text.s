.include "macros.inc"
.file "auto_03_8032D96C_text"

# 0x8032D96C..0x8032D99C | size: 0x30
.text
.balign 4

# .text:0x0 | 0x8032D96C | size: 0x8
.fn fn_8032D96C, global
/* 8032D96C 003236EC  38 63 00 10 */	addi r3, r3, 0x10
/* 8032D970 003236F0  4E 80 00 20 */	blr
.endfn fn_8032D96C

# .text:0x8 | 0x8032D974 | size: 0x4
.fn fn_8032D974, global
/* 8032D974 003236F4  4E 80 00 20 */	blr
.endfn fn_8032D974

# .text:0xC | 0x8032D978 | size: 0x24
.fn fn_8032D978, global
/* 8032D978 003236F8  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 8032D97C 003236FC  7C 05 20 AE */	lbzx r0, r5, r4
/* 8032D980 00323700  54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 8032D984 00323704  41 82 00 08 */	beq .L_8032D98C
/* 8032D988 00323708  48 00 10 2C */	b fn_8032E9B4
.L_8032D98C:
/* 8032D98C 0032370C  1C 04 00 30 */	mulli r0, r4, 0x30
/* 8032D990 00323710  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8032D994 00323714  7C 63 02 14 */	add r3, r3, r0
/* 8032D998 00323718  4E 80 00 20 */	blr
.endfn fn_8032D978
