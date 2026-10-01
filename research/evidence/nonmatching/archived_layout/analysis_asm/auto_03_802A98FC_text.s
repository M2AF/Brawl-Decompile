.include "macros.inc"
.file "auto_03_802A98FC_text"

# 0x802A98FC..0x802A990C | size: 0x10
.text
.balign 4

# .text:0x0 | 0x802A98FC | size: 0x10
.fn fn_802A98FC, global
/* 802A98FC 0029F67C  7C 80 23 78 */	mr r0, r4
/* 802A9900 0029F680  7C A4 2B 78 */	mr r4, r5
/* 802A9904 0029F684  7C 05 03 78 */	mr r5, r0
/* 802A9908 0029F688  4B FF CC 00 */	b fn_802A6508
.endfn fn_802A98FC
