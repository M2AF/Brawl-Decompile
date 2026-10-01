// m2c draft (machine output, NOT source): rewrite by hand against the headers.
typedef struct CameraController {
    /* 0x000 */ char pad0[0x3C];
    /* 0x03C */ void *unk3C;                        /* inferred */
    /* 0x040 */ char pad40[0xAB];                   /* maybe part of unk3C[0x2B]? */
    /* 0x0EB */ u8 unkEB;                           /* inferred */
    /* 0x0EC */ char padEC[0x14C];                  /* maybe part of unkEB[0x14D]? */
    /* 0x238 */ f32 unk238;                         /* inferred */
    /* 0x23C */ f32 unk23C;                         /* inferred */
    /* 0x240 */ f32 unk240;                         /* inferred */
    /* 0x244 */ f32 unk244;                         /* inferred */
    /* 0x248 */ f32 unk248;                         /* inferred */
    /* 0x24C */ f32 unk24C;                         /* inferred */
} CameraController;                                 /* size >= 0x250 */

typedef struct Ground {
    /* 0x00 */ char pad0[0x3C];
    /* 0x3C */ void *unk3C;                         /* inferred */
} Ground;                                           /* size >= 0x40 */

typedef struct Stage {
    /* 0x000 */ char pad0[0x3C];
    /* 0x03C */ void *unk3C;                        /* inferred */
    /* 0x040 */ char pad40[0x5C];                   /* maybe part of unk3C[0x18]? */
    /* 0x09C */ s32 unk9C;                          /* inferred */
    /* 0x0A0 */ char padA0[0x1C];                   /* maybe part of unk9C[8]? */
    /* 0x0BC */ s32 unkBC;                          /* inferred */
    /* 0x0C0 */ char padC0[0xE0];                   /* maybe part of unkBC[0x39]? */
    /* 0x1A0 */ gfArchive *unk1A0;                  /* inferred */
    /* 0x1A4 */ char pad1A4[0x34];                  /* maybe part of unk1A0[0xE]? */
    /* 0x1D8 */ ? unk1D8;                           /* inferred */
    /* 0x1D8 */ char pad1D8[0x60];
    /* 0x238 */ ? unk238;                           /* inferred */
    /* 0x238 */ char pad238[0x20];
    /* 0x258 */ ? unk258;                           /* inferred */
    /* 0x258 */ char pad258[2];
    /* 0x25A */ ? unk25A;                           /* inferred */
    /* 0x25A */ char pad25A[1];
    /* 0x25B */ ? unk25B;                           /* inferred */
    /* 0x25B */ char pad25B[1];
    /* 0x25C */ ? unk25C;                           /* inferred */
    /* 0x25C */ char pad25C[0x88];
    /* 0x2E4 */ ? unk2E4;                           /* inferred */
    /* 0x2E4 */ char pad2E4[8];
    /* 0x2EC */ ? unk2EC;                           /* inferred */
    /* 0x2EC */ char pad2EC[1];
    /* 0x2ED */ ? unk2ED;                           /* inferred */
    /* 0x2ED */ char pad2ED[1];
    /* 0x2EE */ ? unk2EE;                           /* inferred */
    /* 0x2EE */ char pad2EE[1];
} Stage;                                            /* size >= 0x2EF */

typedef struct grGimmickBeltConveyorData {
    /* 0x00 */ s32 unk0;                            /* inferred */
    /* 0x04 */ char pad4[0x14];                     /* maybe part of unk0[6]? */
    /* 0x18 */ f32 unk18;                           /* inferred */
    /* 0x1C */ f32 unk1C;                           /* inferred */
    /* 0x20 */ f32 unk20;                           /* inferred */
    /* 0x24 */ f32 unk24;                           /* inferred */
    /* 0x28 */ f32 unk28;                           /* inferred */
    /* 0x2C */ f32 unk2C;                           /* inferred */
    /* 0x30 */ f32 unk30;                           /* inferred */
    /* 0x34 */ f32 unk34;                           /* inferred */
    /* 0x38 */ s8 unk38;                            /* inferred */
} grGimmickBeltConveyorData;                        /* size >= 0x39 */

typedef struct nw4r::math {
    /* 0x000 */ char pad0[0x148];
    /* 0x148 */ f32 unk148;                         /* inferred */
    /* 0x14C */ f32 unk14C;                         /* inferred */
    /* 0x150 */ f32 unk150;                         /* inferred */
    /* 0x154 */ f32 unk154;                         /* inferred */
} nw4r::math;                                       /* size >= 0x158 */

typedef struct stClassInfo {
    /* 0x0 */ ? *unk0;                              /* inferred */
} stClassInfo;                                      /* size >= 0x4 */

typedef struct stCommonGimmick {
    /* 0x000 */ char pad0[0x3C];
    /* 0x03C */ ? *unk3C;                           /* inferred */
    /* 0x040 */ char pad40[0x220];                  /* maybe part of unk3C[0x89]? */
    /* 0x260 */ ? unk260;                           /* inferred */
    /* 0x260 */ char pad260[0x98];
    /* 0x2F8 */ void *unk2F8;                       /* inferred */
    /* 0x2FC */ void *unk2FC;                       /* inferred */
} stCommonGimmick;                                  /* size >= 0x300 */

typedef struct stMelee {
    /* 0x000 */ char pad0[0x3C];
    /* 0x03C */ ? *unk3C;                           /* inferred */
    /* 0x040 */ char pad40[0x198];                  /* maybe part of unk3C[0x67]? */
    /* 0x1D8 */ ? unk1D8;                           /* inferred */
    /* 0x1D8 */ char pad1D8[0x60];
    /* 0x238 */ ? unk238;                           /* inferred */
    /* 0x238 */ char pad238[0x18];
    /* 0x250 */ s8 unk250;                          /* inferred */
    /* 0x251 */ char pad251[3];                     /* maybe part of unk250[4]? */
    /* 0x254 */ f32 unk254;                         /* inferred */
    /* 0x258 */ s8 unk258;                          /* inferred */
    /* 0x259 */ s8 unk259;                          /* inferred */
    /* 0x25A */ s8 unk25A;                          /* inferred */
    /* 0x25B */ s8 unk25B;                          /* inferred */
    /* 0x25C */ s8 unk25C;                          /* inferred */
    /* 0x25D */ char pad25D[3];                     /* maybe part of unk25C[4]? */
    /* 0x260 */ ? unk260;                           /* inferred */
    /* 0x260 */ char pad260[8];
    /* 0x268 */ s32 unk268;                         /* inferred */
    /* 0x26C */ char pad26C[0x78];                  /* maybe part of unk268[0x1F]? */
    /* 0x2E4 */ s8 unk2E4;                          /* inferred */
    /* 0x2E5 */ s8 unk2E5;                          /* inferred */
    /* 0x2E6 */ char pad2E6[2];                     /* maybe part of unk2E5[3]? */
    /* 0x2E8 */ f32 unk2E8;                         /* inferred */
    /* 0x2EC */ s8 unk2EC;                          /* inferred */
    /* 0x2ED */ s8 unk2ED;                          /* inferred */
    /* 0x2EE */ s8 unk2EE;                          /* inferred */
    /* 0x2EF */ char pad2EF[1];
    /* 0x2F0 */ s32 unk2F0;                         /* inferred */
    /* 0x2F4 */ s32 unk2F4;                         /* inferred */
    /* 0x2F8 */ s32 unk2F8;                         /* inferred */
    /* 0x2FC */ s32 unk2FC;                         /* inferred */
} stMelee;                                          /* size >= 0x300 */

nw4r::math *CosFIdx__Q24nw4r4mathFf(nw4r::math *this, f32 arg0); /* extern */
? SinFIdx__Q24nw4r4mathFf(nw4r::math *this, f32 arg0); /* extern */
void *__ct__11stClassInfoFv(stClassInfo *this);     /* extern */
void *__ct__7stMeleeFPCcQ26Stages11srStageKind(stMelee *this, s8 *arg0, Stages::srStageKind arg1); /* extern */
? __dl__FPv(void *arg0);                            /* extern */
void *__dt__11stClassInfoFv(stClassInfo *this, s16 destroyFlag); /* extern */
void *__dt__7stMeleeFv(stMelee *this, s16 destroyFlag); /* extern */
grGimmickBeltConveyorData *__nw__FUlQ25Heaps8HeapType(u32 arg0, Heaps::HeapType arg1); /* extern */
? __register_global_object(stClassInfo *, stClassInfo *(*)(stClassInfo *, s32), ? *); /* extern */
? addGround__5StageFP6Ground(Stage *this, Ground *arg0); /* extern */
? createCollision__5StageFP9gfArchiveiP6Ground(Stage *this, gfArchive *arg0, s32 arg1, Ground *arg2); /* extern */
? createStagePositions__5StageFPQ34nw4r3g3d7ResFile(Stage *this, nw4r::g3d::ResFile *arg0); /* extern */
? createStagePositions__5StageFv(Stage *this);      /* extern */
stTrigger *createTrigger__12stTriggerMngFQ27Gimmick8AreaKindi(stTriggerMng *this, Gimmick::AreaKind arg0, s32 arg1); /* extern */
Ground *fn_78_1684(?, ? *, ? *);                    /* extern */
Ground *fn_78_1828(?, ? *, ? *);                    /* extern */
Ground *fn_78_1DA8(?, ? *, ? *);                    /* extern */
Ground *fn_78_26D8(?, s8 *, s8 *);                  /* extern */
Ground *fn_78_2CAC(?, s8 *, s8 *);                  /* extern */
Ground *fn_78_37EC(?, ? *, ? *);                    /* extern */
Ground *fn_78_7B50(?, s8 *, s8 *);                  /* extern */
? fn_8009ED40(? *, ?, ?);                           /* extern */
? fn_8009EE60(? *, ?);                              /* extern */
? fn_8009EF8C(void *, f32 *, f32, f32, f32, f32);   /* extern */
? fn_8009F1FC(? *);                                 /* extern */
nw4r::g3d::ResFileData *getData__9gfArchiveF11ARCNodeTypeiUs(gfArchive *this, ARCNodeType arg0, s32 arg1, u16 arg2); /* extern */
nw4r::math *getInstance__16CameraControllerFv(CameraController *this); /* extern */
? initPosPokeTrainer__5StageFii(Stage *this, s32 arg0, s32 arg1); /* extern */
? loadStageAttrParam__5StageFP9gfArchivei(Stage *this, gfArchive *arg0, s32 arg1); /* extern */
? memset(? *, ?, ?);                                /* extern */
f32 randf__Fv();                                    /* extern */
? registScnAnim__5StageFPQ34nw4r3g3d11ResFileDataUl(Stage *this, nw4r::g3d::ResFileData *arg0, u32 arg1); /* extern */
? releaseArchive__15stCommonGimmickFv(stCommonGimmick *this); /* extern */
? setBeltConveyorTrigger__9stTriggerFP25grGimmickBeltConveyorData(stTrigger *this, grGimmickBeltConveyorData *arg0); /* extern */
? setClassInfo__11stClassInfoFQ26Stages11srStageKindP11stClassInfo(stClassInfo *this, Stages::srStageKind arg0, stClassInfo *arg1); /* extern */
? testStageDataInit__5StageFP9gfArchiveii(Stage *this, gfArchive *arg0, s32 arg1, s32 arg2); /* extern */
? testStageParamInit__5StageFP9gfArchivei(Stage *this, gfArchive *arg0, s32 arg1); /* extern */
stClassInfo *fn_78_15D8(stClassInfo *arg0, s32 arg1); /* static */
stMelee *fn_78_A4(stMelee *arg0);                   /* static */
extern void *g_cmAIController;
extern stTriggerMng *g_stTriggerMng;
static s8 lbl_78_data_0[0xA] = "stDxOnett";
static ? lbl_78_data_C;                             /* unable to generate initializer: unknown type */
static ? lbl_78_data_1C;                            /* unable to generate initializer: unknown type */
static ? lbl_78_data_20;                            /* unable to generate initializer: unknown type */
static ? lbl_78_data_30;                            /* unable to generate initializer: unknown type */
static ? lbl_78_data_184;                           /* unable to generate initializer: unknown type */
static ? lbl_78_data_190;                           /* unable to generate initializer: unknown type */
static ? lbl_78_data_1A4;                           /* unable to generate initializer: unknown type */
static ? lbl_78_data_1BC;                           /* unable to generate initializer: unknown type */
static ? lbl_78_data_1D0;                           /* unable to generate initializer: unknown type */
static ? lbl_78_data_4E8;                           /* unable to generate initializer: unknown type */
static ? lbl_78_bss_8;
static stClassInfo lbl_78_bss_14;

void fn_78_70(void) {
    if (__nw__FUlQ25Heaps8HeapType(0x300U, (Heaps::HeapType) 0xF) != NULL) {
        fn_78_A4();
    }
}

stMelee *fn_78_A4(stMelee *arg0) {
    __ct__7stMeleeFPCcQ26Stages11srStageKind(arg0, "stDxOnett", (Stages::srStageKind) 0x2C);
    arg0->unk3C = &lbl_78_data_1D0;
    fn_8009ED40(&arg0->unk260, 0, 1);
    memset(&arg0->unk1D8, 0, 0x60);
    memset(&arg0->unk238, 0, 0x18);
    arg0->unk258 = 4;
    arg0->unk250 = 0;
    arg0->unk254 = 0.0f;
    arg0->unk259 = 4;
    arg0->unk25A = 4;
    arg0->unk25B = 2;
    arg0->unk25C = 2;
    fn_8009F1FC(&arg0->unk260);
    arg0->unk2E4 = 2;
    arg0->unk268 = (arg0->unk268 & ~0xE0000000) | 0x20000000;
    arg0->unk2E5 = 0;
    arg0->unk2E8 = 0.0f;
    arg0->unk2EC = 0;
    arg0->unk2ED = 0;
    arg0->unk2EE = 0;
    arg0->unk2F0 = 0;
    arg0->unk2F4 = 0;
    arg0->unk2F8 = 0;
    arg0->unk2FC = 0;
    return arg0;
}

stCommonGimmick *fn_78_1A8(stCommonGimmick *arg0, s32 arg1) {
    void *temp_r0;
    void *temp_r3;

    if (arg0 != NULL) {
        temp_r0 = arg0->unk2F8;
        arg0->unk3C = &lbl_78_data_1D0;
        if (temp_r0 != NULL) {
            __dl__FPv(temp_r0);
        }
        temp_r3 = arg0->unk2FC;
        if (temp_r3 != NULL) {
            __dl__FPv(temp_r3);
        }
        releaseArchive__15stCommonGimmickFv(arg0);
        fn_8009EE60(&arg0->unk260, -1);
        __dt__7stMeleeFv((stMelee *) arg0, 0);
        if (arg1 > 0) {
            __dl__FPv(arg0);
        }
    }
    return arg0;
}

s32 fn_78_248(void) {
    return 1;
}

void fn_78_250(Stage *arg0) {
    nw4r::g3d::ResFileData *sp8;
    nw4r::g3d::ResFileData *temp_r3;

    testStageParamInit__5StageFP9gfArchivei(arg0, arg0->unk1A0, 0xA);
    testStageDataInit__5StageFP9gfArchiveii(arg0, arg0->unk1A0, 0x14, 0x4C);
    arg0->unk3C->unk21C(arg0, 0);
    arg0->unk3C->unk220(arg0, 1);
    arg0->unk3C->unk224(arg0, 2);
    arg0->unk3C->unk224(arg0, 3);
    arg0->unk3C->unk228(arg0, 4);
    arg0->unk3C->unk228(arg0, 5);
    createCollision__5StageFP9gfArchiveiP6Ground(arg0, arg0->unk1A0, 2, NULL);
    arg0->unk3C->unk22C(arg0, 6);
    arg0->unk3C->unk22C(arg0, 7);
    arg0->unk3C->unk22C(arg0, 8);
    arg0->unk3C->unk22C(arg0, 9);
    arg0->unk3C->unk230(arg0, 0xA);
    arg0->unk3C->unk234(arg0, 0xB);
    arg0->unk3C->unk238(arg0);
    arg0->unk3C->unkC4(arg0);
    temp_r3 = getData__9gfArchiveF11ARCNodeTypeiUs(arg0->unk1A0, (ARCNodeType) 2, 0x64, 0xFFFEU);
    if (temp_r3 != NULL) {
        sp8 = temp_r3;
        createStagePositions__5StageFPQ34nw4r3g3d7ResFile(arg0, (nw4r::g3d::ResFile *) &sp8);
    } else {
        createStagePositions__5StageFv(arg0);
    }
    arg0->unk3C->unk1F4(arg0);
    loadStageAttrParam__5StageFP9gfArchivei(arg0, arg0->unk1A0, 0x1E);
    registScnAnim__5StageFPQ34nw4r3g3d11ResFileDataUl(arg0, getData__9gfArchiveF11ARCNodeTypeiUs(arg0->unk1A0, (ARCNodeType) 5, 0, 0xFFFEU), 0U);
    initPosPokeTrainer__5StageFii(arg0, 1, 0);
    arg0->unk3C->unk68(arg0, arg0->unk1A0, 0x65, "PokeTrainer00", arg0->unkBC, 0);
    g_cmAIController->unk94 = (u8) (g_cmAIController->unk94 | 4);
    g_cmAIController->unk184 = 0.30543262f;
}

void fn_78_4E0(Stage *arg0, s32 arg1) {
    Ground *var_r31;

    if (arg1 != 1) {
        var_r31 = NULL;
    } else {
        var_r31 = fn_78_1684(1, &lbl_78_data_1C, "grDxOnettCloud");
    }
    if (var_r31 != NULL) {
        addGround__5StageFP6Ground(arg0, var_r31);
        var_r31->unk3C->unk9C(var_r31, arg0->unk1A0, 0, 0);
        var_r31->unk3C->unkA4(var_r31, arg0->unk9C);
    }
}

void fn_78_58C(void *arg0, s32 arg1) {
    arg0->unk60 = arg1;
}

void fn_78_594(Stage *arg0, s32 arg1) {
    Ground *var_r31;

    if (arg1 != 0) {
        var_r31 = NULL;
    } else {
        var_r31 = fn_78_1828(0, &lbl_78_data_1C, &lbl_78_data_30);
    }
    if (var_r31 != NULL) {
        addGround__5StageFP6Ground(arg0, var_r31);
        var_r31->unk3C->unk9C(var_r31, arg0->unk1A0, 0, 0);
        var_r31->unk3C->unkA4(var_r31, arg0->unk9C);
        var_r31->unk3C->unk1C8(var_r31, &arg0->unk1D8);
        var_r31->unk3C->unk1D0(var_r31, &arg0->unk25B);
    }
}

void fn_78_670(void *arg0, s32 arg1) {
    arg0->unk158 = arg1;
}

void fn_78_678(void *arg0, s32 arg1) {
    arg0->unk170 = arg1;
}

void fn_78_680(Stage *arg0, s32 arg1) {
    Ground *var_r31;
    s8 *temp_r5;

    temp_r5 = "stDxOnett";
    switch (arg1) {                                 /* irregular */
    case 2:
        var_r31 = fn_78_7B50(2, temp_r5 + 0x40, temp_r5 + 0x58);
        break;
    case 3:
        var_r31 = fn_78_7B50(9, temp_r5 + 0x68, temp_r5 + 0x7C);
        break;
    default:
        var_r31 = NULL;
        break;
    }
    if (var_r31 != NULL) {
        addGround__5StageFP6Ground(arg0, var_r31);
        var_r31->unk3C->unk9C(var_r31, arg0->unk1A0, 0, 0);
        var_r31->unk3C->unkA4(var_r31, arg0->unk9C);
        var_r31->unk3C->unk1D8(var_r31, &arg0->unk2EC);
        var_r31->unk3C->unk1DC(var_r31, &arg0->unk2ED);
        var_r31->unk3C->unk1E0(var_r31, &arg0->unk2EE);
        if (arg1 != 3) {
            return;
        }
        var_r31->unk3C->unk1E4(var_r31, 1);
    }
}

void fn_78_7C8(void *arg0, s32 arg1) {
    arg0->unk15C = arg1;
}

void fn_78_7D0(void *arg0, s32 arg1) {
    arg0->unk160 = arg1;
}

void fn_78_7D8(void *arg0, s32 arg1) {
    arg0->unk164 = arg1;
}

void fn_78_7E0(void *arg0, s8 arg1) {
    arg0->unk16A = arg1;
}

void fn_78_7E8(Stage *arg0, s32 arg1) {
    ? var_r30;
    Ground *var_r31;
    s8 *temp_r5;

    var_r30 = saved_reg_r30;
    temp_r5 = "stDxOnett";
    switch (arg1) {                                 /* irregular */
    case 4:
        var_r31 = fn_78_26D8(3, temp_r5 + 0x90, temp_r5 + 0xA8);
        var_r30 = 0;
        break;
    case 5:
        var_r31 = fn_78_26D8(4, temp_r5 + 0xBC, temp_r5 + 0xD4);
        var_r30 = 1;
        break;
    default:
        var_r31 = NULL;
        break;
    }
    if (var_r31 != NULL) {
        addGround__5StageFP6Ground(arg0, var_r31);
        var_r31->unk3C->unk9C(var_r31, arg0->unk1A0, 0, 0);
        var_r31->unk3C->unkA4(var_r31, arg0->unk9C);
        var_r31->unk3C->unk1D4(var_r31, var_r30);
    }
}

void fn_78_8E0(void *arg0, s8 arg1) {
    arg0->unk15C = arg1;
}

void fn_78_8E8(Stage *arg0, s32 arg1) {
    ? var_r30;
    Ground *var_r31;
    s8 *temp_r5;

    var_r30 = saved_reg_r30;
    temp_r5 = "stDxOnett";
    switch (arg1) {                                 /* irregular */
    case 6:
        var_r31 = fn_78_2CAC(5, temp_r5 + 0xE8, temp_r5 + 0xFC);
        var_r30 = 0;
        break;
    case 7:
        var_r31 = fn_78_2CAC(6, temp_r5 + 0x110, temp_r5 + 0x124);
        var_r30 = 1;
        break;
    case 8:
        var_r31 = fn_78_2CAC(7, temp_r5 + 0x138, temp_r5 + 0x148);
        var_r30 = 2;
        break;
    case 9:
        var_r31 = fn_78_2CAC(8, temp_r5 + 0x158, temp_r5 + 0x170);
        var_r30 = 3;
        break;
    default:
        var_r31 = NULL;
        break;
    }
    if (var_r31 != NULL) {
        addGround__5StageFP6Ground(arg0, var_r31);
        var_r31->unk3C->unk9C(var_r31, arg0->unk1A0, 0, 0);
        var_r31->unk3C->unkA4(var_r31, arg0->unk9C);
        var_r31->unk3C->unk1C8(var_r31, &arg0->unk1D8);
        var_r31->unk3C->unk1D0(var_r31, &arg0->unk238);
        var_r31->unk3C->unk1D4(var_r31, &arg0->unk258);
        var_r31->unk3C->unk1D8(var_r31, &arg0->unk25A);
        var_r31->unk3C->unk1DC(var_r31, &arg0->unk25B);
        var_r31->unk3C->unk1E0(var_r31, &arg0->unk25C);
        var_r31->unk3C->unk1E4(var_r31, var_r30);
    }
}

void fn_78_AB8(void *arg0, s32 arg1) {
    arg0->unk164 = arg1;
}

void fn_78_AC0(void *arg0, s32 arg1) {
    arg0->unk168 = arg1;
}

void fn_78_AC8(void *arg0, s32 arg1) {
    arg0->unk16C = arg1;
}

void fn_78_AD0(void *arg0, s32 arg1) {
    arg0->unk170 = arg1;
}

void fn_78_AD8(void *arg0, s32 arg1) {
    arg0->unk174 = arg1;
}

void fn_78_AE0(void *arg0, s8 arg1) {
    arg0->unk178 = arg1;
}

void fn_78_AE8(Stage *arg0, s32 arg1) {
    Ground *var_r31;

    if (arg1 != 0xA) {
        var_r31 = NULL;
    } else {
        var_r31 = fn_78_37EC(0x1E, "nodeIndex", "grDxOnettBlueAttack");
    }
    if (var_r31 != NULL) {
        addGround__5StageFP6Ground(arg0, var_r31);
        var_r31->unk3C->unk9C(var_r31, arg0->unk1A0, 0, 0);
        var_r31->unk3C->unkA4(var_r31, arg0->unk9C);
        var_r31->unk3C->unk1C8(var_r31, &arg0->unk1D8);
        var_r31->unk3C->unk1E4(var_r31, &arg0->unk25C);
        var_r31->unk3C->unk1E0(var_r31, &arg0->unk258);
    }
}

void fn_78_BDC(void *arg0, s32 arg1) {
    arg0->unk160 = arg1;
}

void fn_78_BE4(void *arg0, s32 arg1) {
    arg0->unk15C = arg1;
}

void fn_78_BEC(Stage *arg0, s32 arg1) {
    Ground *var_r31;

    if (arg1 != 0xB) {
        var_r31 = NULL;
    } else {
        var_r31 = fn_78_1DA8(0x15, "grf_StgDxOnettCautionR", "grDxOnettWarningR");
    }
    if (var_r31 != NULL) {
        addGround__5StageFP6Ground(arg0, var_r31);
        var_r31->unk3C->unk9C(var_r31, arg0->unk1A0, 0, 0);
        var_r31->unk3C->unkA4(var_r31, arg0->unk9C);
        var_r31->unk3C->unk1C8(var_r31, &arg0->unk1D8);
        var_r31->unk3C->unk1D8(var_r31, &arg0->unk2E4);
    }
}

void fn_78_CC8(void *arg0, s32 arg1) {
    arg0->unk15C = arg1;
}

void fn_78_CD0(void *arg0) {
    grGimmickBeltConveyorData *temp_r3;
    grGimmickBeltConveyorData *temp_r3_2;
    grGimmickBeltConveyorData *temp_r3_3;
    grGimmickBeltConveyorData *temp_r3_5;
    grGimmickBeltConveyorData *temp_r3_6;
    grGimmickBeltConveyorData *temp_r3_7;
    stTrigger *temp_r3_4;
    stTrigger *temp_r3_8;

    temp_r3 = __nw__FUlQ25Heaps8HeapType(0x40U, (Heaps::HeapType) 0x11);
    arg0->unk2F8 = temp_r3;
    if (temp_r3 != NULL) {
        memset(NULL, 0x40);
        temp_r3_2 = arg0->unk2F8;
        temp_r3_2->unk28 = lbl_78_rodata_0.unk8;
        temp_r3_2->unk2C = 0.0f;
        temp_r3_2->unk30 = 0.0f;
        arg0->unk2F8->unk34 = lbl_78_rodata_0.unkC;
        arg0->unk2F8->unk38 = 0;
        temp_r3_3 = arg0->unk2F8;
        temp_r3_3->unk18 = 0.0f;
        temp_r3_3->unk1C = 0.0f;
        temp_r3_3->unk20 = lbl_78_rodata_0.unk10;
        temp_r3_3->unk24 = lbl_78_rodata_0.unk14;
        temp_r3_3->unk0 = 0;
        temp_r3_4 = createTrigger__12stTriggerMngFQ27Gimmick8AreaKindi(g_stTriggerMng, (Gimmick::AreaKind) 0xE, -1);
        arg0->unk2F0 = temp_r3_4;
        setBeltConveyorTrigger__9stTriggerFP25grGimmickBeltConveyorData(temp_r3_4, arg0->unk2F8);
        temp_r3_5 = __nw__FUlQ25Heaps8HeapType(0x40U, (Heaps::HeapType) 0x11);
        arg0->unk2FC = temp_r3_5;
        if (temp_r3_5 != NULL) {
            memset(NULL, 0x40);
            temp_r3_6 = arg0->unk2FC;
            temp_r3_6->unk28 = lbl_78_rodata_0.unk18;
            temp_r3_6->unk2C = 0.0f;
            temp_r3_6->unk30 = 0.0f;
            arg0->unk2FC->unk34 = lbl_78_rodata_0.unkC;
            arg0->unk2FC->unk38 = 1;
            temp_r3_7 = arg0->unk2FC;
            temp_r3_7->unk18 = 0.0f;
            temp_r3_7->unk1C = 0.0f;
            temp_r3_7->unk20 = lbl_78_rodata_0.unk1C;
            temp_r3_7->unk24 = lbl_78_rodata_0.unk14;
            temp_r3_7->unk0 = 0;
            temp_r3_8 = createTrigger__12stTriggerMngFQ27Gimmick8AreaKindi(g_stTriggerMng, (Gimmick::AreaKind) 0xE, -1);
            arg0->unk2F4 = temp_r3_8;
            setBeltConveyorTrigger__9stTriggerFP25grGimmickBeltConveyorData(temp_r3_8, arg0->unk2FC);
        }
    }
}

void fn_78_E3C(CameraController *arg0, f32 farg0) {
    nw4r::math *temp_r3;

    if ((u8) arg0->unkEB == 1) {
        temp_r3 = getInstance__16CameraControllerFv(arg0);
        if ((temp_r3 + 0x84) != NULL) {
            SinFIdx__Q24nw4r4mathFf(CosFIdx__Q24nw4r4mathFf(temp_r3, lbl_78_rodata_0.unk20), lbl_78_rodata_0.unk20);
        }
        arg0->unk3C->unk208(arg0, lbl_78_rodata_0.unk28, lbl_78_rodata_0.unk2C, lbl_78_rodata_0.unk30);
    } else {
        arg0->unk3C->unk20C();
    }
    arg0->unk3C->unk23C(arg0, farg0);
    arg0->unk3C->unk240(arg0, farg0);
    arg0->unk3C->unk244(arg0, farg0);
    arg0->unk3C->unk248(arg0, farg0);
}

void fn_78_F78(CameraController *arg0) {
    nw4r::math *temp_r3;

    temp_r3 = getInstance__16CameraControllerFv(arg0);
    arg0->unk238 = temp_r3->unk148;
    arg0->unk23C = temp_r3->unk150;
    arg0->unk240 = 0.0f;
    arg0->unk244 = temp_r3->unk14C;
    arg0->unk248 = temp_r3->unk154;
    arg0->unk24C = 0.0f;
}

void fn_78_FD4(void *arg0, f32 farg0) {
    f32 temp_f1;
    u8 temp_r0;
    void *temp_r31;

    temp_r31 = arg0->unk9C;
    if (temp_r31 != NULL) {
        temp_f1 = arg0->unk254 - farg0;
        arg0->unk254 = temp_f1;
        if (temp_f1 < 0.0f) {
            arg0->unk254 = 0.0f;
        }
        temp_r0 = arg0->unk250;
        switch ((s32) temp_r0) {                    /* irregular */
        case 0:
            arg0->unk254 = (f32) temp_r31->unk24;
            arg0->unk250 = 1U;
            return;
        case 1:
            if (arg0->unk254 == 0.0f) {
                arg0->unk254 = (f32) temp_r31->unk28;
                arg0->unk250 = 2U;
                return;
            }
            break;
        case 2:
            if ((arg0->unk254 == 0.0f) && (arg0->unk3C->unk24C(arg0, 0) == 1U)) {
                arg0->unk250 = 3U;
                return;
            }
            break;
        case 3:
            if ((u8) arg0->unk258 == 4) {
                arg0->unk254 = (f32) temp_r31->unk24;
                arg0->unk250 = 1U;
                arg0->unk268 = (s32) ((arg0->unk268 & ~0xE0000000) | 0x20000000);
                if (randf__Fv() < temp_r31->unk3C) {
                    arg0->unk3C->unk24C(arg0, 1);
                }
            }
            break;
        }
    }
}

void fn_78_1128(void *arg0, f32 farg0) {
    f32 temp_f1;
    f32 temp_f1_2;
    f32 temp_f2;
    u8 temp_r0;
    void *temp_r31;

    temp_r31 = arg0->unk9C;
    if ((temp_r31 != NULL) && (temp_r0 = arg0->unk2E5, (((s32) temp_r0 == 2) == 0))) {
        switch ((s32) temp_r0) {                    /* irregular */
        case 0:
            arg0->unk2E5 = 1U;
            /* fallthrough */
        case 1:
            if ((u8) arg0->unk2EC == 0xA) {
                temp_f1 = randf__Fv();
                temp_f2 = temp_r31->unk14;
                arg0->unk2E5 = 3U;
                arg0->unk2E8 = (f32) (temp_f2 + ((temp_r31->unk18 - temp_f2) * temp_f1));
                return;
            }
            break;
        default:
            temp_f1_2 = arg0->unk2E8 - farg0;
            arg0->unk2E8 = temp_f1_2;
            if (temp_f1_2 < 0.0f) {
                arg0->unk2E8 = 0.0f;
            }
            if (arg0->unk2E8 == 0.0f) {
                arg0->unk2EC = 0x64U;
                arg0->unk2E5 = 0U;
            }
            break;
        }
    }
}

void fn_78_1210(void) {

}

s32 fn_78_1214(void *arg0, u32 arg1) {
    f32 sp24;
    f32 sp20;
    f32 sp1C;
    f32 sp18;
    f32 sp10;
    f32 spC;
    f32 sp8;
    f32 temp_f1;
    u8 var_r0;
    u8 var_r5;

    temp_f1 = randf__Fv();
    if (arg1 == 1U) {
        var_r0 = 0xFF;
    } else {
        var_r0 = arg0->unk259;
    }
    switch ((s32) var_r0) {                         /* irregular */
    case 0:
        if (temp_f1 < lbl_78_rodata_0.unk34) {
            var_r5 = 1;
        } else if (temp_f1 < lbl_78_rodata_0.unk38) {
            var_r5 = 2;
        } else {
            var_r5 = 3;
        }
        break;
    case 1:
        if (temp_f1 < lbl_78_rodata_0.unk34) {
            var_r5 = 0;
        } else if (temp_f1 < lbl_78_rodata_0.unk38) {
            var_r5 = 2;
        } else {
            var_r5 = 3;
        }
        break;
    case 2:
        if (temp_f1 < lbl_78_rodata_0.unk34) {
            var_r5 = 0;
        } else if (temp_f1 < lbl_78_rodata_0.unk38) {
            var_r5 = 1;
        } else {
            var_r5 = 3;
        }
        break;
    case 3:
        if (temp_f1 < lbl_78_rodata_0.unk34) {
            var_r5 = 0;
        } else if (temp_f1 < lbl_78_rodata_0.unk38) {
            var_r5 = 1;
        } else {
            var_r5 = 2;
        }
        break;
    default:
        if (temp_f1 < lbl_78_rodata_0.unk24) {
            var_r5 = 0;
        } else if (temp_f1 < lbl_78_rodata_0.unk3C) {
            var_r5 = 1;
        } else if (temp_f1 < lbl_78_rodata_0.unk40) {
            var_r5 = 2;
        } else {
            var_r5 = 3;
        }
        break;
    }
    if (arg1 == 1U) {
        if (var_r5 == (u8) arg0->unk258) {
            return 0;
        }
        arg0->unk25A = var_r5;
        goto block_44;
    }
    if (var_r5 == (u8) arg0->unk25A) {
        return 0;
    }
    arg0->unk258 = var_r5;
    arg0->unk259 = var_r5;
    sp8 = 0.0f;
    spC = 0.0f;
    sp10 = 0.0f;
    sp20 = lbl_78_rodata_0.unk44;
    sp24 = lbl_78_rodata_0.unk48;
    sp18 = lbl_78_rodata_0.unk4C;
    sp1C = lbl_78_rodata_0.unk50;
    arg0->unk268 = (s32) (arg0->unk268 & 0x1FFFFFFF);
    fn_8009EF8C(arg0 + 0x260, &sp8, lbl_78_rodata_0.unk50, lbl_78_rodata_0.unk4C, lbl_78_rodata_0.unk48, lbl_78_rodata_0.unk44);
    arg0->unk29C = sp18;
    arg0->unk2A0 = sp1C;
    arg0->unk2A4 = sp20;
    arg0->unk2A8 = sp24;
    arg0->unk268 = (s32) (arg0->unk268 & 0xE3FFFFFF);
    arg0->unk2E4 = 0;
block_44:
    return 1;
}

void fn_78_1458(void) {

}

s32 fn_78_145C(void) {
    return 0;
}

s32 fn_78_1464(void) {
    return 0;
}

s32 fn_78_146C(void) {
    return 0;
}

s32 fn_78_1474(void) {
    return 0;
}

s32 fn_78_147C(void) {
    return 1;
}

void fn_78_1484(void) {

}

f32 fn_78_1488(void *arg0) {
    return arg0->unk190;
}

void fn_78_1490(void *arg0, f32 farg0) {
    arg0->unk190 = farg0;
}

s32 fn_78_1498(void) {
    return 0;
}

f32 fn_78_14A0(void) {
    return 0.0f;
}

f32 fn_78_14AC(void) {
    return 1.0f;
}

void fn_78_14B8(void *arg0, s8 arg1, s32 arg2, f32 farg0) {
    arg0->unk184 = arg1;
    arg0->unk188 = arg2;
    arg0->unk18C = farg0;
}

void fn_78_14C8(void *arg0, s32 *arg1, f32 *arg2) {
    *arg1 = arg0->unk188;
    *arg2 = arg0->unk18C;
}

u8 fn_78_14DC(void *arg0) {
    return arg0->unk184;
}

s32 fn_78_14E4(void) {
    return 0;
}

s32 fn_78_14EC(void) {
    return 0;
}

s32 fn_78_14F4(void) {
    return 0;
}

s32 fn_78_14FC(void) {
    return 0;
}

void fn_78_1504(void) {

}

s32 fn_78_1508(void *arg1) {
    arg1->unk0 = 0.0f;
    arg1->unk4 = 0.0f;
    arg1->unk8 = 0.0f;
    return 0;
}

s32 fn_78_1524(void) {
    return 0x14;
}

s32 fn_78_152C(s32 arg0) {
    return arg0 + 0x68;
}

s32 fn_78_1534(void) {
    return 0;
}

s32 fn_78_153C(void) {
    return 0;
}

f32 fn_78_1544(void) {
    return 0.0f;
}

void fn_78_1550(void) {

}

s32 fn_78_1554(void) {
    return 0;
}

s32 fn_78_155C(void) {
    return 1;
}

s32 fn_78_1564(void *arg0) {
    return arg0->unk1C8;
}

s32 fn_78_156C(void) {
    return 1;
}

void fn_78_1574(void) {
    __ct__11stClassInfoFv(&lbl_78_bss_14);
    lbl_78_bss_14.unk0 = &lbl_78_data_4E8;
    setClassInfo__11stClassInfoFQ26Stages11srStageKindP11stClassInfo(&lbl_78_bss_14, (Stages::srStageKind) 0x2C, &lbl_78_bss_14);
    __register_global_object(&lbl_78_bss_14, fn_78_15D8, &lbl_78_bss_8);
}

stClassInfo *fn_78_15D8(stClassInfo *arg0, s32 arg1) {
    if (arg0 != NULL) {
        arg0->unk0 = &lbl_78_data_4E8;
        setClassInfo__11stClassInfoFQ26Stages11srStageKindP11stClassInfo(arg0, (Stages::srStageKind) 0x2C, NULL);
        __dt__11stClassInfoFv(arg0, 0);
        if (arg1 > 0) {
            __dl__FPv(arg0);
        }
    }
    return arg0;
}

void fn_78_164C(void) {
    if (__nw__FUlQ25Heaps8HeapType(0x300U, (Heaps::HeapType) 0xF) != NULL) {
        fn_78_A4();
    }
}

void fn_78_1680(void) {

}
