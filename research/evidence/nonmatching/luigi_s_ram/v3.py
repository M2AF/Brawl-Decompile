F = """            float absSpeedX = fabs(speed.m_x);
            if (absSpeedX >= soValueAccesser::getConstantFloat(moduleAccesser, 0xFBB, 0)) {"""
G = "            if (absSpeedX >= soValueAccesser::getConstantFloat(moduleAccesser, 0xFBB, 0)) {"
VARIANTS = [
    ("inline_cmp", [(F, "            if (fabs(speed.m_x) >= soValueAccesser::getConstantFloat(moduleAccesser, 0xFBB, 0)) {")]),
    ("double_var", [(F, "            double absSpeedX = fabs(speed.m_x);\n" + G)]),
    ("float_cast_cmp", [(F, "            if ((float)fabs(speed.m_x) >= soValueAccesser::getConstantFloat(moduleAccesser, 0xFBB, 0)) {")]),
    ("const_first", [(F, "            float absSpeedX = fabs(speed.m_x);\n            float minSpeed = soValueAccesser::getConstantFloat(moduleAccesser, 0xFBB, 0);\n            if (absSpeedX >= minSpeed) {")]),
]
