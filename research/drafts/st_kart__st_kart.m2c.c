// m2c draft (machine output, NOT source): rewrite by hand against the headers.
typedef struct Ground {
    /* 0x00 */ char pad0[0x3C];
    /* 0x3C */ void *unk3C;                         /* inferred */
} Ground;                                           /* size >= 0x40 */

typedef struct stKart {
    /* 0x000 */ char pad0[0x9C];
    /* 0x09C */ s32 unk9C;                          /* inferred */
    /* 0x0A0 */ char padA0[0x100];                  /* maybe part of unk9C[0x41]? */
    /* 0x1A0 */ s32 unk1A0;                         /* inferred */
    /* 0x1A4 */ char pad1A4[0x34];                  /* maybe part of unk1A0[0xE]? */
    /* 0x1D8 */ s32 unk1D8;                         /* inferred */
    /* 0x1DC */ ? unk1DC;                           /* inferred */
    /* 0x1DC */ char pad1DC[0x1C];
    /* 0x1F8 */ ? unk1F8;                           /* inferred */
    /* 0x1F8 */ char pad1F8[1];
} stKart;                                           /* size >= 0x1F9 */

? addGround__5StageFP6Ground(Stage *this, Ground *arg0); /* extern */
Ground *fn_49_1AF8(? *, ? *);                       /* extern */
static ? lbl_49_data_28;                            /* unable to generate initializer: unknown type */
static ? lbl_49_data_70;                            /* unable to generate initializer: unknown type */

/* stKart::createKart (char unsigned, short) */
Ground *createKart__6stKartFUcs(stKart *this, u8 arg0, s16 arg1) {
    s16 var_r3;

    var_r3 = arg1;
    if ((s32) this->unk9C != 0) {
        var_r3 = fn_49_1AF8("TopN", "grKartKart");
        if (var_r3 != 0) {
            addGround__5StageFP6Ground((Stage *) this, (Ground *) var_r3);
            var_r3->unk3C->unk9C(var_r3, this->unk1A0, 0, 0);
            var_r3->unk3C->unkA4(var_r3, this->unk9C);
            var_r3->unk3C->unk1F0(var_r3, this->unk1D8);
            var_r3->unk3C->unk1F8(var_r3, arg0);
            var_r3->unk3C->unk1FC(var_r3, &this->unk1DC);
            var_r3 = var_r3->unk3C->unk200(var_r3, &this->unk1F8);
        }
    }
    return (Ground *) var_r3;
}
