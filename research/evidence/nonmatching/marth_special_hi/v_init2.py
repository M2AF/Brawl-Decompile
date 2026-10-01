B = """        float zero = 0.0f;
        stop->resetEnergy(6, &Vec2f(speedX * soValueAccesser::getConstantFloat(moduleAccesser, 0xFAC, 0), zero), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);"""
VARIANTS = [
    ("mul_then_zero", [(B, """        speedX *= soValueAccesser::getConstantFloat(moduleAccesser, 0xFAC, 0);
        float zero = 0.0f;
        stop->resetEnergy(6, &Vec2f(speedX, zero), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);""")]),
    ("mul_then_zero_all", [(B, """        speedX *= soValueAccesser::getConstantFloat(moduleAccesser, 0xFAC, 0);
        float zero = 0.0f;
        stop->resetEnergy(6, &Vec2f(speedX, zero), &Vec3f(zero, zero, zero), moduleAccesser);""")]),
    ("zero_all", [(B, """        float zero = 0.0f;
        stop->resetEnergy(6, &Vec2f(speedX * soValueAccesser::getConstantFloat(moduleAccesser, 0xFAC, 0), zero), &Vec3f(zero, zero, zero), moduleAccesser);""")]),
    ("speedvec", [(B, """        Vec2f stopSpeed(speedX * soValueAccesser::getConstantFloat(moduleAccesser, 0xFAC, 0), 0.0f);
        stop->resetEnergy(6, &stopSpeed, &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);""")]),
]
