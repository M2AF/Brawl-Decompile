T = "    grCollStatus::TouchMask touch = moduleAccesser->getGroundModule().getTouchFlag(0);\n"
ST = "        int status = 0x119;\n"
F = """            float absSpeedX = fabs(speed.m_x);
            if (absSpeedX >= soValueAccesser::getConstantFloat(moduleAccesser, 0xFBB, 0)) {"""
F2 = """            if ((float)fabs(speed.m_x) >= soValueAccesser::getConstantFloat(moduleAccesser, 0xFBB, 0)) {"""
U8 = T.replace("grCollStatus::TouchMask touch", "u8 touch")
ST_FIRST = (T, "    int status;\n" + T)
ST_ASSIGN = (ST, "        status = 0x119;\n")
VARIANTS = [
    ("u8", [(T, U8)]),
    ("status_first", [ST_FIRST, ST_ASSIGN]),
    ("fabs_inline", [(F, F2)]),
    ("u8_status_first", [(T, "    int status;\n" + U8), ST_ASSIGN]),
    ("all", [(T, "    int status;\n" + U8), ST_ASSIGN, (F, F2)]),
]
