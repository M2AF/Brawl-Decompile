.include "macros.inc"
.file "auto_fn_8032D764_text"

# 0x80009158..0x80009160 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009158 | size: 0x8
.obj "@etb_80009158", local
.hidden "@etb_80009158"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved FPR range: fp21-fp31
 */
	.4byte 0x02CA0000
	.4byte 0x00000000
.endobj "@etb_80009158"

# 0x8000BFD4..0x8000BFE0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BFD4 | size: 0xC
.obj "@eti_8000BFD4", local
.hidden "@eti_8000BFD4"
	.4byte fn_8032D764
	.4byte 0x00000208
	.4byte "@etb_80009158"
.endobj "@eti_8000BFD4"

# 0x8032D764..0x8032D96C | size: 0x208
.text
.balign 4

# .text:0x0 | 0x8032D764 | size: 0x208
.fn fn_8032D764, global
/* 8032D764 003234E4  54 2B 07 3E */	clrlwi r11, r1, 28
/* 8032D768 003234E8  7C 2C 0B 78 */	mr r12, r1
/* 8032D76C 003234EC  21 6B FE F0 */	subfic r11, r11, -0x110
/* 8032D770 003234F0  7C 21 59 6E */	stwux r1, r1, r11
/* 8032D774 003234F4  DB EC FF F0 */	stfd f31, -0x10(r12)
/* 8032D778 003234F8  F3 EC 0F F8 */	psq_st f31, -0x8(r12), 0, qr0
/* 8032D77C 003234FC  DB CC FF E0 */	stfd f30, -0x20(r12)
/* 8032D780 00323500  F3 CC 0F E8 */	psq_st f30, -0x18(r12), 0, qr0
/* 8032D784 00323504  DB AC FF D0 */	stfd f29, -0x30(r12)
/* 8032D788 00323508  F3 AC 0F D8 */	psq_st f29, -0x28(r12), 0, qr0
/* 8032D78C 0032350C  DB 8C FF C0 */	stfd f28, -0x40(r12)
/* 8032D790 00323510  F3 8C 0F C8 */	psq_st f28, -0x38(r12), 0, qr0
/* 8032D794 00323514  DB 6C FF B0 */	stfd f27, -0x50(r12)
/* 8032D798 00323518  F3 6C 0F B8 */	psq_st f27, -0x48(r12), 0, qr0
/* 8032D79C 0032351C  DB 4C FF A0 */	stfd f26, -0x60(r12)
/* 8032D7A0 00323520  F3 4C 0F A8 */	psq_st f26, -0x58(r12), 0, qr0
/* 8032D7A4 00323524  DB 2C FF 90 */	stfd f25, -0x70(r12)
/* 8032D7A8 00323528  F3 2C 0F 98 */	psq_st f25, -0x68(r12), 0, qr0
/* 8032D7AC 0032352C  DB 0C FF 80 */	stfd f24, -0x80(r12)
/* 8032D7B0 00323530  F3 0C 0F 88 */	psq_st f24, -0x78(r12), 0, qr0
/* 8032D7B4 00323534  DA EC FF 70 */	stfd f23, -0x90(r12)
/* 8032D7B8 00323538  F2 EC 0F 78 */	psq_st f23, -0x88(r12), 0, qr0
/* 8032D7BC 0032353C  DA CC FF 60 */	stfd f22, -0xa0(r12)
/* 8032D7C0 00323540  F2 CC 0F 68 */	psq_st f22, -0x98(r12), 0, qr0
/* 8032D7C4 00323544  DA AC FF 50 */	stfd f21, -0xb0(r12)
/* 8032D7C8 00323548  F2 AC 0F 58 */	psq_st f21, -0xa8(r12), 0, qr0
/* 8032D7CC 0032354C  C3 45 00 04 */	lfs f26, 0x4(r5)
/* 8032D7D0 00323550  3C E0 80 41 */	lis r7, lbl_8040F870@ha
/* 8032D7D4 00323554  C3 A4 00 04 */	lfs f29, 0x4(r4)
/* 8032D7D8 00323558  38 C7 F8 70 */	addi r6, r7, lbl_8040F870@l
/* 8032D7DC 0032355C  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 8032D7E0 00323560  C2 C7 F8 70 */	lfs f22, lbl_8040F870@l(r7)
/* 8032D7E4 00323564  EC BD 06 B2 */	fmuls f5, f29, f26
/* 8032D7E8 00323568  C2 E6 00 04 */	lfs f23, 0x4(r6)
/* 8032D7EC 0032356C  C3 06 00 08 */	lfs f24, 0x8(r6)
/* 8032D7F0 00323570  EC 64 B1 3A */	fmadds f3, f4, f4, f22
/* 8032D7F4 00323574  C3 26 00 0C */	lfs f25, 0xc(r6)
/* 8032D7F8 00323578  EC 44 B9 3A */	fmadds f2, f4, f4, f23
/* 8032D7FC 0032357C  C1 A5 00 00 */	lfs f13, 0x0(r5)
/* 8032D800 00323580  EC 24 C1 3A */	fmadds f1, f4, f4, f24
/* 8032D804 00323584  C3 C4 00 00 */	lfs f30, 0x0(r4)
/* 8032D808 00323588  C1 45 00 08 */	lfs f10, 0x8(r5)
/* 8032D80C 0032358C  EC 04 C9 3A */	fmadds f0, f4, f4, f25
/* 8032D810 00323590  C0 E5 00 0C */	lfs f7, 0xc(r5)
/* 8032D814 00323594  EC BE 2B 7A */	fmadds f5, f30, f13, f5
/* 8032D818 00323598  C1 84 00 08 */	lfs f12, 0x8(r4)
/* 8032D81C 0032359C  ED 1E 02 B2 */	fmuls f8, f30, f10
/* 8032D820 003235A0  ED 27 00 32 */	fmuls f9, f7, f0
/* 8032D824 003235A4  EC CC 2A BA */	fmadds f6, f12, f10, f5
/* 8032D828 003235A8  C3 E2 B5 98 */	lfs f31, lbl_805A48B8@sda21(r0)
/* 8032D82C 003235AC  ED 6D 00 F2 */	fmuls f11, f13, f3
/* 8032D830 003235B0  D2 C1 00 50 */	stfs f22, 0x50(r1)
/* 8032D834 003235B4  EC AC 06 B2 */	fmuls f5, f12, f26
/* 8032D838 003235B8  EC FD 03 72 */	fmuls f7, f29, f13
/* 8032D83C 003235BC  EE AC 43 78 */	fmsubs f21, f12, f13, f8
/* 8032D840 003235C0  D2 E1 00 54 */	stfs f23, 0x54(r1)
/* 8032D844 003235C4  EF 7A 00 B2 */	fmuls f27, f26, f2
/* 8032D848 003235C8  EC BD 2A B8 */	fmsubs f5, f29, f10, f5
/* 8032D84C 003235CC  D3 01 00 58 */	stfs f24, 0x58(r1)
/* 8032D850 003235D0  ED 66 5F BA */	fmadds f11, f6, f30, f11
/* 8032D854 003235D4  EE DE 3E B8 */	fmsubs f22, f30, f26, f7
/* 8032D858 003235D8  D3 21 00 5C */	stfs f25, 0x5c(r1)
/* 8032D85C 003235DC  EF 8A 00 72 */	fmuls f28, f10, f1
/* 8032D860 003235E0  ED 26 49 3A */	fmadds f9, f6, f4, f9
/* 8032D864 003235E4  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 8032D868 003235E8  ED 06 DF 7A */	fmadds f8, f6, f29, f27
/* 8032D86C 003235EC  EC C6 E3 3A */	fmadds f6, f6, f12, f28
/* 8032D870 003235F0  D0 81 00 44 */	stfs f4, 0x44(r1)
/* 8032D874 003235F4  ED A5 59 3A */	fmadds f13, f5, f4, f11
/* 8032D878 003235F8  ED 5F 49 3A */	fmadds f10, f31, f4, f9
/* 8032D87C 003235FC  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 8032D880 00323600  ED 76 31 3A */	fmadds f11, f22, f4, f6
/* 8032D884 00323604  ED 95 41 3A */	fmadds f12, f21, f4, f8
/* 8032D888 00323608  D0 81 00 4C */	stfs f4, 0x4c(r1)
/* 8032D88C 0032360C  ED 2D 68 2A */	fadds f9, f13, f13
/* 8032D890 00323610  EC CA 50 2A */	fadds f6, f10, f10
/* 8032D894 00323614  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 8032D898 00323618  ED 0C 60 2A */	fadds f8, f12, f12
/* 8032D89C 0032361C  EC EB 58 2A */	fadds f7, f11, f11
/* 8032D8A0 00323620  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8032D8A4 00323624  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8032D8A8 00323628  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8032D8AC 0032362C  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 8032D8B0 00323630  D2 A1 00 14 */	stfs f21, 0x14(r1)
/* 8032D8B4 00323634  D2 C1 00 18 */	stfs f22, 0x18(r1)
/* 8032D8B8 00323638  D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 8032D8BC 0032363C  D1 A1 00 20 */	stfs f13, 0x20(r1)
/* 8032D8C0 00323640  D1 81 00 24 */	stfs f12, 0x24(r1)
/* 8032D8C4 00323644  D1 61 00 28 */	stfs f11, 0x28(r1)
/* 8032D8C8 00323648  D1 41 00 2C */	stfs f10, 0x2c(r1)
/* 8032D8CC 0032364C  D1 23 00 00 */	stfs f9, 0x0(r3)
/* 8032D8D0 00323650  D1 03 00 04 */	stfs f8, 0x4(r3)
/* 8032D8D4 00323654  D0 E3 00 08 */	stfs f7, 0x8(r3)
/* 8032D8D8 00323658  D0 C3 00 0C */	stfs f6, 0xc(r3)
/* 8032D8DC 0032365C  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8032D8E0 00323660  38 00 FF F8 */	li r0, -0x8
/* 8032D8E4 00323664  13 EA 00 0C */	psq_lx f31, r10, r0, 0, qr0
/* 8032D8E8 00323668  CB EA FF F0 */	lfd f31, -0x10(r10)
/* 8032D8EC 0032366C  38 00 FF E8 */	li r0, -0x18
/* 8032D8F0 00323670  13 CA 00 0C */	psq_lx f30, r10, r0, 0, qr0
/* 8032D8F4 00323674  CB CA FF E0 */	lfd f30, -0x20(r10)
/* 8032D8F8 00323678  38 00 FF D8 */	li r0, -0x28
/* 8032D8FC 0032367C  13 AA 00 0C */	psq_lx f29, r10, r0, 0, qr0
/* 8032D900 00323680  CB AA FF D0 */	lfd f29, -0x30(r10)
/* 8032D904 00323684  38 00 FF C8 */	li r0, -0x38
/* 8032D908 00323688  13 8A 00 0C */	psq_lx f28, r10, r0, 0, qr0
/* 8032D90C 0032368C  CB 8A FF C0 */	lfd f28, -0x40(r10)
/* 8032D910 00323690  38 00 FF B8 */	li r0, -0x48
/* 8032D914 00323694  13 6A 00 0C */	psq_lx f27, r10, r0, 0, qr0
/* 8032D918 00323698  CB 6A FF B0 */	lfd f27, -0x50(r10)
/* 8032D91C 0032369C  38 00 FF A8 */	li r0, -0x58
/* 8032D920 003236A0  13 4A 00 0C */	psq_lx f26, r10, r0, 0, qr0
/* 8032D924 003236A4  CB 4A FF A0 */	lfd f26, -0x60(r10)
/* 8032D928 003236A8  38 00 FF 98 */	li r0, -0x68
/* 8032D92C 003236AC  13 2A 00 0C */	psq_lx f25, r10, r0, 0, qr0
/* 8032D930 003236B0  CB 2A FF 90 */	lfd f25, -0x70(r10)
/* 8032D934 003236B4  38 00 FF 88 */	li r0, -0x78
/* 8032D938 003236B8  13 0A 00 0C */	psq_lx f24, r10, r0, 0, qr0
/* 8032D93C 003236BC  CB 0A FF 80 */	lfd f24, -0x80(r10)
/* 8032D940 003236C0  38 00 FF 78 */	li r0, -0x88
/* 8032D944 003236C4  12 EA 00 0C */	psq_lx f23, r10, r0, 0, qr0
/* 8032D948 003236C8  CA EA FF 70 */	lfd f23, -0x90(r10)
/* 8032D94C 003236CC  38 00 FF 68 */	li r0, -0x98
/* 8032D950 003236D0  12 CA 00 0C */	psq_lx f22, r10, r0, 0, qr0
/* 8032D954 003236D4  CA CA FF 60 */	lfd f22, -0xa0(r10)
/* 8032D958 003236D8  38 00 FF 58 */	li r0, -0xa8
/* 8032D95C 003236DC  12 AA 00 0C */	psq_lx f21, r10, r0, 0, qr0
/* 8032D960 003236E0  CA AA FF 50 */	lfd f21, -0xb0(r10)
/* 8032D964 003236E4  7D 41 53 78 */	mr r1, r10
/* 8032D968 003236E8  4E 80 00 20 */	blr
.endfn fn_8032D764
