.include "macros.inc"
.file "auto_fn_80290AC4_text"

# 0x80006618..0x80006620 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006618 | size: 0x8
.obj "@etb_80006618", local
.hidden "@etb_80006618"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_80006618"

# 0x80009934..0x80009940 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009934 | size: 0xC
.obj "@eti_80009934", local
.hidden "@eti_80009934"
	.4byte fn_80290AC4
	.4byte 0x00000120
	.4byte "@etb_80006618"
.endobj "@eti_80009934"

# 0x80290AC4..0x80290BE4 | size: 0x120
.text
.balign 4

# .text:0x0 | 0x80290AC4 | size: 0x120
.fn fn_80290AC4, global
/* 80290AC4 00286844  54 2B 07 3E */	clrlwi r11, r1, 28
/* 80290AC8 00286848  7C 2C 0B 78 */	mr r12, r1
/* 80290ACC 0028684C  21 6B FF B0 */	subfic r11, r11, -0x50
/* 80290AD0 00286850  C0 02 AA E0 */	lfs f0, lbl_805A3E00@sda21(r0)
/* 80290AD4 00286854  7C 21 59 6E */	stwux r1, r1, r11
/* 80290AD8 00286858  D0 03 00 00 */	stfs f0, 0x0(r3)
/* 80290ADC 0028685C  D0 03 00 04 */	stfs f0, 0x4(r3)
/* 80290AE0 00286860  D0 03 00 08 */	stfs f0, 0x8(r3)
/* 80290AE4 00286864  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80290AE8 00286868  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80290AEC 0028686C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80290AF0 00286870  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80290AF4 00286874  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80290AF8 00286878  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80290AFC 0028687C  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80290B00 00286880  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80290B04 00286884  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80290B08 00286888  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 80290B0C 0028688C  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80290B10 00286890  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80290B14 00286894  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 80290B18 00286898  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 80290B1C 0028689C  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 80290B20 002868A0  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 80290B24 002868A4  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 80290B28 002868A8  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 80290B2C 002868AC  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 80290B30 002868B0  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 80290B34 002868B4  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 80290B38 002868B8  D0 03 00 60 */	stfs f0, 0x60(r3)
/* 80290B3C 002868BC  D0 03 00 64 */	stfs f0, 0x64(r3)
/* 80290B40 002868C0  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 80290B44 002868C4  D0 03 00 6C */	stfs f0, 0x6c(r3)
/* 80290B48 002868C8  D0 03 00 70 */	stfs f0, 0x70(r3)
/* 80290B4C 002868CC  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 80290B50 002868D0  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 80290B54 002868D4  D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 80290B58 002868D8  D0 03 00 80 */	stfs f0, 0x80(r3)
/* 80290B5C 002868DC  D0 03 00 84 */	stfs f0, 0x84(r3)
/* 80290B60 002868E0  D0 03 00 88 */	stfs f0, 0x88(r3)
/* 80290B64 002868E4  D0 03 00 8C */	stfs f0, 0x8c(r3)
/* 80290B68 002868E8  D0 03 00 90 */	stfs f0, 0x90(r3)
/* 80290B6C 002868EC  D0 03 00 94 */	stfs f0, 0x94(r3)
/* 80290B70 002868F0  D0 03 00 98 */	stfs f0, 0x98(r3)
/* 80290B74 002868F4  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 80290B78 002868F8  D0 03 00 A0 */	stfs f0, 0xa0(r3)
/* 80290B7C 002868FC  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 80290B80 00286900  D0 03 00 A8 */	stfs f0, 0xa8(r3)
/* 80290B84 00286904  D0 03 00 AC */	stfs f0, 0xac(r3)
/* 80290B88 00286908  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 80290B8C 0028690C  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 80290B90 00286910  D0 03 00 B8 */	stfs f0, 0xb8(r3)
/* 80290B94 00286914  D0 03 00 BC */	stfs f0, 0xbc(r3)
/* 80290B98 00286918  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80290B9C 0028691C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80290BA0 00286920  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80290BA4 00286924  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80290BA8 00286928  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80290BAC 0028692C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80290BB0 00286930  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80290BB4 00286934  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80290BB8 00286938  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80290BBC 0028693C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80290BC0 00286940  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80290BC4 00286944  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80290BC8 00286948  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80290BCC 0028694C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80290BD0 00286950  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80290BD4 00286954  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80290BD8 00286958  81 41 00 00 */	lwz r10, 0x0(r1)
/* 80290BDC 0028695C  7D 41 53 78 */	mr r1, r10
/* 80290BE0 00286960  4E 80 00 20 */	blr
.endfn fn_80290AC4
