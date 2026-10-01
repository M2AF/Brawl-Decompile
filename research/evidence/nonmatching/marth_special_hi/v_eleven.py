B = """                controller->resetEnergy(11, &Vec2f(speed.m_x, 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);"""
H = "static float abs(float x);\n"
HELPER = H + """static inline void resetController(ftKineticEnergyController* e, int type, Vec2f* speed, soModuleAccesser* ma) {
    e->resetEnergy(type, speed, &Vec3f(0.0f, 0.0f, 0.0f), ma);
}
"""
HELPER2 = H + """static inline void resetController(ftKineticEnergyController* e, int type, const Vec2f& speed, soModuleAccesser* ma) {
    e->resetEnergy(type, &Vec2f(speed), &Vec3f(0.0f, 0.0f, 0.0f), ma);
}
"""
VARIANTS = [
    ("wrapper", [(H, HELPER), (B, "                resetController(controller, 11, &Vec2f(speed.m_x, 0.0f), moduleAccesser);")]),
    ("wrapper_ref", [(H, HELPER2), (B, "                resetController(controller, 11, Vec2f(speed.m_x, 0.0f), moduleAccesser);")]),
]
