DECL = "    float speedX = speed.m_x;\n    float speedY = speed.m_y;\n"
TOP = "void ftMarthStatusUniqProcessSpecialS::initStatus(soModuleAccesser* moduleAccesser) {\n"
INNER = """                float fallSpeed = 0.0f;
                if (speedY >= fallSpeed) {
                    fallSpeed = soValueAccesser::getConstantFloat(moduleAccesser, 0xFA4, 0);
                }
"""
EMPTY_IF = """                fallSpeed = 0.0f;
                if (speedY < fallSpeed) {
                } else {
                    fallSpeed = soValueAccesser::getConstantFloat(moduleAccesser, 0xFA4, 0);
                }
"""
TERN = """                fallSpeed = 0.0f;
                fallSpeed = speedY < fallSpeed ? fallSpeed : soValueAccesser::getConstantFloat(moduleAccesser, 0xFA4, 0);
"""
NOT_LT = """                fallSpeed = 0.0f;
                if (!(speedY < fallSpeed)) {
                    fallSpeed = soValueAccesser::getConstantFloat(moduleAccesser, 0xFA4, 0);
                }
"""
VARIANTS = [
    ("first_empty_if", [(TOP, TOP + "    float fallSpeed;\n"), (INNER, EMPTY_IF)]),
    ("first_tern", [(TOP, TOP + "    float fallSpeed;\n"), (INNER, TERN)]),
    ("first_not_lt", [(TOP, TOP + "    float fallSpeed;\n"), (INNER, NOT_LT)]),
    ("before_xy_empty_if", [(DECL, "    float fallSpeed;\n" + DECL), (INNER, EMPTY_IF)]),
]
