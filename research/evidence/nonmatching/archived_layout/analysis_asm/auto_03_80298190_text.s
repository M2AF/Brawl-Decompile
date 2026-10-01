.include "macros.inc"
.file "auto_03_80298190_text"

# 0x80298190..0x8029829C | size: 0x10C
.text
.balign 4

# .text:0x0 | 0x80298190 | size: 0x8
.fn fn_80298190, global
/* 80298190 0028DF10  90 83 00 00 */	stw r4, 0x0(r3)
/* 80298194 0028DF14  4E 80 00 20 */	blr
.endfn fn_80298190

# .text:0x8 | 0x80298198 | size: 0x18
.fn fn_80298198, global
/* 80298198 0028DF18  80 63 00 08 */	lwz r3, 0x8(r3)
/* 8029819C 0028DF1C  54 60 10 3A */	slwi r0, r3, 2
/* 802981A0 0028DF20  7C 03 00 50 */	subf r0, r3, r0
/* 802981A4 0028DF24  1C 00 00 30 */	mulli r0, r0, 0x30
/* 802981A8 0028DF28  7C 64 02 14 */	add r3, r4, r0
/* 802981AC 0028DF2C  4E 80 00 20 */	blr
.endfn fn_80298198

# .text:0x20 | 0x802981B0 | size: 0x8
.fn fn_802981B0, global
/* 802981B0 0028DF30  38 63 00 18 */	addi r3, r3, 0x18
/* 802981B4 0028DF34  4E 80 00 20 */	blr
.endfn fn_802981B0

# .text:0x28 | 0x802981B8 | size: 0x20
.fn fn_802981B8, global
/* 802981B8 0028DF38  80 63 00 08 */	lwz r3, 0x8(r3)
/* 802981BC 0028DF3C  54 60 10 3A */	slwi r0, r3, 2
/* 802981C0 0028DF40  7C 63 00 50 */	subf r3, r3, r0
/* 802981C4 0028DF44  1C 03 00 30 */	mulli r0, r3, 0x30
/* 802981C8 0028DF48  54 63 28 34 */	slwi r3, r3, 5
/* 802981CC 0028DF4C  7C 04 02 14 */	add r0, r4, r0
/* 802981D0 0028DF50  7C 63 02 14 */	add r3, r3, r0
/* 802981D4 0028DF54  4E 80 00 20 */	blr
.endfn fn_802981B8

# .text:0x48 | 0x802981D8 | size: 0x14
.fn fn_802981D8, global
/* 802981D8 0028DF58  80 03 00 08 */	lwz r0, 0x8(r3)
/* 802981DC 0028DF5C  54 00 10 3A */	slwi r0, r0, 2
/* 802981E0 0028DF60  7C 63 02 14 */	add r3, r3, r0
/* 802981E4 0028DF64  38 63 00 1C */	addi r3, r3, 0x1c
/* 802981E8 0028DF68  4E 80 00 20 */	blr
.endfn fn_802981D8

# .text:0x5C | 0x802981EC | size: 0x28
.fn fn_802981EC, global
/* 802981EC 0028DF6C  80 63 00 08 */	lwz r3, 0x8(r3)
/* 802981F0 0028DF70  54 60 10 3A */	slwi r0, r3, 2
/* 802981F4 0028DF74  7C A3 00 50 */	subf r5, r3, r0
/* 802981F8 0028DF78  1C 05 00 30 */	mulli r0, r5, 0x30
/* 802981FC 0028DF7C  54 A5 28 34 */	slwi r5, r5, 5
/* 80298200 0028DF80  7C 04 02 14 */	add r0, r4, r0
/* 80298204 0028DF84  1C 63 03 C0 */	mulli r3, r3, 0x3c0
/* 80298208 0028DF88  7C 05 02 14 */	add r0, r5, r0
/* 8029820C 0028DF8C  7C 63 02 14 */	add r3, r3, r0
/* 80298210 0028DF90  4E 80 00 20 */	blr
.endfn fn_802981EC

# .text:0x84 | 0x80298214 | size: 0x34
.fn fn_80298214, global
/* 80298214 0028DF94  80 E3 00 08 */	lwz r7, 0x8(r3)
/* 80298218 0028DF98  54 E3 10 3A */	slwi r3, r7, 2
/* 8029821C 0028DF9C  38 07 00 01 */	addi r0, r7, 0x1
/* 80298220 0028DFA0  7C A7 18 50 */	subf r5, r7, r3
/* 80298224 0028DFA4  1C C5 00 30 */	mulli r6, r5, 0x30
/* 80298228 0028DFA8  54 03 28 34 */	slwi r3, r0, 5
/* 8029822C 0028DFAC  54 A5 28 34 */	slwi r5, r5, 5
/* 80298230 0028DFB0  7C 04 32 14 */	add r0, r4, r6
/* 80298234 0028DFB4  1C 87 03 C0 */	mulli r4, r7, 0x3c0
/* 80298238 0028DFB8  7C 05 02 14 */	add r0, r5, r0
/* 8029823C 0028DFBC  7C 04 02 14 */	add r0, r4, r0
/* 80298240 0028DFC0  7C 63 02 14 */	add r3, r3, r0
/* 80298244 0028DFC4  4E 80 00 20 */	blr
.endfn fn_80298214

# .text:0xB8 | 0x80298248 | size: 0x8
.fn fn_80298248, global
/* 80298248 0028DFC8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8029824C 0028DFCC  4E 80 00 20 */	blr
.endfn fn_80298248

# .text:0xC0 | 0x80298250 | size: 0x8
.fn fn_80298250, global
/* 80298250 0028DFD0  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80298254 0028DFD4  4E 80 00 20 */	blr
.endfn fn_80298250

# .text:0xC8 | 0x80298258 | size: 0x8
.fn fn_80298258, global
/* 80298258 0028DFD8  80 63 00 00 */	lwz r3, 0x0(r3)
/* 8029825C 0028DFDC  4E 80 00 20 */	blr
.endfn fn_80298258

# .text:0xD0 | 0x80298260 | size: 0x14
.fn fn_80298260, global
/* 80298260 0028DFE0  88 63 00 00 */	lbz r3, 0x0(r3)
/* 80298264 0028DFE4  54 80 08 3C */	slwi r0, r4, 1
/* 80298268 0028DFE8  7C 60 06 30 */	sraw r0, r3, r0
/* 8029826C 0028DFEC  54 03 07 BE */	clrlwi r3, r0, 30
/* 80298270 0028DFF0  4E 80 00 20 */	blr
.endfn fn_80298260

# .text:0xE4 | 0x80298274 | size: 0x28
.fn fn_80298274, global
/* 80298274 0028DFF4  C0 02 AB 50 */	lfs f0, lbl_805A3E70@sda21(r0)
/* 80298278 0028DFF8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8029827C 0028DFFC  D0 03 00 08 */	stfs f0, 0x8(r3)
/* 80298280 0028E000  D0 03 00 04 */	stfs f0, 0x4(r3)
/* 80298284 0028E004  D0 03 00 00 */	stfs f0, 0x0(r3)
/* 80298288 0028E008  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8029828C 0028E00C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80298290 0028E010  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80298294 0028E014  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80298298 0028E018  4E 80 00 20 */	blr
.endfn fn_80298274
