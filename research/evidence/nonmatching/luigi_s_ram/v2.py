T = "    grCollStatus::TouchMask touch = moduleAccesser->getGroundModule().getTouchFlag(0);\n"
ST = "        int status = 0x119;\n"
F = """            float absSpeedX = fabs(speed.m_x);
            if (absSpeedX >= soValueAccesser::getConstantFloat(moduleAccesser, 0xFBB, 0)) {"""
U32 = T.replace("grCollStatus::TouchMask touch", "u32 touch")
SF = [(ST, "        status = 0x119;\n")]
VARIANTS = [
    ("u32", [(T, U32)]),
    ("u32_status_first", [(T, "    int status;\n" + U32)] + SF),
    ("u32_status_first_fabsd", [(T, "    int status;\n" + U32)] + SF + [(F, F.replace("float absSpeedX = fabs(speed.m_x);", "float absSpeedX = (float)fabs((double)speed.m_x);"))]),
    ("u32_status_first_absvar_first", [(T, "    int status;\n    float absSpeedX;\n" + U32)] + SF + [(F, F.replace("float absSpeedX = ", "absSpeedX = "))]),
]
