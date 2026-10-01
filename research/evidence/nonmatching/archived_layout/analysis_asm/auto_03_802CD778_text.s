.include "macros.inc"
.file "auto_03_802CD778_text"

# 0x802CD778..0x802CD798 | size: 0x20
.text
.balign 4

# .text:0x0 | 0x802CD778 | size: 0x8
.fn fn_802CD778, global
/* 802CD778 002C34F8  3C 60 01 00 */	lis r3, 0x100
/* 802CD77C 002C34FC  4E 80 00 20 */	blr
.endfn fn_802CD778

# .text:0x8 | 0x802CD780 | size: 0x8
.fn fn_802CD780, global
/* 802CD780 002C3500  3C 60 01 00 */	lis r3, 0x100
/* 802CD784 002C3504  4E 80 00 20 */	blr
.endfn fn_802CD780

# .text:0x10 | 0x802CD788 | size: 0x8
.fn fn_802CD788, global
/* 802CD788 002C3508  3C 60 01 00 */	lis r3, 0x100
/* 802CD78C 002C350C  4E 80 00 20 */	blr
.endfn fn_802CD788

# .text:0x18 | 0x802CD790 | size: 0x8
.fn fn_802CD790, global
/* 802CD790 002C3510  3C 60 01 00 */	lis r3, 0x100
/* 802CD794 002C3514  4E 80 00 20 */	blr
.endfn fn_802CD790
