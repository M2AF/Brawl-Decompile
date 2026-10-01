IF = "    if (moduleAccesser->getSituationModule().getKind() == 2) {\n"
MUL = "stop->resetEnergy(6, &Vec2f(speed.m_x * soValueAccesser::getConstantFloat(moduleAccesser, 0xFAC, 0), 0.0f)"
VARIANTS = [
    ("x_local", [(IF, "    float speedX = speed.m_x;\n" + IF), (MUL, MUL.replace("speed.m_x *", "speedX *"))]),
    ("x_local_mul", [(IF, "    float speedX = speed.m_x;\n" + IF),
                     (MUL, "speedX *= soValueAccesser::getConstantFloat(moduleAccesser, 0xFAC, 0);\n        stop->resetEnergy(6, &Vec2f(speedX, 0.0f)")]),
    ("x_local_zero", [(IF, "    float speedX = speed.m_x;\n" + IF + "        float zero = 0.0f;\n"),
                      (MUL, MUL.replace("speed.m_x *", "speedX *").replace("0), 0.0f)", "0), zero)"))]),
]
