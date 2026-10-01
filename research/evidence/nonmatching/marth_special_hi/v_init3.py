IF = "    if (moduleAccesser->getSituationModule().getKind() == 2) {\n"
B = "        stop->resetEnergy(6, &Vec2f(speed.m_x * soValueAccesser::getConstantFloat(moduleAccesser, 0xFAC, 0), 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);"
X = "    float speedX = speed.m_x;\n"
VARIANTS = [
    ("a_mul_zero_vec2", [(IF, X + IF), (B, """        float x = speedX * soValueAccesser::getConstantFloat(moduleAccesser, 0xFAC, 0);
        float zero = 0.0f;
        stop->resetEnergy(6, &Vec2f(x, zero), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);""")]),
    ("b_mulassign_zero_vec2", [(IF, X + IF), (B, """        speedX *= soValueAccesser::getConstantFloat(moduleAccesser, 0xFAC, 0);
        float zero = 0.0f;
        stop->resetEnergy(6, &Vec2f(speedX, zero), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);""")]),
    ("c_func_zero", [(IF, X + "    float zero = 0.0f;\n" + IF), (B, B.replace("speed.m_x *", "speedX *").replace("0), 0.0f)", "0), zero)"))]),
    ("d_func_zero_first", [(IF, "    float zero = 0.0f;\n" + X + IF), (B, B.replace("speed.m_x *", "speedX *").replace("0), 0.0f)", "0), zero)"))]),
    ("e_noX_zero", [(IF, IF + "        float zero = 0.0f;\n"), (B, B.replace("0), 0.0f)", "0), zero)"))]),
    ("f_x_mulassign_inline", [(IF, X + IF), (B, """        stop->resetEnergy(6, &Vec2f(speedX *= soValueAccesser::getConstantFloat(moduleAccesser, 0xFAC, 0), 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);""")]),
]
