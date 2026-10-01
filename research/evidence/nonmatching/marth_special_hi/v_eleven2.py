B = "                controller->resetEnergy(11, &Vec2f(speed.m_x, 0.0f)"
H = "static float abs(float x);\n"
TOP = "void ftMarthStatusUniqProcessSpecialHi::execStatus(soModuleAccesser* moduleAccesser) {\n"
VARIANTS = [
    ("inline_fn", [(H, H + "static inline int getControllerResetType() { return 11; }\n"),
                   (B, B.replace("resetEnergy(11,", "resetEnergy(getControllerResetType(),"))]),
    ("top_local", [(TOP, TOP + "    int type = 11;\n"), (B, B.replace("resetEnergy(11,", "resetEnergy(type,"))]),
    ("top_local_u8", [(TOP, TOP + "    u8 type = 11;\n"), (B, B.replace("resetEnergy(11,", "resetEnergy(type,"))]),
    ("speedx_local", [(B, "                float x = speed.m_x;\n                controller->resetEnergy(11, &Vec2f(x, 0.0f)")]),
    ("zero_local", [(B, "                float zero = 0.0f;\n                controller->resetEnergy(11, &Vec2f(speed.m_x, zero)")]),
]
