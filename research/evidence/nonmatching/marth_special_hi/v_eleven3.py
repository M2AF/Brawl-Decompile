B = "                controller->resetEnergy(11, &Vec2f(speed.m_x, 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);"
H = "static float abs(float x);\n"
def w(sig, body, call):
    return [(H, H + "static inline void resetCtrl(" + sig + ") { " + body + " }\n"), (B, "                " + call)]
VARIANTS = [
    ("w_x", w("ftKineticEnergyController* e, int type, float x, soModuleAccesser* ma",
              "e->resetEnergy(type, &Vec2f(x, 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), ma);",
              "resetCtrl(controller, 11, speed.m_x, moduleAccesser);")),
    ("w_vecref", w("ftKineticEnergyController* e, int type, const Vec2f& v, soModuleAccesser* ma",
                   "e->resetEnergy(type, &Vec2f(v.m_x, 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), ma);",
                   "resetCtrl(controller, 11, speed, moduleAccesser);")),
    ("w_vecptr", w("ftKineticEnergyController* e, int type, Vec2f* v, soModuleAccesser* ma",
                   "e->resetEnergy(type, &Vec2f(v->m_x, 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), ma);",
                   "resetCtrl(controller, 11, &speed, moduleAccesser);")),
    ("w_rotptr", w("ftKineticEnergyController* e, int type, Vec2f* v, soModuleAccesser* ma",
                   "e->resetEnergy(type, v, &Vec3f(0.0f, 0.0f, 0.0f), ma);",
                   "resetCtrl(controller, 11, &Vec2f(speed.m_x, 0.0f), moduleAccesser);")),
    ("w_short", w("ftKineticEnergyController* e, short type, Vec2f* v, soModuleAccesser* ma",
                  "e->resetEnergy(type, v, &Vec3f(0.0f, 0.0f, 0.0f), ma);",
                  "resetCtrl(controller, 11, &Vec2f(speed.m_x, 0.0f), moduleAccesser);")),
]
