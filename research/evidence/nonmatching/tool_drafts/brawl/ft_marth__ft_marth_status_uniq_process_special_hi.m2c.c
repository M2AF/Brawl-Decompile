// m2c draft (machine output, NOT source): rewrite by hand against the headers.
typedef struct soValueAccesser {
    /* 0x00 */ char pad0[0xD8];
    /* 0xD8 */ void *unkD8;                         /* inferred */
} soValueAccesser;                                  /* size >= 0xDC */

? __dl__FPv(void *arg0);                            /* extern */
void *__dynamic_cast(?, ? *, ? *, s32);             /* extern */
? __register_global_object(? **, void *(*)(void *, s16), ? *); /* extern */
s32 fn_106_77F4(? *, f32, f32, f32);                /* extern */
? fn_27_15CF5C(void *);                             /* extern */
? fn_27_15CF90(void *);                             /* extern */
? fn_27_89DAC(?, soValueAccesser *);                /* extern */
f32 getConstantFloat__15soValueAccesserFP16soModuleAccesserUlUl(soValueAccesser *this, soModuleAccesser *arg0, u32 arg1, u32 arg2); /* extern */
f32 fn_106_BE30(f32 farg0);                         /* static */
void *fn_106_BF58(void *arg0, s16 arg1);            /* static */
void fn_106_BFE0(? **arg0);                         /* static */
extern ? lbl_106_data_534C;
extern ? lbl_106_data_5390;
extern ? lbl_106_data_544C;
extern ? lbl_106_data_5530;
extern ? lbl_106_data_557C;
extern ? lbl_106_data_EB4;
static ? lbl_106_data_5584;                         /* unable to generate initializer: unknown type */
static ? lbl_106_bss_1A8;
static ? *lbl_106_bss_1B4;

void fn_106_B5D8(soValueAccesser *arg1) {
    ? sp60;
    ? sp54;
    ? sp48;
    ? sp3C;
    u32 sp38;
    s32 sp34;
    u32 sp30;
    s32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    f32 sp1C;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    s16 sp8;
    s32 temp_r3_4;
    u32 temp_r4;
    u64 temp_ret;
    void **temp_r3;
    void **temp_r3_2;
    void **temp_r3_3;
    void **temp_r3_5;
    void **temp_r3_6;
    void **temp_r3_7;
    void *temp_r26;
    void *temp_r26_2;
    void *temp_r26_3;
    void *temp_r27;

    temp_r3 = arg1->unkD8->unk7C;
    (*temp_r3)->unk20(temp_r3, 3);
    temp_r27 = __dynamic_cast(0, &lbl_106_data_534C, &lbl_106_data_EB4, 1);
    temp_r3_2 = arg1->unkD8->unk7C;
    (*temp_r3_2)->unk20(temp_r3_2, 1);
    temp_r26 = __dynamic_cast(0, &lbl_106_data_544C, &lbl_106_data_EB4, 1);
    sp8 = 1;
    temp_r3_3 = arg1->unkD8->unk7C;
    temp_ret = (*temp_r3_3)->unk3C(temp_r3_3, &sp8);
    temp_r3_4 = temp_ret;
    temp_r4 = (u32) temp_ret;
    sp30 = temp_r4;
    sp2C = temp_r3_4;
    sp34 = temp_r3_4;
    sp38 = temp_r4;
    temp_r3_5 = arg1->unkD8->unk14;
    if ((*temp_r3_5)->unk14(temp_r3_5) == 2) {
        sp24 = (bitwise f32) sp34 * getConstantFloat__15soValueAccesserFP16soModuleAccesserUlUl(arg1, (soModuleAccesser *)0xFAC, 0U, M2C_ERROR(/* Read from unset register $r6 */));
        sp28 = 0.0f;
        temp_r27->unk0->unk1C(temp_r27, 6, &sp24, fn_106_77F4(&sp60, 0.0f, 0.0f, 0.0f), arg1);
        temp_r27->unk5 = (u8) (temp_r27->unk5 | 0x80);
        sp1C = 0.0f;
        sp20 = 0.0f;
        temp_r26->unk0->unk1C(temp_r26, 0, &sp1C, fn_106_77F4(&sp54, 0.0f, 0.0f, 0.0f), arg1);
        temp_r26->unk5 = (u8) (temp_r26->unk5 | 0x80);
        temp_r3_6 = arg1->unkD8->unk7C;
        (*temp_r3_6)->unk20(temp_r3_6, 0);
        temp_r26_2 = __dynamic_cast(0, &lbl_106_data_5390, &lbl_106_data_EB4, 1);
        sp14 = 0.0f;
        sp18 = 0.0f;
        temp_r26_2->unk0->unk1C(temp_r26_2, 5, &sp14, fn_106_77F4(&sp48, 0.0f, 0.0f, 0.0f), arg1);
        temp_r26_2->unk5 = (u8) (temp_r26_2->unk5 | 0x80);
        fn_27_89DAC(2, arg1);
        return;
    }
    temp_r3_7 = arg1->unkD8->unk7C;
    (*temp_r3_7)->unk20(temp_r3_7, 0);
    temp_r26_3 = __dynamic_cast(0, &lbl_106_data_5390, &lbl_106_data_EB4, 1);
    spC = 0.0f;
    sp10 = 0.0f;
    temp_r26_3->unk0->unk1C(temp_r26_3, 3, &spC, fn_106_77F4(&sp3C, 0.0f, 0.0f, 0.0f), arg1);
    temp_r26_3->unk5 = (u8) (temp_r26_3->unk5 | 0x80);
    fn_27_89DAC(3, arg1);
    fn_27_89DAC(1, arg1);
    fn_27_89DAC(2, arg1);
}

void fn_106_B8E8(soValueAccesser *arg1) {
    ? sp38;
    ? sp2C;
    u32 sp28;
    s32 sp24;
    u32 sp20;
    s32 sp1C;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    s16 sp8;
    f32 temp_f1;
    f32 temp_f30;
    f32 temp_f30_2;
    f32 temp_f31;
    f32 temp_f31_2;
    f32 var_f29;
    f32 var_f30;
    s32 temp_r3_15;
    s32 temp_r3_18;
    s32 temp_r3_8;
    u32 temp_r4;
    u64 temp_ret;
    void **temp_r3;
    void **temp_r3_10;
    void **temp_r3_11;
    void **temp_r3_12;
    void **temp_r3_13;
    void **temp_r3_14;
    void **temp_r3_16;
    void **temp_r3_17;
    void **temp_r3_19;
    void **temp_r3_20;
    void **temp_r3_21;
    void **temp_r3_22;
    void **temp_r3_23;
    void **temp_r3_2;
    void **temp_r3_3;
    void **temp_r3_4;
    void **temp_r3_5;
    void **temp_r3_6;
    void **temp_r3_7;
    void **temp_r3_9;
    void *temp_r27;
    void *temp_r27_2;
    void *temp_r31;

    temp_r3 = arg1->unkD8->unk7C;
    (*temp_r3)->unk20(temp_r3, 0);
    temp_r31 = __dynamic_cast(0, &lbl_106_data_557C, &lbl_106_data_EB4, 1);
    temp_r3_2 = arg1->unkD8->unk5C;
    (*temp_r3_2)->unk48(temp_r3_2);
    temp_f31 = fn_106_BE30();
    temp_r3_3 = arg1->unkD8->unk64;
    if ((*temp_r3_3)->unk4C(temp_r3_3, 0x22000016) == 0) {
        temp_f1 = getConstantFloat__15soValueAccesserFP16soModuleAccesserUlUl(arg1, (soModuleAccesser *)0xFAA, 0U, M2C_ERROR(/* Read from unset register $r6 */));
        if (temp_f31 > temp_f1) {
            temp_f30 = (temp_f31 - temp_f1) / (lbl_106_rodata_28.unk4 - temp_f1);
            temp_f30_2 = temp_f30 * getConstantFloat__15soValueAccesserFP16soModuleAccesserUlUl(arg1, (soModuleAccesser *)0xFAB, 0U, M2C_ERROR(/* Read from unset register $r6 */));
            temp_r3_4 = arg1->unkD8->unk5C;
            if ((*temp_r3_4)->unk48(temp_r3_4) > 0.0f) {
                var_f30 = -(lbl_106_rodata_28.unk8 * temp_f30_2);
            } else {
                var_f30 = lbl_106_rodata_28.unk8 * temp_f30_2;
            }
            temp_r3_5 = arg1->unkD8->unk64;
            var_f29 = (*temp_r3_5)->unk38(temp_r3_5, 0x21000004);
            temp_f31_2 = fn_106_BE30();
            if (fn_106_BE30(var_f30) > temp_f31_2) {
                var_f29 = var_f30;
            }
            temp_r3_6 = arg1->unkD8->unk64;
            (*temp_r3_6)->unk3C(temp_r3_6, 0x21000004, var_f29);
        }
    }
    sp8 = 1;
    temp_r3_7 = arg1->unkD8->unk7C;
    temp_ret = (*temp_r3_7)->unk3C(temp_r3_7, &sp8);
    temp_r3_8 = temp_ret;
    temp_r4 = (u32) temp_ret;
    sp20 = temp_r4;
    sp1C = temp_r3_8;
    sp24 = temp_r3_8;
    sp28 = temp_r4;
    temp_r3_9 = arg1->unkD8->unk64;
    if ((*temp_r3_9)->unk4C(temp_r3_9, 0x22000010) != 0) {
        temp_r3_10 = arg1->unkD8->unk64;
        if ((*temp_r3_10)->unk4C(temp_r3_10, 0x22000013) == 0) {
            temp_r3_11 = arg1->unkD8->unk8;
            if ((*temp_r3_11)->unk5C(temp_r3_11) == 0x1E9) {
                temp_r31->unk40 = getConstantFloat__15soValueAccesserFP16soModuleAccesserUlUl(arg1, (soModuleAccesser *)0xFAD, 0U, M2C_ERROR(/* Read from unset register $r6 */));
            }
            temp_r3_12 = arg1->unkD8->unk64;
            if (((*temp_r3_12)->unk4C(temp_r3_12, 0x22000014) != 0) && ((bitwise f32) sp28 < 0.0f)) {
                temp_r3_13 = arg1->unkD8->unk64;
                (*temp_r3_13)->unk50(temp_r3_13, 0x22000013);
            }
        } else {
            temp_r3_14 = arg1->unkD8->unk7C;
            temp_r3_15 = ((u8) (*temp_r3_14)->unk20(temp_r3_14, 1)->unk5 >> 7U) & 1;
            if (((temp_r3_15 - (temp_r3_15 - 1)) - !M2C_CARRY) == 0) {
                temp_r3_16 = arg1->unkD8->unk7C;
                (*temp_r3_16)->unk20(temp_r3_16, 1);
                temp_r27 = __dynamic_cast(0, &lbl_106_data_544C, &lbl_106_data_EB4, 1);
                sp14 = 0.0f;
                sp18 = (bitwise f32) sp28;
                temp_r27->unk0->unk1C(temp_r27, 0, &sp14, fn_106_77F4(&sp38, 0.0f, 0.0f, 0.0f), arg1);
                temp_r27->unk10 = (f32) -getConstantFloat__15soValueAccesserFP16soModuleAccesserUlUl(arg1, (soModuleAccesser *)0xFAE, 0U, M2C_ERROR(/* Read from unset register $r6 */));
                temp_r27->unk14 = getConstantFloat__15soValueAccesserFP16soModuleAccesserUlUl(arg1, (soModuleAccesser *)0xFAF, 0U, M2C_ERROR(/* Read from unset register $r6 */));
                temp_r27->unk5 = (u8) (temp_r27->unk5 | 0x80);
            }
            temp_r3_17 = arg1->unkD8->unk7C;
            temp_r3_18 = ((u8) (*temp_r3_17)->unk20(temp_r3_17, 2)->unk5 >> 7U) & 1;
            if (((temp_r3_18 - (temp_r3_18 - 1)) - !M2C_CARRY) == 0) {
                temp_r3_19 = arg1->unkD8->unk7C;
                (*temp_r3_19)->unk20(temp_r3_19, 2);
                temp_r27_2 = __dynamic_cast(0, &lbl_106_data_5530, &lbl_106_data_EB4, 1);
                spC = (bitwise f32) sp24;
                sp10 = 0.0f;
                temp_r27_2->unk0->unk1C(temp_r27_2, 0xB, &spC, fn_106_77F4(&sp2C, 0.0f, 0.0f, 0.0f), arg1);
                getConstantFloat__15soValueAccesserFP16soModuleAccesserUlUl(arg1, (soModuleAccesser *)0xFA7, 0U, M2C_ERROR(/* Read from unset register $r6 */));
                fn_27_15CF90(temp_r27_2);
                getConstantFloat__15soValueAccesserFP16soModuleAccesserUlUl(arg1, (soModuleAccesser *)0xFA7, 0U, M2C_ERROR(/* Read from unset register $r6 */));
                fn_27_15CF5C(temp_r27_2);
                temp_r27_2->unk5 = (u8) (temp_r27_2->unk5 | 0x80);
            }
            temp_r31->unk5 = (u8) (temp_r31->unk5 & 0xFFFFFF7F);
        }
        temp_r3_20 = arg1->unkD8->unk64;
        (*temp_r3_20)->unk50(temp_r3_20, 0x22000014);
    }
    temp_r3_21 = arg1->unkD8->unk64;
    if ((*temp_r3_21)->unk4C(temp_r3_21, 0x22000015) != 0) {
        temp_r3_22 = arg1->unkD8->unk64;
        temp_r31->unk3C = (*temp_r3_22)->unk38(temp_r3_22, 0x21000004);
        temp_r3_23 = arg1->unkD8->unk64;
        (*temp_r3_23)->unk54(temp_r3_23, 0x22000015);
    }
}

f32 fn_106_BE30(f32 farg0) {
    return fabs(farg0);
}

void fn_106_BE38(void) {

}

void fn_106_BE3C(void) {

}

void fn_106_BE40(soValueAccesser *arg1, u32 arg3) {
    void **temp_r3;
    void **temp_r3_2;
    void **temp_r3_3;

    getConstantFloat__15soValueAccesserFP16soModuleAccesserUlUl(arg1, (soModuleAccesser *)0xFA8, 0U, arg3);
    temp_r3 = arg1->unkD8->unk64;
    (*temp_r3)->unk3C(temp_r3, 0x11000000);
    getConstantFloat__15soValueAccesserFP16soModuleAccesserUlUl(arg1, (soModuleAccesser *)0xFA7, 0U, M2C_ERROR(/* Read from unset register $r6 */));
    temp_r3_2 = arg1->unkD8->unk64;
    (*temp_r3_2)->unk3C(temp_r3_2, 0x11000001);
    temp_r3_3 = arg1->unkD8->unk64;
    (*temp_r3_3)->unk50(temp_r3_3, 0x12000003);
}

s32 fn_106_BEE4(void *arg1) {
    void **temp_r3;
    void **temp_r3_2;

    temp_r3 = arg1->unkD8->unk64;
    (*temp_r3)->unk3C(temp_r3, 0x21000004, 0.0f);
    temp_r3_2 = arg1->unkD8->unk64;
    (*temp_r3_2)->unk50(temp_r3_2, 0x22000016);
    return 1;
}

void *fn_106_BF58(void *arg0, s16 arg1) {
    if ((arg0 != NULL) && (arg1 > 0)) {
        __dl__FPv(arg0);
    }
    return arg0;
}

void fn_106_BF98(void) {
    fn_106_BFE0(&lbl_106_bss_1B4);
    __register_global_object(&lbl_106_bss_1B4, fn_106_BF58, &lbl_106_bss_1A8);
}

void fn_106_BFE0(? **arg0) {
    *arg0 = &lbl_106_data_5584;
}
