.include "macros.inc"
.file "auto_03_803F11E0_text"

# 0x803F11E0..0x803F1A08 | size: 0x828
.text
.balign 4

# .text:0x0 | 0x803F11E0 | size: 0xC
.fn fn_803F11E0, global
/* 803F11E0 003E6F60  3C 60 80 49 */	lis r3, lbl_80493D80@ha
/* 803F11E4 003E6F64  38 63 3D 80 */	addi r3, r3, lbl_80493D80@l
/* 803F11E8 003E6F68  4E 80 00 20 */	blr
.endfn fn_803F11E0

# .text:0xC | 0x803F11EC | size: 0xC
.fn fn_803F11EC, global
/* 803F11EC 003E6F6C  3C 60 80 49 */	lis r3, lbl_80493D74@ha
/* 803F11F0 003E6F70  38 63 3D 74 */	addi r3, r3, lbl_80493D74@l
/* 803F11F4 003E6F74  4E 80 00 20 */	blr
.endfn fn_803F11EC

# .text:0x18 | 0x803F11F8 | size: 0x5C
.fn fn_803F11F8, global
/* 803F11F8 003E6F78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F11FC 003E6F7C  3C 80 80 42 */	lis r4, lbl_8041F460@ha
/* 803F1200 003E6F80  38 84 F4 60 */	addi r4, r4, lbl_8041F460@l
/* 803F1204 003E6F84  38 60 00 00 */	li r3, 0x0
/* 803F1208 003E6F88  C8 04 00 00 */	lfd f0, 0x0(r4)
/* 803F120C 003E6F8C  C8 64 00 08 */	lfd f3, 0x8(r4)
/* 803F1210 003E6F90  C8 84 00 10 */	lfd f4, 0x10(r4)
/* 803F1214 003E6F94  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803F1218 003E6F98  FF 01 18 00 */	fcmpu cr6, f1, f3
/* 803F121C 003E6F9C  41 80 00 30 */	blt .L_803F124C
/* 803F1220 003E6FA0  38 63 FF FF */	subi r3, r3, 0x1
/* 803F1224 003E6FA4  40 98 00 28 */	bge cr6, .L_803F124C
/* 803F1228 003E6FA8  FF 81 20 00 */	fcmpu cr7, f1, f4
/* 803F122C 003E6FAC  FC 40 08 90 */	fmr f2, f1
/* 803F1230 003E6FB0  41 9C 00 08 */	blt cr7, .L_803F1238
/* 803F1234 003E6FB4  FC 41 20 28 */	fsub f2, f1, f4
.L_803F1238:
/* 803F1238 003E6FB8  FC 40 10 1E */	fctiwz f2, f2
/* 803F123C 003E6FBC  D8 41 00 08 */	stfd f2, 0x8(r1)
/* 803F1240 003E6FC0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803F1244 003E6FC4  41 9C 00 08 */	blt cr7, .L_803F124C
/* 803F1248 003E6FC8  3C 63 80 00 */	addis r3, r3, 0x8000
.L_803F124C:
/* 803F124C 003E6FCC  38 21 00 10 */	addi r1, r1, 0x10
/* 803F1250 003E6FD0  4E 80 00 20 */	blr
.endfn fn_803F11F8

# .text:0x74 | 0x803F1254 | size: 0x4C
.fn __save_fpr, global
# .text:0x74 | 0x803F1254 | size: 0x0
.sym _savefpr_14, global
/* 803F1254 003E6FD4  D9 CB FF 70 */	stfd f14, -0x90(r11)
# .text:0x78 | 0x803F1258 | size: 0x0
.sym _savefpr_15, global
/* 803F1258 003E6FD8  D9 EB FF 78 */	stfd f15, -0x88(r11)
# .text:0x7C | 0x803F125C | size: 0x0
.sym _savefpr_16, global
/* 803F125C 003E6FDC  DA 0B FF 80 */	stfd f16, -0x80(r11)
# .text:0x80 | 0x803F1260 | size: 0x0
.sym _savefpr_17, global
/* 803F1260 003E6FE0  DA 2B FF 88 */	stfd f17, -0x78(r11)
# .text:0x84 | 0x803F1264 | size: 0x0
.sym _savefpr_18, global
/* 803F1264 003E6FE4  DA 4B FF 90 */	stfd f18, -0x70(r11)
# .text:0x88 | 0x803F1268 | size: 0x0
.sym _savefpr_19, global
/* 803F1268 003E6FE8  DA 6B FF 98 */	stfd f19, -0x68(r11)
# .text:0x8C | 0x803F126C | size: 0x0
.sym _savefpr_20, global
/* 803F126C 003E6FEC  DA 8B FF A0 */	stfd f20, -0x60(r11)
# .text:0x90 | 0x803F1270 | size: 0x0
.sym _savefpr_21, global
/* 803F1270 003E6FF0  DA AB FF A8 */	stfd f21, -0x58(r11)
# .text:0x94 | 0x803F1274 | size: 0x0
.sym _savefpr_22, global
/* 803F1274 003E6FF4  DA CB FF B0 */	stfd f22, -0x50(r11)
# .text:0x98 | 0x803F1278 | size: 0x0
.sym _savefpr_23, global
/* 803F1278 003E6FF8  DA EB FF B8 */	stfd f23, -0x48(r11)
# .text:0x9C | 0x803F127C | size: 0x0
.sym _savefpr_24, global
/* 803F127C 003E6FFC  DB 0B FF C0 */	stfd f24, -0x40(r11)
# .text:0xA0 | 0x803F1280 | size: 0x0
.sym _savefpr_25, global
/* 803F1280 003E7000  DB 2B FF C8 */	stfd f25, -0x38(r11)
# .text:0xA4 | 0x803F1284 | size: 0x0
.sym _savefpr_26, global
/* 803F1284 003E7004  DB 4B FF D0 */	stfd f26, -0x30(r11)
# .text:0xA8 | 0x803F1288 | size: 0x0
.sym _savefpr_27, global
/* 803F1288 003E7008  DB 6B FF D8 */	stfd f27, -0x28(r11)
# .text:0xAC | 0x803F128C | size: 0x0
.sym _savefpr_28, global
/* 803F128C 003E700C  DB 8B FF E0 */	stfd f28, -0x20(r11)
# .text:0xB0 | 0x803F1290 | size: 0x0
.sym _savefpr_29, global
/* 803F1290 003E7010  DB AB FF E8 */	stfd f29, -0x18(r11)
# .text:0xB4 | 0x803F1294 | size: 0x0
.sym _savefpr_30, global
/* 803F1294 003E7014  DB CB FF F0 */	stfd f30, -0x10(r11)
# .text:0xB8 | 0x803F1298 | size: 0x0
.sym _savefpr_31, global
/* 803F1298 003E7018  DB EB FF F8 */	stfd f31, -0x8(r11)
/* 803F129C 003E701C  4E 80 00 20 */	blr
.endfn __save_fpr

# .text:0xC0 | 0x803F12A0 | size: 0x4C
.fn __restore_fpr, global
# .text:0xC0 | 0x803F12A0 | size: 0x0
.sym _restfpr_14, global
/* 803F12A0 003E7020  C9 CB FF 70 */	lfd f14, -0x90(r11)
# .text:0xC4 | 0x803F12A4 | size: 0x0
.sym _restfpr_15, global
/* 803F12A4 003E7024  C9 EB FF 78 */	lfd f15, -0x88(r11)
# .text:0xC8 | 0x803F12A8 | size: 0x0
.sym _restfpr_16, global
/* 803F12A8 003E7028  CA 0B FF 80 */	lfd f16, -0x80(r11)
# .text:0xCC | 0x803F12AC | size: 0x0
.sym _restfpr_17, global
/* 803F12AC 003E702C  CA 2B FF 88 */	lfd f17, -0x78(r11)
# .text:0xD0 | 0x803F12B0 | size: 0x0
.sym _restfpr_18, global
/* 803F12B0 003E7030  CA 4B FF 90 */	lfd f18, -0x70(r11)
# .text:0xD4 | 0x803F12B4 | size: 0x0
.sym _restfpr_19, global
/* 803F12B4 003E7034  CA 6B FF 98 */	lfd f19, -0x68(r11)
# .text:0xD8 | 0x803F12B8 | size: 0x0
.sym _restfpr_20, global
/* 803F12B8 003E7038  CA 8B FF A0 */	lfd f20, -0x60(r11)
# .text:0xDC | 0x803F12BC | size: 0x0
.sym _restfpr_21, global
/* 803F12BC 003E703C  CA AB FF A8 */	lfd f21, -0x58(r11)
# .text:0xE0 | 0x803F12C0 | size: 0x0
.sym _restfpr_22, global
/* 803F12C0 003E7040  CA CB FF B0 */	lfd f22, -0x50(r11)
# .text:0xE4 | 0x803F12C4 | size: 0x0
.sym _restfpr_23, global
/* 803F12C4 003E7044  CA EB FF B8 */	lfd f23, -0x48(r11)
# .text:0xE8 | 0x803F12C8 | size: 0x0
.sym _restfpr_24, global
/* 803F12C8 003E7048  CB 0B FF C0 */	lfd f24, -0x40(r11)
# .text:0xEC | 0x803F12CC | size: 0x0
.sym _restfpr_25, global
/* 803F12CC 003E704C  CB 2B FF C8 */	lfd f25, -0x38(r11)
# .text:0xF0 | 0x803F12D0 | size: 0x0
.sym _restfpr_26, global
/* 803F12D0 003E7050  CB 4B FF D0 */	lfd f26, -0x30(r11)
# .text:0xF4 | 0x803F12D4 | size: 0x0
.sym _restfpr_27, global
/* 803F12D4 003E7054  CB 6B FF D8 */	lfd f27, -0x28(r11)
# .text:0xF8 | 0x803F12D8 | size: 0x0
.sym _restfpr_28, global
/* 803F12D8 003E7058  CB 8B FF E0 */	lfd f28, -0x20(r11)
# .text:0xFC | 0x803F12DC | size: 0x0
.sym _restfpr_29, global
/* 803F12DC 003E705C  CB AB FF E8 */	lfd f29, -0x18(r11)
# .text:0x100 | 0x803F12E0 | size: 0x0
.sym _restfpr_30, global
/* 803F12E0 003E7060  CB CB FF F0 */	lfd f30, -0x10(r11)
# .text:0x104 | 0x803F12E4 | size: 0x0
.sym _restfpr_31, global
/* 803F12E4 003E7064  CB EB FF F8 */	lfd f31, -0x8(r11)
/* 803F12E8 003E7068  4E 80 00 20 */	blr
.endfn __restore_fpr

# .text:0x10C | 0x803F12EC | size: 0x4C
.fn __save_gpr, global
# .text:0x10C | 0x803F12EC | size: 0x0
.sym _savegpr_14, global
/* 803F12EC 003E706C  91 CB FF B8 */	stw r14, -0x48(r11)
# .text:0x110 | 0x803F12F0 | size: 0x0
.sym _savegpr_15, global
/* 803F12F0 003E7070  91 EB FF BC */	stw r15, -0x44(r11)
# .text:0x114 | 0x803F12F4 | size: 0x0
.sym _savegpr_16, global
/* 803F12F4 003E7074  92 0B FF C0 */	stw r16, -0x40(r11)
# .text:0x118 | 0x803F12F8 | size: 0x0
.sym _savegpr_17, global
/* 803F12F8 003E7078  92 2B FF C4 */	stw r17, -0x3c(r11)
# .text:0x11C | 0x803F12FC | size: 0x0
.sym _savegpr_18, global
/* 803F12FC 003E707C  92 4B FF C8 */	stw r18, -0x38(r11)
# .text:0x120 | 0x803F1300 | size: 0x0
.sym _savegpr_19, global
/* 803F1300 003E7080  92 6B FF CC */	stw r19, -0x34(r11)
# .text:0x124 | 0x803F1304 | size: 0x0
.sym _savegpr_20, global
/* 803F1304 003E7084  92 8B FF D0 */	stw r20, -0x30(r11)
# .text:0x128 | 0x803F1308 | size: 0x0
.sym _savegpr_21, global
/* 803F1308 003E7088  92 AB FF D4 */	stw r21, -0x2c(r11)
# .text:0x12C | 0x803F130C | size: 0x0
.sym _savegpr_22, global
/* 803F130C 003E708C  92 CB FF D8 */	stw r22, -0x28(r11)
# .text:0x130 | 0x803F1310 | size: 0x0
.sym _savegpr_23, global
/* 803F1310 003E7090  92 EB FF DC */	stw r23, -0x24(r11)
# .text:0x134 | 0x803F1314 | size: 0x0
.sym _savegpr_24, global
/* 803F1314 003E7094  93 0B FF E0 */	stw r24, -0x20(r11)
# .text:0x138 | 0x803F1318 | size: 0x0
.sym _savegpr_25, global
/* 803F1318 003E7098  93 2B FF E4 */	stw r25, -0x1c(r11)
# .text:0x13C | 0x803F131C | size: 0x0
.sym _savegpr_26, global
/* 803F131C 003E709C  93 4B FF E8 */	stw r26, -0x18(r11)
# .text:0x140 | 0x803F1320 | size: 0x0
.sym _savegpr_27, global
/* 803F1320 003E70A0  93 6B FF EC */	stw r27, -0x14(r11)
# .text:0x144 | 0x803F1324 | size: 0x0
.sym _savegpr_28, global
/* 803F1324 003E70A4  93 8B FF F0 */	stw r28, -0x10(r11)
# .text:0x148 | 0x803F1328 | size: 0x0
.sym _savegpr_29, global
/* 803F1328 003E70A8  93 AB FF F4 */	stw r29, -0xc(r11)
# .text:0x14C | 0x803F132C | size: 0x0
.sym _savegpr_30, global
/* 803F132C 003E70AC  93 CB FF F8 */	stw r30, -0x8(r11)
# .text:0x150 | 0x803F1330 | size: 0x0
.sym _savegpr_31, global
/* 803F1330 003E70B0  93 EB FF FC */	stw r31, -0x4(r11)
/* 803F1334 003E70B4  4E 80 00 20 */	blr
.endfn __save_gpr

# .text:0x158 | 0x803F1338 | size: 0x4C
.fn __restore_gpr, global
# .text:0x158 | 0x803F1338 | size: 0x0
.sym _restgpr_14, global
/* 803F1338 003E70B8  81 CB FF B8 */	lwz r14, -0x48(r11)
# .text:0x15C | 0x803F133C | size: 0x0
.sym _restgpr_15, global
/* 803F133C 003E70BC  81 EB FF BC */	lwz r15, -0x44(r11)
# .text:0x160 | 0x803F1340 | size: 0x0
.sym _restgpr_16, global
/* 803F1340 003E70C0  82 0B FF C0 */	lwz r16, -0x40(r11)
# .text:0x164 | 0x803F1344 | size: 0x0
.sym _restgpr_17, global
/* 803F1344 003E70C4  82 2B FF C4 */	lwz r17, -0x3c(r11)
# .text:0x168 | 0x803F1348 | size: 0x0
.sym _restgpr_18, global
/* 803F1348 003E70C8  82 4B FF C8 */	lwz r18, -0x38(r11)
# .text:0x16C | 0x803F134C | size: 0x0
.sym _restgpr_19, global
/* 803F134C 003E70CC  82 6B FF CC */	lwz r19, -0x34(r11)
# .text:0x170 | 0x803F1350 | size: 0x0
.sym _restgpr_20, global
/* 803F1350 003E70D0  82 8B FF D0 */	lwz r20, -0x30(r11)
# .text:0x174 | 0x803F1354 | size: 0x0
.sym _restgpr_21, global
/* 803F1354 003E70D4  82 AB FF D4 */	lwz r21, -0x2c(r11)
# .text:0x178 | 0x803F1358 | size: 0x0
.sym _restgpr_22, global
/* 803F1358 003E70D8  82 CB FF D8 */	lwz r22, -0x28(r11)
# .text:0x17C | 0x803F135C | size: 0x0
.sym _restgpr_23, global
/* 803F135C 003E70DC  82 EB FF DC */	lwz r23, -0x24(r11)
# .text:0x180 | 0x803F1360 | size: 0x0
.sym _restgpr_24, global
/* 803F1360 003E70E0  83 0B FF E0 */	lwz r24, -0x20(r11)
# .text:0x184 | 0x803F1364 | size: 0x0
.sym _restgpr_25, global
/* 803F1364 003E70E4  83 2B FF E4 */	lwz r25, -0x1c(r11)
# .text:0x188 | 0x803F1368 | size: 0x0
.sym _restgpr_26, global
/* 803F1368 003E70E8  83 4B FF E8 */	lwz r26, -0x18(r11)
# .text:0x18C | 0x803F136C | size: 0x0
.sym _restgpr_27, global
/* 803F136C 003E70EC  83 6B FF EC */	lwz r27, -0x14(r11)
# .text:0x190 | 0x803F1370 | size: 0x0
.sym _restgpr_28, global
/* 803F1370 003E70F0  83 8B FF F0 */	lwz r28, -0x10(r11)
# .text:0x194 | 0x803F1374 | size: 0x0
.sym _restgpr_29, global
/* 803F1374 003E70F4  83 AB FF F4 */	lwz r29, -0xc(r11)
# .text:0x198 | 0x803F1378 | size: 0x0
.sym _restgpr_30, global
/* 803F1378 003E70F8  83 CB FF F8 */	lwz r30, -0x8(r11)
# .text:0x19C | 0x803F137C | size: 0x0
.sym _restgpr_31, global
/* 803F137C 003E70FC  83 EB FF FC */	lwz r31, -0x4(r11)
/* 803F1380 003E7100  4E 80 00 20 */	blr
.endfn __restore_gpr

# .text:0x1A4 | 0x803F1384 | size: 0xEC
.fn __div2u, global
/* 803F1384 003E7104  2C 03 00 00 */	cmpwi r3, 0x0
/* 803F1388 003E7108  7C 60 00 34 */	cntlzw r0, r3
/* 803F138C 003E710C  7C 89 00 34 */	cntlzw r9, r4
/* 803F1390 003E7110  40 82 00 08 */	bne .L_803F1398
/* 803F1394 003E7114  38 09 00 20 */	addi r0, r9, 0x20
.L_803F1398:
/* 803F1398 003E7118  2C 05 00 00 */	cmpwi r5, 0x0
/* 803F139C 003E711C  7C A9 00 34 */	cntlzw r9, r5
/* 803F13A0 003E7120  7C CA 00 34 */	cntlzw r10, r6
/* 803F13A4 003E7124  40 82 00 08 */	bne .L_803F13AC
/* 803F13A8 003E7128  39 2A 00 20 */	addi r9, r10, 0x20
.L_803F13AC:
/* 803F13AC 003E712C  7C 00 48 00 */	cmpw r0, r9
/* 803F13B0 003E7130  21 40 00 40 */	subfic r10, r0, 0x40
/* 803F13B4 003E7134  41 81 00 B0 */	bgt .L_803F1464
/* 803F13B8 003E7138  39 29 00 01 */	addi r9, r9, 0x1
/* 803F13BC 003E713C  21 29 00 40 */	subfic r9, r9, 0x40
/* 803F13C0 003E7140  7C 00 4A 14 */	add r0, r0, r9
/* 803F13C4 003E7144  7D 29 50 50 */	subf r9, r9, r10
/* 803F13C8 003E7148  7D 29 03 A6 */	mtctr r9
/* 803F13CC 003E714C  2C 09 00 20 */	cmpwi r9, 0x20
/* 803F13D0 003E7150  38 E9 FF E0 */	subi r7, r9, 0x20
/* 803F13D4 003E7154  41 80 00 10 */	blt .L_803F13E4
/* 803F13D8 003E7158  7C 68 3C 30 */	srw r8, r3, r7
/* 803F13DC 003E715C  38 E0 00 00 */	li r7, 0x0
/* 803F13E0 003E7160  48 00 00 18 */	b .L_803F13F8
.L_803F13E4:
/* 803F13E4 003E7164  7C 88 4C 30 */	srw r8, r4, r9
/* 803F13E8 003E7168  20 E9 00 20 */	subfic r7, r9, 0x20
/* 803F13EC 003E716C  7C 67 38 30 */	slw r7, r3, r7
/* 803F13F0 003E7170  7D 08 3B 78 */	or r8, r8, r7
/* 803F13F4 003E7174  7C 67 4C 30 */	srw r7, r3, r9
.L_803F13F8:
/* 803F13F8 003E7178  2C 00 00 20 */	cmpwi r0, 0x20
/* 803F13FC 003E717C  31 20 FF E0 */	subic r9, r0, 0x20
/* 803F1400 003E7180  41 80 00 10 */	blt .L_803F1410
/* 803F1404 003E7184  7C 83 48 30 */	slw r3, r4, r9
/* 803F1408 003E7188  38 80 00 00 */	li r4, 0x0
/* 803F140C 003E718C  48 00 00 18 */	b .L_803F1424
.L_803F1410:
/* 803F1410 003E7190  7C 63 00 30 */	slw r3, r3, r0
/* 803F1414 003E7194  21 20 00 20 */	subfic r9, r0, 0x20
/* 803F1418 003E7198  7C 89 4C 30 */	srw r9, r4, r9
/* 803F141C 003E719C  7C 63 4B 78 */	or r3, r3, r9
/* 803F1420 003E71A0  7C 84 00 30 */	slw r4, r4, r0
.L_803F1424:
/* 803F1424 003E71A4  39 40 FF FF */	li r10, -0x1
/* 803F1428 003E71A8  30 E7 00 00 */	addic r7, r7, 0x0
.L_803F142C:
/* 803F142C 003E71AC  7C 84 21 14 */	adde r4, r4, r4
/* 803F1430 003E71B0  7C 63 19 14 */	adde r3, r3, r3
/* 803F1434 003E71B4  7D 08 41 14 */	adde r8, r8, r8
/* 803F1438 003E71B8  7C E7 39 14 */	adde r7, r7, r7
/* 803F143C 003E71BC  7C 06 40 10 */	subfc r0, r6, r8
/* 803F1440 003E71C0  7D 25 39 11 */	subfe. r9, r5, r7
/* 803F1444 003E71C4  41 80 00 10 */	blt .L_803F1454
/* 803F1448 003E71C8  7C 08 03 78 */	mr r8, r0
/* 803F144C 003E71CC  7D 27 4B 78 */	mr r7, r9
/* 803F1450 003E71D0  30 0A 00 01 */	addic r0, r10, 0x1
.L_803F1454:
/* 803F1454 003E71D4  42 00 FF D8 */	bdnz .L_803F142C
/* 803F1458 003E71D8  7C 84 21 14 */	adde r4, r4, r4
/* 803F145C 003E71DC  7C 63 19 14 */	adde r3, r3, r3
/* 803F1460 003E71E0  4E 80 00 20 */	blr
.L_803F1464:
/* 803F1464 003E71E4  38 80 00 00 */	li r4, 0x0
/* 803F1468 003E71E8  38 60 00 00 */	li r3, 0x0
/* 803F146C 003E71EC  4E 80 00 20 */	blr
.endfn __div2u

# .text:0x290 | 0x803F1470 | size: 0x138
.fn fn_803F1470, global
/* 803F1470 003E71F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F1474 003E71F4  54 69 00 01 */	clrrwi. r9, r3, 31
/* 803F1478 003E71F8  41 82 00 0C */	beq .L_803F1484
/* 803F147C 003E71FC  20 84 00 00 */	subfic r4, r4, 0x0
/* 803F1480 003E7200  7C 63 01 90 */	subfze r3, r3
.L_803F1484:
/* 803F1484 003E7204  91 21 00 08 */	stw r9, 0x8(r1)
/* 803F1488 003E7208  54 AA 00 01 */	clrrwi. r10, r5, 31
/* 803F148C 003E720C  41 82 00 0C */	beq .L_803F1498
/* 803F1490 003E7210  20 C6 00 00 */	subfic r6, r6, 0x0
/* 803F1494 003E7214  7C A5 01 90 */	subfze r5, r5
.L_803F1498:
/* 803F1498 003E7218  91 41 00 0C */	stw r10, 0xc(r1)
/* 803F149C 003E721C  2C 03 00 00 */	cmpwi r3, 0x0
/* 803F14A0 003E7220  7C 60 00 34 */	cntlzw r0, r3
/* 803F14A4 003E7224  7C 89 00 34 */	cntlzw r9, r4
/* 803F14A8 003E7228  40 82 00 08 */	bne .L_803F14B0
/* 803F14AC 003E722C  38 09 00 20 */	addi r0, r9, 0x20
.L_803F14B0:
/* 803F14B0 003E7230  2C 05 00 00 */	cmpwi r5, 0x0
/* 803F14B4 003E7234  7C A9 00 34 */	cntlzw r9, r5
/* 803F14B8 003E7238  7C CA 00 34 */	cntlzw r10, r6
/* 803F14BC 003E723C  40 82 00 08 */	bne .L_803F14C4
/* 803F14C0 003E7240  39 2A 00 20 */	addi r9, r10, 0x20
.L_803F14C4:
/* 803F14C4 003E7244  7C 00 48 00 */	cmpw r0, r9
/* 803F14C8 003E7248  21 40 00 40 */	subfic r10, r0, 0x40
/* 803F14CC 003E724C  41 81 00 CC */	bgt .L_803F1598
/* 803F14D0 003E7250  39 29 00 01 */	addi r9, r9, 0x1
/* 803F14D4 003E7254  21 29 00 40 */	subfic r9, r9, 0x40
/* 803F14D8 003E7258  7C 00 4A 14 */	add r0, r0, r9
/* 803F14DC 003E725C  7D 29 50 50 */	subf r9, r9, r10
/* 803F14E0 003E7260  7D 29 03 A6 */	mtctr r9
/* 803F14E4 003E7264  2C 09 00 20 */	cmpwi r9, 0x20
/* 803F14E8 003E7268  38 E9 FF E0 */	subi r7, r9, 0x20
/* 803F14EC 003E726C  41 80 00 10 */	blt .L_803F14FC
/* 803F14F0 003E7270  7C 68 3C 30 */	srw r8, r3, r7
/* 803F14F4 003E7274  38 E0 00 00 */	li r7, 0x0
/* 803F14F8 003E7278  48 00 00 18 */	b .L_803F1510
.L_803F14FC:
/* 803F14FC 003E727C  7C 88 4C 30 */	srw r8, r4, r9
/* 803F1500 003E7280  20 E9 00 20 */	subfic r7, r9, 0x20
/* 803F1504 003E7284  7C 67 38 30 */	slw r7, r3, r7
/* 803F1508 003E7288  7D 08 3B 78 */	or r8, r8, r7
/* 803F150C 003E728C  7C 67 4C 30 */	srw r7, r3, r9
.L_803F1510:
/* 803F1510 003E7290  2C 00 00 20 */	cmpwi r0, 0x20
/* 803F1514 003E7294  31 20 FF E0 */	subic r9, r0, 0x20
/* 803F1518 003E7298  41 80 00 10 */	blt .L_803F1528
/* 803F151C 003E729C  7C 83 48 30 */	slw r3, r4, r9
/* 803F1520 003E72A0  38 80 00 00 */	li r4, 0x0
/* 803F1524 003E72A4  48 00 00 18 */	b .L_803F153C
.L_803F1528:
/* 803F1528 003E72A8  7C 63 00 30 */	slw r3, r3, r0
/* 803F152C 003E72AC  21 20 00 20 */	subfic r9, r0, 0x20
/* 803F1530 003E72B0  7C 89 4C 30 */	srw r9, r4, r9
/* 803F1534 003E72B4  7C 63 4B 78 */	or r3, r3, r9
/* 803F1538 003E72B8  7C 84 00 30 */	slw r4, r4, r0
.L_803F153C:
/* 803F153C 003E72BC  39 40 FF FF */	li r10, -0x1
/* 803F1540 003E72C0  30 E7 00 00 */	addic r7, r7, 0x0
.L_803F1544:
/* 803F1544 003E72C4  7C 84 21 14 */	adde r4, r4, r4
/* 803F1548 003E72C8  7C 63 19 14 */	adde r3, r3, r3
/* 803F154C 003E72CC  7D 08 41 14 */	adde r8, r8, r8
/* 803F1550 003E72D0  7C E7 39 14 */	adde r7, r7, r7
/* 803F1554 003E72D4  7C 06 40 10 */	subfc r0, r6, r8
/* 803F1558 003E72D8  7D 25 39 11 */	subfe. r9, r5, r7
/* 803F155C 003E72DC  41 80 00 10 */	blt .L_803F156C
/* 803F1560 003E72E0  7C 08 03 78 */	mr r8, r0
/* 803F1564 003E72E4  7D 27 4B 78 */	mr r7, r9
/* 803F1568 003E72E8  30 0A 00 01 */	addic r0, r10, 0x1
.L_803F156C:
/* 803F156C 003E72EC  42 00 FF D8 */	bdnz .L_803F1544
/* 803F1570 003E72F0  7C 84 21 14 */	adde r4, r4, r4
/* 803F1574 003E72F4  7C 63 19 14 */	adde r3, r3, r3
/* 803F1578 003E72F8  81 21 00 08 */	lwz r9, 0x8(r1)
/* 803F157C 003E72FC  81 41 00 0C */	lwz r10, 0xc(r1)
/* 803F1580 003E7300  7D 27 52 79 */	xor. r7, r9, r10
/* 803F1584 003E7304  41 82 00 10 */	beq .L_803F1594
/* 803F1588 003E7308  2C 09 00 00 */	cmpwi r9, 0x0
/* 803F158C 003E730C  20 84 00 00 */	subfic r4, r4, 0x0
/* 803F1590 003E7310  7C 63 01 90 */	subfze r3, r3
.L_803F1594:
/* 803F1594 003E7314  48 00 00 0C */	b .L_803F15A0
.L_803F1598:
/* 803F1598 003E7318  38 80 00 00 */	li r4, 0x0
/* 803F159C 003E731C  38 60 00 00 */	li r3, 0x0
.L_803F15A0:
/* 803F15A0 003E7320  38 21 00 10 */	addi r1, r1, 0x10
/* 803F15A4 003E7324  4E 80 00 20 */	blr
.endfn fn_803F1470

# .text:0x3C8 | 0x803F15A8 | size: 0xE4
.fn __mod2u, global
/* 803F15A8 003E7328  2C 03 00 00 */	cmpwi r3, 0x0
/* 803F15AC 003E732C  7C 60 00 34 */	cntlzw r0, r3
/* 803F15B0 003E7330  7C 89 00 34 */	cntlzw r9, r4
/* 803F15B4 003E7334  40 82 00 08 */	bne .L_803F15BC
/* 803F15B8 003E7338  38 09 00 20 */	addi r0, r9, 0x20
.L_803F15BC:
/* 803F15BC 003E733C  2C 05 00 00 */	cmpwi r5, 0x0
/* 803F15C0 003E7340  7C A9 00 34 */	cntlzw r9, r5
/* 803F15C4 003E7344  7C CA 00 34 */	cntlzw r10, r6
/* 803F15C8 003E7348  40 82 00 08 */	bne .L_803F15D0
/* 803F15CC 003E734C  39 2A 00 20 */	addi r9, r10, 0x20
.L_803F15D0:
/* 803F15D0 003E7350  7C 00 48 00 */	cmpw r0, r9
/* 803F15D4 003E7354  21 40 00 40 */	subfic r10, r0, 0x40
/* 803F15D8 003E7358  41 81 00 B0 */	bgt .L_803F1688
/* 803F15DC 003E735C  39 29 00 01 */	addi r9, r9, 0x1
/* 803F15E0 003E7360  21 29 00 40 */	subfic r9, r9, 0x40
/* 803F15E4 003E7364  7C 00 4A 14 */	add r0, r0, r9
/* 803F15E8 003E7368  7D 29 50 50 */	subf r9, r9, r10
/* 803F15EC 003E736C  7D 29 03 A6 */	mtctr r9
/* 803F15F0 003E7370  2C 09 00 20 */	cmpwi r9, 0x20
/* 803F15F4 003E7374  38 E9 FF E0 */	subi r7, r9, 0x20
/* 803F15F8 003E7378  41 80 00 10 */	blt .L_803F1608
/* 803F15FC 003E737C  7C 68 3C 30 */	srw r8, r3, r7
/* 803F1600 003E7380  38 E0 00 00 */	li r7, 0x0
/* 803F1604 003E7384  48 00 00 18 */	b .L_803F161C
.L_803F1608:
/* 803F1608 003E7388  7C 88 4C 30 */	srw r8, r4, r9
/* 803F160C 003E738C  20 E9 00 20 */	subfic r7, r9, 0x20
/* 803F1610 003E7390  7C 67 38 30 */	slw r7, r3, r7
/* 803F1614 003E7394  7D 08 3B 78 */	or r8, r8, r7
/* 803F1618 003E7398  7C 67 4C 30 */	srw r7, r3, r9
.L_803F161C:
/* 803F161C 003E739C  2C 00 00 20 */	cmpwi r0, 0x20
/* 803F1620 003E73A0  31 20 FF E0 */	subic r9, r0, 0x20
/* 803F1624 003E73A4  41 80 00 10 */	blt .L_803F1634
/* 803F1628 003E73A8  7C 83 48 30 */	slw r3, r4, r9
/* 803F162C 003E73AC  38 80 00 00 */	li r4, 0x0
/* 803F1630 003E73B0  48 00 00 18 */	b .L_803F1648
.L_803F1634:
/* 803F1634 003E73B4  7C 63 00 30 */	slw r3, r3, r0
/* 803F1638 003E73B8  21 20 00 20 */	subfic r9, r0, 0x20
/* 803F163C 003E73BC  7C 89 4C 30 */	srw r9, r4, r9
/* 803F1640 003E73C0  7C 63 4B 78 */	or r3, r3, r9
/* 803F1644 003E73C4  7C 84 00 30 */	slw r4, r4, r0
.L_803F1648:
/* 803F1648 003E73C8  39 40 FF FF */	li r10, -0x1
/* 803F164C 003E73CC  30 E7 00 00 */	addic r7, r7, 0x0
.L_803F1650:
/* 803F1650 003E73D0  7C 84 21 14 */	adde r4, r4, r4
/* 803F1654 003E73D4  7C 63 19 14 */	adde r3, r3, r3
/* 803F1658 003E73D8  7D 08 41 14 */	adde r8, r8, r8
/* 803F165C 003E73DC  7C E7 39 14 */	adde r7, r7, r7
/* 803F1660 003E73E0  7C 06 40 10 */	subfc r0, r6, r8
/* 803F1664 003E73E4  7D 25 39 11 */	subfe. r9, r5, r7
/* 803F1668 003E73E8  41 80 00 10 */	blt .L_803F1678
/* 803F166C 003E73EC  7C 08 03 78 */	mr r8, r0
/* 803F1670 003E73F0  7D 27 4B 78 */	mr r7, r9
/* 803F1674 003E73F4  30 0A 00 01 */	addic r0, r10, 0x1
.L_803F1678:
/* 803F1678 003E73F8  42 00 FF D8 */	bdnz .L_803F1650
/* 803F167C 003E73FC  7D 04 43 78 */	mr r4, r8
/* 803F1680 003E7400  7C E3 3B 78 */	mr r3, r7
/* 803F1684 003E7404  4E 80 00 20 */	blr
.L_803F1688:
/* 803F1688 003E7408  4E 80 00 20 */	blr
.endfn __mod2u

# .text:0x4AC | 0x803F168C | size: 0x10C
.fn fn_803F168C, global
/* 803F168C 003E740C  2F 83 00 00 */	cmpwi cr7, r3, 0x0
/* 803F1690 003E7410  40 9C 00 0C */	bge cr7, .L_803F169C
/* 803F1694 003E7414  20 84 00 00 */	subfic r4, r4, 0x0
/* 803F1698 003E7418  7C 63 01 90 */	subfze r3, r3
.L_803F169C:
/* 803F169C 003E741C  2C 05 00 00 */	cmpwi r5, 0x0
/* 803F16A0 003E7420  40 80 00 0C */	bge .L_803F16AC
/* 803F16A4 003E7424  20 C6 00 00 */	subfic r6, r6, 0x0
/* 803F16A8 003E7428  7C A5 01 90 */	subfze r5, r5
.L_803F16AC:
/* 803F16AC 003E742C  2C 03 00 00 */	cmpwi r3, 0x0
/* 803F16B0 003E7430  7C 60 00 34 */	cntlzw r0, r3
/* 803F16B4 003E7434  7C 89 00 34 */	cntlzw r9, r4
/* 803F16B8 003E7438  40 82 00 08 */	bne .L_803F16C0
/* 803F16BC 003E743C  38 09 00 20 */	addi r0, r9, 0x20
.L_803F16C0:
/* 803F16C0 003E7440  2C 05 00 00 */	cmpwi r5, 0x0
/* 803F16C4 003E7444  7C A9 00 34 */	cntlzw r9, r5
/* 803F16C8 003E7448  7C CA 00 34 */	cntlzw r10, r6
/* 803F16CC 003E744C  40 82 00 08 */	bne .L_803F16D4
/* 803F16D0 003E7450  39 2A 00 20 */	addi r9, r10, 0x20
.L_803F16D4:
/* 803F16D4 003E7454  7C 00 48 00 */	cmpw r0, r9
/* 803F16D8 003E7458  21 40 00 40 */	subfic r10, r0, 0x40
/* 803F16DC 003E745C  41 81 00 AC */	bgt .L_803F1788
/* 803F16E0 003E7460  39 29 00 01 */	addi r9, r9, 0x1
/* 803F16E4 003E7464  21 29 00 40 */	subfic r9, r9, 0x40
/* 803F16E8 003E7468  7C 00 4A 14 */	add r0, r0, r9
/* 803F16EC 003E746C  7D 29 50 50 */	subf r9, r9, r10
/* 803F16F0 003E7470  7D 29 03 A6 */	mtctr r9
/* 803F16F4 003E7474  2C 09 00 20 */	cmpwi r9, 0x20
/* 803F16F8 003E7478  38 E9 FF E0 */	subi r7, r9, 0x20
/* 803F16FC 003E747C  41 80 00 10 */	blt .L_803F170C
/* 803F1700 003E7480  7C 68 3C 30 */	srw r8, r3, r7
/* 803F1704 003E7484  38 E0 00 00 */	li r7, 0x0
/* 803F1708 003E7488  48 00 00 18 */	b .L_803F1720
.L_803F170C:
/* 803F170C 003E748C  7C 88 4C 30 */	srw r8, r4, r9
/* 803F1710 003E7490  20 E9 00 20 */	subfic r7, r9, 0x20
/* 803F1714 003E7494  7C 67 38 30 */	slw r7, r3, r7
/* 803F1718 003E7498  7D 08 3B 78 */	or r8, r8, r7
/* 803F171C 003E749C  7C 67 4C 30 */	srw r7, r3, r9
.L_803F1720:
/* 803F1720 003E74A0  2C 00 00 20 */	cmpwi r0, 0x20
/* 803F1724 003E74A4  31 20 FF E0 */	subic r9, r0, 0x20
/* 803F1728 003E74A8  41 80 00 10 */	blt .L_803F1738
/* 803F172C 003E74AC  7C 83 48 30 */	slw r3, r4, r9
/* 803F1730 003E74B0  38 80 00 00 */	li r4, 0x0
/* 803F1734 003E74B4  48 00 00 18 */	b .L_803F174C
.L_803F1738:
/* 803F1738 003E74B8  7C 63 00 30 */	slw r3, r3, r0
/* 803F173C 003E74BC  21 20 00 20 */	subfic r9, r0, 0x20
/* 803F1740 003E74C0  7C 89 4C 30 */	srw r9, r4, r9
/* 803F1744 003E74C4  7C 63 4B 78 */	or r3, r3, r9
/* 803F1748 003E74C8  7C 84 00 30 */	slw r4, r4, r0
.L_803F174C:
/* 803F174C 003E74CC  39 40 FF FF */	li r10, -0x1
/* 803F1750 003E74D0  30 E7 00 00 */	addic r7, r7, 0x0
.L_803F1754:
/* 803F1754 003E74D4  7C 84 21 14 */	adde r4, r4, r4
/* 803F1758 003E74D8  7C 63 19 14 */	adde r3, r3, r3
/* 803F175C 003E74DC  7D 08 41 14 */	adde r8, r8, r8
/* 803F1760 003E74E0  7C E7 39 14 */	adde r7, r7, r7
/* 803F1764 003E74E4  7C 06 40 10 */	subfc r0, r6, r8
/* 803F1768 003E74E8  7D 25 39 11 */	subfe. r9, r5, r7
/* 803F176C 003E74EC  41 80 00 10 */	blt .L_803F177C
/* 803F1770 003E74F0  7C 08 03 78 */	mr r8, r0
/* 803F1774 003E74F4  7D 27 4B 78 */	mr r7, r9
/* 803F1778 003E74F8  30 0A 00 01 */	addic r0, r10, 0x1
.L_803F177C:
/* 803F177C 003E74FC  42 00 FF D8 */	bdnz .L_803F1754
/* 803F1780 003E7500  7D 04 43 78 */	mr r4, r8
/* 803F1784 003E7504  7C E3 3B 78 */	mr r3, r7
.L_803F1788:
/* 803F1788 003E7508  40 9C 00 0C */	bge cr7, .L_803F1794
/* 803F178C 003E750C  20 84 00 00 */	subfic r4, r4, 0x0
/* 803F1790 003E7510  7C 63 01 90 */	subfze r3, r3
.L_803F1794:
/* 803F1794 003E7514  4E 80 00 20 */	blr
.endfn fn_803F168C

# .text:0x5B8 | 0x803F1798 | size: 0x24
.fn fn_803F1798, global
/* 803F1798 003E7518  21 05 00 20 */	subfic r8, r5, 0x20
/* 803F179C 003E751C  31 25 FF E0 */	subic r9, r5, 0x20
/* 803F17A0 003E7520  7C 63 28 30 */	slw r3, r3, r5
/* 803F17A4 003E7524  7C 8A 44 30 */	srw r10, r4, r8
/* 803F17A8 003E7528  7C 63 53 78 */	or r3, r3, r10
/* 803F17AC 003E752C  7C 8A 48 30 */	slw r10, r4, r9
/* 803F17B0 003E7530  7C 63 53 78 */	or r3, r3, r10
/* 803F17B4 003E7534  7C 84 28 30 */	slw r4, r4, r5
/* 803F17B8 003E7538  4E 80 00 20 */	blr
.endfn fn_803F1798

# .text:0x5DC | 0x803F17BC | size: 0x24
.fn fn_803F17BC, global
/* 803F17BC 003E753C  21 05 00 20 */	subfic r8, r5, 0x20
/* 803F17C0 003E7540  31 25 FF E0 */	subic r9, r5, 0x20
/* 803F17C4 003E7544  7C 84 2C 30 */	srw r4, r4, r5
/* 803F17C8 003E7548  7C 6A 40 30 */	slw r10, r3, r8
/* 803F17CC 003E754C  7C 84 53 78 */	or r4, r4, r10
/* 803F17D0 003E7550  7C 6A 4C 30 */	srw r10, r3, r9
/* 803F17D4 003E7554  7C 84 53 78 */	or r4, r4, r10
/* 803F17D8 003E7558  7C 63 2C 30 */	srw r3, r3, r5
/* 803F17DC 003E755C  4E 80 00 20 */	blr
.endfn fn_803F17BC

# .text:0x600 | 0x803F17E0 | size: 0xB4
.fn fn_803F17E0, global
/* 803F17E0 003E7560  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F17E4 003E7564  54 65 00 01 */	clrrwi. r5, r3, 31
/* 803F17E8 003E7568  41 82 00 0C */	beq .L_803F17F4
/* 803F17EC 003E756C  20 84 00 00 */	subfic r4, r4, 0x0
/* 803F17F0 003E7570  7C 63 01 90 */	subfze r3, r3
.L_803F17F4:
/* 803F17F4 003E7574  7C 67 23 79 */	or. r7, r3, r4
/* 803F17F8 003E7578  38 C0 00 00 */	li r6, 0x0
/* 803F17FC 003E757C  41 82 00 80 */	beq .L_803F187C
/* 803F1800 003E7580  7C 67 00 34 */	cntlzw r7, r3
/* 803F1804 003E7584  7C 88 00 34 */	cntlzw r8, r4
/* 803F1808 003E7588  54 E9 D0 08 */	extlwi r9, r7, 5, 26
/* 803F180C 003E758C  7D 29 FE 70 */	srawi r9, r9, 31
/* 803F1810 003E7590  7D 29 40 38 */	and r9, r9, r8
/* 803F1814 003E7594  7C E7 4A 14 */	add r7, r7, r9
/* 803F1818 003E7598  21 07 00 20 */	subfic r8, r7, 0x20
/* 803F181C 003E759C  31 27 FF E0 */	subic r9, r7, 0x20
/* 803F1820 003E75A0  7C 63 38 30 */	slw r3, r3, r7
/* 803F1824 003E75A4  7C 8A 44 30 */	srw r10, r4, r8
/* 803F1828 003E75A8  7C 63 53 78 */	or r3, r3, r10
/* 803F182C 003E75AC  7C 8A 48 30 */	slw r10, r4, r9
/* 803F1830 003E75B0  7C 63 53 78 */	or r3, r3, r10
/* 803F1834 003E75B4  7C 84 38 30 */	slw r4, r4, r7
/* 803F1838 003E75B8  7C C7 30 50 */	subf r6, r7, r6
/* 803F183C 003E75BC  54 87 05 7E */	clrlwi r7, r4, 21
/* 803F1840 003E75C0  2C 07 04 00 */	cmpwi r7, 0x400
/* 803F1844 003E75C4  38 C6 04 3E */	addi r6, r6, 0x43e
/* 803F1848 003E75C8  41 80 00 1C */	blt .L_803F1864
/* 803F184C 003E75CC  41 81 00 0C */	bgt .L_803F1858
/* 803F1850 003E75D0  54 87 05 29 */	rlwinm. r7, r4, 0, 20, 20
/* 803F1854 003E75D4  41 82 00 10 */	beq .L_803F1864
.L_803F1858:
/* 803F1858 003E75D8  30 84 08 00 */	addic r4, r4, 0x800
/* 803F185C 003E75DC  7C 63 01 94 */	addze r3, r3
/* 803F1860 003E75E0  7C C6 01 94 */	addze r6, r6
.L_803F1864:
/* 803F1864 003E75E4  54 84 A8 3E */	rotrwi r4, r4, 11
/* 803F1868 003E75E8  50 64 A8 14 */	rlwimi r4, r3, 21, 0, 10
/* 803F186C 003E75EC  54 63 AB 3E */	extrwi r3, r3, 20, 1
/* 803F1870 003E75F0  54 C6 A0 16 */	slwi r6, r6, 20
/* 803F1874 003E75F4  7C C3 1B 78 */	or r3, r6, r3
/* 803F1878 003E75F8  7C A3 1B 78 */	or r3, r5, r3
.L_803F187C:
/* 803F187C 003E75FC  90 61 00 08 */	stw r3, 0x8(r1)
/* 803F1880 003E7600  90 81 00 0C */	stw r4, 0xc(r1)
/* 803F1884 003E7604  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 803F1888 003E7608  FC 20 08 18 */	frsp f1, f1
/* 803F188C 003E760C  38 21 00 10 */	addi r1, r1, 0x10
/* 803F1890 003E7610  4E 80 00 20 */	blr
.endfn fn_803F17E0

# .text:0x6B4 | 0x803F1894 | size: 0xCC
.fn fn_803F1894, global
/* 803F1894 003E7614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F1898 003E7618  D8 21 00 08 */	stfd f1, 0x8(r1)
/* 803F189C 003E761C  80 61 00 08 */	lwz r3, 0x8(r1)
/* 803F18A0 003E7620  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803F18A4 003E7624  54 65 65 7E */	extrwi r5, r3, 11, 1
/* 803F18A8 003E7628  28 05 03 FF */	cmplwi r5, 0x3ff
/* 803F18AC 003E762C  40 80 00 10 */	bge .L_803F18BC
/* 803F18B0 003E7630  38 60 00 00 */	li r3, 0x0
/* 803F18B4 003E7634  38 80 00 00 */	li r4, 0x0
/* 803F18B8 003E7638  48 00 00 A0 */	b .L_803F1958
.L_803F18BC:
/* 803F18BC 003E763C  7C 66 1B 78 */	mr r6, r3
/* 803F18C0 003E7640  54 63 03 3E */	clrlwi r3, r3, 12
/* 803F18C4 003E7644  64 63 00 10 */	oris r3, r3, 0x10
/* 803F18C8 003E7648  38 A5 FB CD */	subi r5, r5, 0x433
/* 803F18CC 003E764C  2C 05 00 00 */	cmpwi r5, 0x0
/* 803F18D0 003E7650  40 80 00 2C */	bge .L_803F18FC
/* 803F18D4 003E7654  7C A5 00 D0 */	neg r5, r5
/* 803F18D8 003E7658  21 05 00 20 */	subfic r8, r5, 0x20
/* 803F18DC 003E765C  31 25 FF E0 */	subic r9, r5, 0x20
/* 803F18E0 003E7660  7C 84 2C 30 */	srw r4, r4, r5
/* 803F18E4 003E7664  7C 6A 40 30 */	slw r10, r3, r8
/* 803F18E8 003E7668  7C 84 53 78 */	or r4, r4, r10
/* 803F18EC 003E766C  7C 6A 4C 30 */	srw r10, r3, r9
/* 803F18F0 003E7670  7C 84 53 78 */	or r4, r4, r10
/* 803F18F4 003E7674  7C 63 2C 30 */	srw r3, r3, r5
/* 803F18F8 003E7678  48 00 00 50 */	b .L_803F1948
.L_803F18FC:
/* 803F18FC 003E767C  2C 05 00 0A */	cmpwi r5, 0xa
/* 803F1900 003E7680  40 A1 00 28 */	ble+ .L_803F1928
/* 803F1904 003E7684  54 C6 00 01 */	clrrwi. r6, r6, 31
/* 803F1908 003E7688  41 82 00 10 */	beq .L_803F1918
/* 803F190C 003E768C  3C 60 80 00 */	lis r3, 0x8000
/* 803F1910 003E7690  38 80 00 00 */	li r4, 0x0
/* 803F1914 003E7694  48 00 00 44 */	b .L_803F1958
.L_803F1918:
/* 803F1918 003E7698  3C 60 7F FF */	lis r3, 0x7fff
/* 803F191C 003E769C  60 63 FF FF */	ori r3, r3, 0xffff
/* 803F1920 003E76A0  38 80 FF FF */	li r4, -0x1
/* 803F1924 003E76A4  48 00 00 34 */	b .L_803F1958
.L_803F1928:
/* 803F1928 003E76A8  21 05 00 20 */	subfic r8, r5, 0x20
/* 803F192C 003E76AC  31 25 FF E0 */	subic r9, r5, 0x20
/* 803F1930 003E76B0  7C 63 28 30 */	slw r3, r3, r5
/* 803F1934 003E76B4  7C 8A 44 30 */	srw r10, r4, r8
/* 803F1938 003E76B8  7C 63 53 78 */	or r3, r3, r10
/* 803F193C 003E76BC  7C 8A 48 30 */	slw r10, r4, r9
/* 803F1940 003E76C0  7C 63 53 78 */	or r3, r3, r10
/* 803F1944 003E76C4  7C 84 28 30 */	slw r4, r4, r5
.L_803F1948:
/* 803F1948 003E76C8  54 C6 00 01 */	clrrwi. r6, r6, 31
/* 803F194C 003E76CC  41 82 00 0C */	beq .L_803F1958
/* 803F1950 003E76D0  20 84 00 00 */	subfic r4, r4, 0x0
/* 803F1954 003E76D4  7C 63 01 90 */	subfze r3, r3
.L_803F1958:
/* 803F1958 003E76D8  38 21 00 10 */	addi r1, r1, 0x10
/* 803F195C 003E76DC  4E 80 00 20 */	blr
.endfn fn_803F1894

# .text:0x780 | 0x803F1960 | size: 0xA8
.fn fn_803F1960, global
/* 803F1960 003E76E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F1964 003E76E4  D8 21 00 08 */	stfd f1, 0x8(r1)
/* 803F1968 003E76E8  80 61 00 08 */	lwz r3, 0x8(r1)
/* 803F196C 003E76EC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803F1970 003E76F0  54 65 65 7E */	extrwi r5, r3, 11, 1
/* 803F1974 003E76F4  28 05 03 FF */	cmplwi r5, 0x3ff
/* 803F1978 003E76F8  40 80 00 10 */	bge .L_803F1988
.L_803F197C:
/* 803F197C 003E76FC  38 60 00 00 */	li r3, 0x0
/* 803F1980 003E7700  38 80 00 00 */	li r4, 0x0
/* 803F1984 003E7704  48 00 00 7C */	b .L_803F1A00
.L_803F1988:
/* 803F1988 003E7708  54 66 00 01 */	clrrwi. r6, r3, 31
/* 803F198C 003E770C  40 82 FF F0 */	bne .L_803F197C
/* 803F1990 003E7710  54 63 03 3E */	clrlwi r3, r3, 12
/* 803F1994 003E7714  64 63 00 10 */	oris r3, r3, 0x10
/* 803F1998 003E7718  38 A5 FB CD */	subi r5, r5, 0x433
/* 803F199C 003E771C  2C 05 00 00 */	cmpwi r5, 0x0
/* 803F19A0 003E7720  40 80 00 2C */	bge .L_803F19CC
/* 803F19A4 003E7724  7C A5 00 D0 */	neg r5, r5
/* 803F19A8 003E7728  21 05 00 20 */	subfic r8, r5, 0x20
/* 803F19AC 003E772C  31 25 FF E0 */	subic r9, r5, 0x20
/* 803F19B0 003E7730  7C 84 2C 30 */	srw r4, r4, r5
/* 803F19B4 003E7734  7C 6A 40 30 */	slw r10, r3, r8
/* 803F19B8 003E7738  7C 84 53 78 */	or r4, r4, r10
/* 803F19BC 003E773C  7C 6A 4C 30 */	srw r10, r3, r9
/* 803F19C0 003E7740  7C 84 53 78 */	or r4, r4, r10
/* 803F19C4 003E7744  7C 63 2C 30 */	srw r3, r3, r5
/* 803F19C8 003E7748  48 00 00 38 */	b .L_803F1A00
.L_803F19CC:
/* 803F19CC 003E774C  2C 05 00 0B */	cmpwi r5, 0xb
/* 803F19D0 003E7750  40 A1 00 10 */	ble+ .L_803F19E0
/* 803F19D4 003E7754  38 60 FF FF */	li r3, -0x1
/* 803F19D8 003E7758  38 80 FF FF */	li r4, -0x1
/* 803F19DC 003E775C  48 00 00 24 */	b .L_803F1A00
.L_803F19E0:
/* 803F19E0 003E7760  21 05 00 20 */	subfic r8, r5, 0x20
/* 803F19E4 003E7764  31 25 FF E0 */	subic r9, r5, 0x20
/* 803F19E8 003E7768  7C 63 28 30 */	slw r3, r3, r5
/* 803F19EC 003E776C  7C 8A 44 30 */	srw r10, r4, r8
/* 803F19F0 003E7770  7C 63 53 78 */	or r3, r3, r10
/* 803F19F4 003E7774  7C 8A 48 30 */	slw r10, r4, r9
/* 803F19F8 003E7778  7C 63 53 78 */	or r3, r3, r10
/* 803F19FC 003E777C  7C 84 28 30 */	slw r4, r4, r5
.L_803F1A00:
/* 803F1A00 003E7780  38 21 00 10 */	addi r1, r1, 0x10
/* 803F1A04 003E7784  4E 80 00 20 */	blr
.endfn fn_803F1960
