// m2c draft (machine output, NOT source): rewrite by hand against the headers.
typedef struct gfTaskScheduler {
    /* 0x00 */ char pad0[0xC];
    /* 0x0C */ u32 unkC;                            /* inferred */
    /* 0x10 */ f32 unk10;                           /* inferred */
    /* 0x14 */ f32 unk14;                           /* inferred */
} gfTaskScheduler;                                  /* size >= 0x18 */

typedef struct soExternalValueAccesser {
    /* 0x0 */ char pad0[5];
    /* 0x5 */ u8 unk5;                              /* inferred */
} soExternalValueAccesser;                          /* size >= 0x6 */

typedef struct soValueAccesser {
    /* 0x00 */ char pad0[8];
    /* 0x08 */ void *unk8;                          /* inferred */
    /* 0x0C */ char padC[0xCC];                     /* maybe part of unk8[0x34]? */
    /* 0xD8 */ void *unkD8;                         /* inferred */
} soValueAccesser;                                  /* size >= 0xDC */

? __dl__FPv(void *arg0);                            /* extern */
soExternalValueAccesser *__dynamic_cast(?, struct RTTI *, struct RTTI *, s32); /* extern */
? __register_global_object(void *, void *(*)(void *, s16), ? *); /* extern */
? fn_93_F174(f32 *, f32 *);                         /* extern */
f32 getConstantFloat__15soValueAccesserFP16soModuleAccesserUlUl(soValueAccesser *this, soModuleAccesser *arg0, u32 arg1, u32 arg2); /* extern */
s32 getConstantInt__15soValueAccesserFP16soModuleAccesserUlUl(soValueAccesser *this, soModuleAccesser *arg0, u32 arg1, u32 arg2); /* extern */
gfTaskScheduler *getInstance__15gfTaskSchedulerFv(gfTaskScheduler *this); /* extern */
void *getModuleAccesser__23soExternalValueAccesserFP11StageObject(soExternalValueAccesser *this, StageObject *arg0); /* extern */
s32 getTaskById__15gfTaskSchedulerFQ26gfTask8CategoryUl(gfTaskScheduler *this, gfTask::Category arg0, u32 arg1); /* extern */
? memset(f32 *, ?, ?);                              /* extern */
f32 rsqrtf__Ff(f32 arg0);                           /* extern */
void fn_93_10090(? *arg0);                          /* static */
s32 fn_93_102D0(void *arg0);                        /* static */
f32 fn_93_10424(f32 *, f32 *, f32 *);               /* static */
void fn_93_1054C(f32 *arg0, void *arg1);            /* static */
void fn_93_10BA0(void *arg0, ? *arg1, ? *arg2);     /* static */
void fn_93_10C84(void *arg0, s32 arg1, ? arg_sp0);  /* static */
void fn_93_10D18(void *arg0, s32 arg1, ? arg_sp0);  /* static */
void *fn_93_10DEC(void *arg0, s16 arg1);            /* static */
void *fn_93_10E2C(void *arg0, s16 arg1);            /* static */
void *fn_93_10E6C(void *arg0, s16 arg1);            /* static */
void fn_93_10F2C(? **arg0);                         /* static */
void fn_93_10F3C(? **arg0);                         /* static */
void fn_93_10F4C(? **arg0);                         /* static */
f32 fn_93_FE68(f32 *arg0, f32);                     /* static */
void fn_93_FF14(soValueAccesser *arg0);             /* static */
extern struct RTTI __RTTI__11StageObject;
extern struct RTTI __RTTI__6gfTask;
extern struct RTTI lbl_93_data_3018;
extern struct RTTI lbl_93_data_30FC;
static ? lbl_93_data_83F8;                          /* unable to generate initializer: unknown type */
static ? lbl_93_data_8470;                          /* unable to generate initializer: unknown type */
static ? lbl_93_data_84E8;                          /* unable to generate initializer: unknown type */
static ? lbl_93_bss_180;

void fn_93_F998(void *arg1, ? arg_sp0) {
    void **temp_r29;

    temp_r29 = arg1->unkD8->unk64;
    (*temp_r29)->unk1C(temp_r29, 0, 0x20000001);
    (*temp_r29)->unk1C(temp_r29, 0, 0x20000002);
    (*temp_r29)->unk54(temp_r29, 0x22000017);
    (*temp_r29)->unk54(temp_r29, 0x22000018);
    (*temp_r29)->unk1C(temp_r29, -1, 0x20000003);
    (*temp_r29)->unk3C(temp_r29, 0x21000004, 999999.9f);
    (*temp_r29)->unk54(temp_r29, 0x22000019);
}

void fn_93_FA94(soValueAccesser *arg1, ? arg_sp0) {
    s32 sp1C;
    s32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    f32 sp8;
    void **temp_r31;
    void **temp_r3_2;
    void *temp_r3;

    temp_r31 = arg1->unkD8->unk64;
    if (((*temp_r31)->unk4C(temp_r31, 0x22000017) != 0) && ((*temp_r31)->unk4C(temp_r31, 0x22000018) == 0)) {
        (*temp_r31)->unk50(temp_r31, 0x22000018);
        memset(&sp8, 0, 0x18);
        temp_r3 = arg1->unkD8->unk4;
        sp18 = (sp18 & ~0xFF800000) | (temp_r3->unk8->unk8C(temp_r3, 0x12C) << 0x17);
        sp14 = getConstantFloat__15soValueAccesserFP16soModuleAccesserUlUl(arg1, (soModuleAccesser *)0xFAC, 0U, M2C_ERROR(/* Read from unset register $r6 */));
        sp8 = 0.0f;
        spC = 0.0f;
        sp10 = getConstantFloat__15soValueAccesserFP16soModuleAccesserUlUl(arg1, (soModuleAccesser *)0xFAD, 0U, M2C_ERROR(/* Read from unset register $r6 */));
        sp18 = ((((((sp18 & ~0x7F0000) | 0x20000) & ~0xFFC0) | 0x40) & ~0x38) | 0x18) & 0xFFFFFFFB;
        sp1C = ((((((((sp1C & ~0xF0000000) | 0x90000000) & ~0x0F000000) | 0x01000000) & 0xFF7FFFFF) | 0x20) & 0xFF80003F) | 0x20) & 0xFFFFFFEF;
        temp_r3_2 = arg1->unkD8->unk34;
        (*temp_r3_2)->unk20(temp_r3_2, 0, 0, &sp8);
    }
    if ((*temp_r31)->unk4C(temp_r31, 0x22000019) != 0) {
        (*temp_r31)->unk54(temp_r31, 0x22000019);
        fn_93_FF14(arg1);
    }
}

void fn_93_FC4C(void *arg1, s32 arg2, ? arg_sp0) {
    if (arg2 < 0x11A) {
        if (arg2 != 0x116) {
            goto block_5;
        }
    } else if (arg2 < 0x11C) {

    } else {
block_5:
        fn_93_10C84(arg1, 0x20000001);
        fn_93_10C84(arg1, 0x20000002);
    }
    fn_93_10D18(arg1, arg2);
}

void fn_93_FCC8(gfTaskScheduler *arg0, void *arg1) {
    f32 sp1C;
    f32 sp10;
    f32 spC;
    f32 sp8;
    f32 temp_f1;
    f32 temp_f31;
    soExternalValueAccesser *temp_r29;
    void **temp_r30;
    void *temp_r31;
    void *temp_r3;
    void *temp_r3_2;

    if (getTaskById__15gfTaskSchedulerFQ26gfTask8CategoryUl(getInstance__15gfTaskSchedulerFv(arg0), (gfTask::Category) 0xA, arg0->unkC) != 0) {
        temp_r29 = __dynamic_cast(0x3C, &__RTTI__11StageObject, &__RTTI__6gfTask, 0);
        temp_r3 = arg1->unkD8;
        temp_r30 = temp_r3->unk64;
        temp_r31 = temp_r3->unk4;
        temp_r31->unk8->unk98(&sp10, temp_r31, temp_r31->unk8->unk8C(temp_r31, 0x12C), 0);
        fn_93_F174(&sp1C, &sp10);
        sp8 = arg0->unk10 - sp1C;
        temp_f1 = arg0->unk14;
        spC = temp_f1 - sp20;
        temp_f31 = fn_93_FE68(&sp8, temp_f1);
        if (temp_f31 < (*temp_r30)->unk38(temp_r30, 0x21000004)) {
            temp_r3_2 = arg1->unkD8->unk10;
            if (temp_r3_2->unk8->unk1E8(temp_r3_2, temp_r29, 0) == 0) {
                (*temp_r30)->unk1C(temp_r30, arg0->unkC, 0x20000003);
                (*temp_r30)->unk3C(temp_r30, 0x21000004, temp_f31);
                (*temp_r30)->unk50(temp_r30, 0x22000019);
            }
        }
    }
}

f32 fn_93_FE68(f32 *arg0) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f31;

    temp_f0 = arg0->unk0;
    temp_f0_2 = arg0->unk4;
    temp_f31 = (temp_f0 * temp_f0) + (temp_f0_2 * temp_f0_2);
    M2C_ERROR(/* unknown instruction: cror eq, lt, eq */);
    if ((f32) fabs(temp_f31) == 1.1754944e-38f) {
        return 0.0f;
    }
    return temp_f31 * rsqrtf__Ff(temp_f31);
}

s32 fn_93_FEDC(void *arg0) {
    void **temp_r3;

    temp_r3 = arg0->unkD8->unk34;
    (*temp_r3)->unk18(temp_r3);
    return 0;
}

void fn_93_FF14(soValueAccesser *arg0) {
    gfTaskScheduler *temp_r3_2;
    soExternalValueAccesser *temp_ret;
    void **temp_r31;
    void **temp_r3;
    void **temp_r3_4;
    void *temp_r3_3;
    void *temp_r4;

    temp_r3 = arg0->unkD8->unk64;
    temp_r3_2 = (*temp_r3)->unk18(temp_r3, 0x20000003);
    if (((u32) (temp_r3_2 + 0x10000) != -1U) && (getTaskById__15gfTaskSchedulerFQ26gfTask8CategoryUl(getInstance__15gfTaskSchedulerFv(temp_r3_2), (gfTask::Category) 0xA, (u32) temp_r3_2) != 0)) {
        temp_ret = __dynamic_cast(0x3C, &__RTTI__11StageObject, &__RTTI__6gfTask, 1);
        temp_r3_3 = getModuleAccesser__23soExternalValueAccesserFP11StageObject(temp_ret, (StageObject *) (u32) (u64) temp_ret);
        temp_r4 = temp_r3_3->unkD8;
        temp_r3_4 = temp_r4->unk70;
        temp_r31 = temp_r4->unk40;
        (*temp_r3_4)->unk14(temp_r3_4, 0xED, temp_r3_3);
        (*temp_r31)->unk24(temp_r31, arg0->unk8->unk28, 0xED, 0);
    }
}

void fn_93_FFF8(soValueAccesser *arg1) {
    s32 sp14;
    s32 sp10;
    ? sp8;
    s32 temp_r31;
    s32 temp_r3;
    void **temp_r3_2;
    void **temp_r3_3;

    fn_93_10090(&sp8);
    temp_r3 = getConstantInt__15soValueAccesserFP16soModuleAccesserUlUl(arg1, (soModuleAccesser *)0x5DC2, 0U, M2C_ERROR(/* Read from unset register $r6 */));
    temp_r31 = temp_r3;
    sp10 = 1;
    sp14 = temp_r3;
    temp_r3_2 = arg1->unkD8->unk54;
    (*temp_r3_2)->unk48(temp_r3_2, 0, &sp8, 0);
    temp_r3_3 = arg1->unkD8->unk44;
    (*temp_r3_3)->unk20(temp_r3_3, temp_r31);
}

void fn_93_10090(? *arg0) {
    arg0->unk0 = 0x25;
    arg0->unk4 = 0;
    arg0->unk8 = 0;
}

void fn_93_100A8(void *arg1) {
    void **temp_r3;
    void **temp_r3_2;
    void **temp_r3_3;

    temp_r3 = arg1->unkD8->unk54;
    if ((*temp_r3)->unk2C(temp_r3, 2) != 0) {
        temp_r3_2 = arg1->unkD8->unk54;
        (*temp_r3_2)->unk194(temp_r3_2, 2, 0, 0);
    }
    if (fn_93_102D0(arg1) != 0) {
        temp_r3_3 = arg1->unkD8->unk7C;
        (*temp_r3_3)->unk2C(temp_r3_3);
    }
}

void fn_93_10140(void *arg1, ? arg_sp0) {
    s32 sp30;
    ? sp28;
    ? sp1C;
    ? sp10;
    s32 sp8;
    void **temp_r29;
    void **temp_r30;
    void **temp_r31;
    void **temp_r3_2;
    void **temp_r3_3;
    void **temp_r3_4;
    void **temp_r3_5;
    void *temp_r3;

    temp_r3 = arg1->unkD8;
    temp_r31 = temp_r3->unk64;
    temp_r3_2 = temp_r3->unk44;
    if ((*temp_r3_2)->unk2C(temp_r3_2) == 0) {
        fn_93_10090(&sp28);
        sp30 = 2;
        temp_r3_3 = arg1->unkD8->unk54;
        (*temp_r3_3)->unk48(temp_r3_3, 0, &sp28, 0);
        (*temp_r31)->unk50(temp_r31, 0x22000011);
        temp_r30 = arg1->unkD8->unk64;
        if ((*temp_r30)->unk18(temp_r30, 0x20000001) == 0) {
            temp_r29 = arg1->unkD8->unk88;
            fn_93_10BA0(arg1, &sp10, &sp1C);
            sp8 = -1;
            (*temp_r30)->unk1C(temp_r30, (*temp_r29)->unk34(temp_r29, 0xE20002, 0, &sp10, &sp1C, 1, 0, 0, 1.0f), 0x20000001);
        }
        if (fn_93_102D0(arg1) != 0) {
            temp_r3_4 = arg1->unkD8->unk70;
            (*temp_r3_4)->unk14(temp_r3_4, 0x11B, arg1);
            temp_r3_5 = arg1->unkD8->unk7C;
            (*temp_r3_5)->unk2C(temp_r3_5);
        }
    }
}

s32 fn_93_102D0(void *arg0) {
    f32 sp4C;
    f32 sp40;
    f32 sp3C;
    f32 sp34;
    f32 sp28;
    f32 sp1C;
    f32 sp10;
    f32 spC;
    f32 sp8;
    f32 temp_f31;
    f32 var_f31;
    void **temp_r29;
    void **temp_r4;

    temp_r29 = arg0->unkD8->unk64;
    fn_93_1054C(&sp28, arg0);
    fn_93_F174(&sp4C, &sp28);
    temp_r4 = arg0->unkD8->unkC;
    (*temp_r4)->unk18(&sp1C, temp_r4);
    fn_93_F174(&sp40, &sp1C);
    fn_93_10424(&sp10, &sp4C, &sp40);
    fn_93_F174(&sp34, &sp10);
    sp3C = 0.0f;
    sp8 = (*temp_r29)->unk38(temp_r29, 0x11000013);
    spC = (*temp_r29)->unk38(temp_r29, 0x11000014);
    temp_f31 = (0.0f * 0.0f) + ((sp34 * sp34) + (sp38 * sp38));
    M2C_ERROR(/* unknown instruction: cror eq, lt, eq */);
    if ((f32) fabs(temp_f31) == 1.1754944e-38f) {
        var_f31 = 0.0f;
    } else {
        var_f31 = temp_f31 * rsqrtf__Ff(temp_f31);
    }
    M2C_ERROR(/* unknown instruction: cror eq, lt, eq */);
    return var_f31 == fn_93_FE68(&sp8);
}

f32 fn_93_10424(void) {
    M2C_ERROR(/* unknown instruction: ps_sub $f0, $f2, $f0 */);
    return M2C_ERROR(/* unknown instruction: ps_sub $f1, $f3, $f1 */);
}

void fn_93_10448(void *arg1, s32 arg2, ? arg_sp0) {
    if (arg2 < 0x11A) {
        if (arg2 != 0x116) {
            goto block_5;
        }
    } else if (arg2 < 0x11C) {

    } else {
block_5:
        fn_93_10C84(arg1, 0x20000001);
        fn_93_10C84(arg1, 0x20000002);
    }
    fn_93_10D18(arg1, arg2);
}

void fn_93_104C4(f32 *arg0, void *arg1) {
    s32 sp14;
    s32 sp10;
    ? sp8;
    void **temp_r31;

    temp_r31 = arg1->unkD8->unk54;
    fn_93_10090(&sp8);
    sp10 = 7;
    sp14 = 0x12D;
    (*temp_r31)->unk48(temp_r31, 0, &sp8, 0);
    arg0->unk0 = sp18;
    arg0->unk4 = sp1C;
    arg0->unk8 = sp20;
}

void fn_93_1054C(f32 *arg0, void *arg1) {
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp20;
    f32 sp14;
    f32 sp8;
    f32 temp_f31;
    void **temp_r30;
    void **temp_r3_2;
    void *temp_r3;

    temp_r3 = arg1->unkD8;
    temp_r30 = temp_r3->unk64;
    temp_r3_2 = temp_r3->unkC;
    temp_f31 = (*temp_r3_2)->unk2C(temp_r3_2);
    sp2C = (*temp_r30)->unk38(temp_r30, 0x11000013) * temp_f31;
    sp30 = (*temp_r30)->unk38(temp_r30, 0x11000014);
    sp34 = 0.0f;
    fn_93_104C4(&sp14, arg1);
    fn_93_F174(&sp20, &sp14);
    fn_93_10424(&sp8, &sp20, &sp2C);
    fn_93_F174(arg0, &sp8);
}

void fn_93_10630(void *arg1) {
    s32 sp14;
    s32 sp10;
    ? sp8;
    void **temp_r3_2;
    void **temp_r3_3;
    void *temp_r3;

    fn_93_10090(&sp8);
    sp10 = 3;
    temp_r3 = arg1->unkD8->unk4;
    sp14 = temp_r3->unk8->unk8C(temp_r3, 0x12C);
    temp_r3_2 = arg1->unkD8->unk54;
    (*temp_r3_2)->unk48(temp_r3_2, 0, &sp8, 0);
    temp_r3_3 = arg1->unkD8->unk64;
    (*temp_r3_3)->unk50(temp_r3_3, 0x22000016);
}

void fn_93_106CC(void *arg1, ? arg_sp0) {
    s32 sp4C;
    ? sp44;
    s8 sp40;
    f32 sp3C;
    s32 sp38;
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    s8 sp28;
    s32 sp24;
    s32 sp10;
    ? sp8;
    soExternalValueAccesser *temp_r30;
    void **temp_r29;
    void **temp_r29_2;
    void **temp_r31;
    void **temp_r3_10;
    void **temp_r3_11;
    void **temp_r3_12;
    void **temp_r3_13;
    void **temp_r3_2;
    void **temp_r3_3;
    void **temp_r3_4;
    void **temp_r3_5;
    void **temp_r3_6;
    void **temp_r3_7;
    void **temp_r3_9;
    void *temp_r3;
    void *temp_r3_8;

    temp_r3 = arg1->unkD8;
    temp_r31 = temp_r3->unk64;
    temp_r29 = temp_r3->unk3C;
    temp_r3_2 = temp_r3->unk44;
    (*temp_r3_2)->unk1C(temp_r3_2);
    temp_r3_3 = arg1->unkD8->unk44;
    (*temp_r3_3)->unk24(temp_r3_3);
    temp_r3_4 = arg1->unkD8->unk54;
    if ((*temp_r3_4)->unk2C(temp_r3_4, 2) != 0) {
        temp_r3_5 = arg1->unkD8->unk54;
        (*temp_r3_5)->unk194(temp_r3_5, 2, 0, 0);
    }
    if (((*temp_r31)->unk4C(temp_r31, 0x22000012) != 0) && ((*temp_r31)->unk4C(temp_r31, 0x22000013) == 0) && ((*temp_r29)->unk20(temp_r29) != 0)) {
        fn_93_10090(&sp44);
        sp4C = 4;
        temp_r3_6 = arg1->unkD8->unk54;
        (*temp_r3_6)->unk48(temp_r3_6, 0, &sp44, 0);
        (*temp_r31)->unk50(temp_r31, 0x22000013);
    }
    if (((*temp_r31)->unk4C(temp_r31, 0x22000014) != 0) && ((*temp_r31)->unk4C(temp_r31, 0x22000015) == 0) && ((*temp_r29)->unk20(temp_r29) != 0)) {
        sp24 = 0xB;
        sp28 = 0;
        sp2C = 0xA3;
        sp30 = -1;
        sp34 = -1;
        sp38 = -1;
        sp3C = 1.0f;
        sp40 = 1;
        temp_r3_7 = arg1->unkD8->unk54;
        (*temp_r3_7)->unk48(temp_r3_7, 0, &sp24, 0);
        temp_r3_8 = arg1->unkD8;
        temp_r29_2 = temp_r3_8->unk64;
        temp_r3_9 = temp_r3_8->unk54;
        (*temp_r29_2)->unk1C(temp_r29_2, (*temp_r3_9)->unk54(temp_r3_9, 0), 0x20000002);
        temp_r3_10 = arg1->unkD8->unk64;
        (*temp_r3_10)->unk1C(temp_r3_10, sp30, 0x20000003);
        temp_r3_11 = arg1->unkD8->unk64;
        (*temp_r3_11)->unk1C(temp_r3_11, sp34, 0x20000004);
        (*temp_r31)->unk50(temp_r31, 0x22000015);
        fn_93_10090(&sp8);
        sp10 = 5;
        temp_r3_12 = arg1->unkD8->unk54;
        (*temp_r3_12)->unk48(temp_r3_12, 0, &sp8, 0);
    }
    temp_r3_13 = arg1->unkD8->unk7C;
    (*temp_r3_13)->unk20(temp_r3_13, 1);
    temp_r30 = __dynamic_cast(0, &lbl_93_data_3018, &lbl_93_data_30FC, 1);
    if ((*temp_r31)->unk4C(temp_r31, 0x22000016) != 0) {
        temp_r30->unk5 |= 0x80;
        return;
    }
    temp_r30->unk5 &= 0xFFFFFF7F;
}

void fn_93_10A34(void *arg1, s32 arg2, ? arg_sp0) {
    if (arg2 < 0x11A) {
        if (arg2 != 0x116) {
            goto block_5;
        }
    } else if (arg2 < 0x11C) {

    } else {
block_5:
        fn_93_10C84(arg1, 0x20000001);
        fn_93_10C84(arg1, 0x20000002);
    }
    fn_93_10D18(arg1, arg2);
}

void fn_93_10AB0(void *arg0, ? arg_sp0) {
    f32 sp20;
    ? sp1C;
    ? sp10;
    s32 sp8;
    void **temp_r29;
    void **temp_r30;
    void **temp_r3;
    void *temp_r3_2;

    temp_r3 = arg0->unkD8->unk64;
    if ((*temp_r3)->unk4C(temp_r3, 0x22000014) != 0) {
        temp_r3_2 = arg0->unkD8;
        temp_r30 = temp_r3_2->unk64;
        temp_r29 = temp_r3_2->unk88;
        fn_93_10C84(arg0, 0x20000001);
        fn_93_10BA0(arg0, &sp10, &sp1C);
        sp20 = 0.0f;
        sp8 = -1;
        (*temp_r30)->unk1C(temp_r30, (*temp_r29)->unk34(temp_r29, 0xE20004, 0, &sp10, &sp1C, 1, 0, 0, 1.0f), 0x20000002);
    }
}

void fn_93_10BA0(void *arg0, ? *arg1, ? *arg2) {
    f32 temp_f1;
    f32 temp_f31;
    void **temp_r29;
    void **temp_r3;

    temp_r29 = arg0->unkD8->unk64;
    temp_f31 = (*temp_r29)->unk38(temp_r29, 0x11000013);
    temp_f1 = (*temp_r29)->unk38(temp_r29, 0x11000014);
    arg1->unk0 = (f32) lbl_93_rodata_60.unk4;
    arg1->unk4 = temp_f1;
    arg1->unk8 = temp_f31;
    arg2->unk0 = (f32) lbl_93_rodata_60.unk4;
    arg2->unk4 = (f32) lbl_93_rodata_60.unk4;
    arg2->unk8 = (f32) lbl_93_rodata_60.unk4;
    temp_r3 = arg0->unkD8->unkC;
    if ((*temp_r3)->unk2C(temp_r3) < lbl_93_rodata_60.unk4) {
        arg2->unk4 = (f32) lbl_93_rodata_60.unk10;
        return;
    }
    arg2->unk4 = (f32) lbl_93_rodata_60.unk14;
}

void fn_93_10C84(void *arg0, s32 arg1, ? arg_sp0) {
    s32 temp_r3_2;
    void **temp_r30;
    void **temp_r31;
    void *temp_r3;

    temp_r3 = arg0->unkD8;
    temp_r31 = temp_r3->unk64;
    temp_r30 = temp_r3->unk88;
    temp_r3_2 = (*temp_r31)->unk18(temp_r31);
    if (temp_r3_2 != 0) {
        (*temp_r30)->unk60(temp_r30, temp_r3_2, 1, 1);
        (*temp_r31)->unk1C(temp_r31, 0, arg1);
    }
}

void fn_93_10D18(void *arg0, s32 arg1, ? arg_sp0) {
    s32 temp_r3_2;
    void **temp_r31;
    void **temp_r3;

    temp_r31 = arg0->unkD8->unk3C;
    if (((*temp_r31)->unk20(temp_r31) != 0) && ((temp_r3 = arg0->unkD8->unk70, temp_r3_2 = (*temp_r3)->unk48(temp_r3), ((temp_r3_2 == 0x116) == 0)) || (arg1 != 0x11A)) && ((temp_r3_2 != 0x116) || (arg1 != 0x11B)) && ((temp_r3_2 != 0x11A) || (arg1 != 0x11B))) {
        (*temp_r31)->unk40(temp_r31, 1);
        (*temp_r31)->unk2C(temp_r31, 0, 0);
    }
}

void *fn_93_10DEC(void *arg0, s16 arg1) {
    if ((arg0 != NULL) && (arg1 > 0)) {
        __dl__FPv(arg0);
    }
    return arg0;
}

void *fn_93_10E2C(void *arg0, s16 arg1) {
    if ((arg0 != NULL) && (arg1 > 0)) {
        __dl__FPv(arg0);
    }
    return arg0;
}

void *fn_93_10E6C(void *arg0, s16 arg1) {
    if ((arg0 != NULL) && (arg1 > 0)) {
        __dl__FPv(arg0);
    }
    return arg0;
}

void fn_93_10EAC(void) {
    fn_93_10F2C(&lbl_93_bss_180 + 0xC);
    __register_global_object(&lbl_93_bss_180 + 0xC, fn_93_10E6C, &lbl_93_bss_180);
    fn_93_10F3C(&lbl_93_bss_180 + 0x1C);
    __register_global_object(&lbl_93_bss_180 + 0x1C, fn_93_10E2C, &lbl_93_bss_180 + 0x10);
    fn_93_10F4C(&lbl_93_bss_180 + 0x2C);
    __register_global_object(&lbl_93_bss_180 + 0x2C, fn_93_10DEC, &lbl_93_bss_180 + 0x20);
}

void fn_93_10F2C(? **arg0) {
    *arg0 = &lbl_93_data_84E8;
}

void fn_93_10F3C(? **arg0) {
    *arg0 = &lbl_93_data_8470;
}

void fn_93_10F4C(? **arg0) {
    *arg0 = &lbl_93_data_83F8;
}
