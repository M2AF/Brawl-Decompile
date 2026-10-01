C = "                ftKineticEnergyController& controller = dynamic_cast<ftKineticEnergyController&>(*moduleAccesser->getKineticModule().getEnergy(2));\n"
R = "                controller.resetEnergy(11, "
def v(decl, arg):
    return [(C, C + "                " + decl + "\n"), (R, R.replace("(11, ", "(" + arg + ", "))]
VARIANTS = [
    ("const_int", v("const int type = 11;", "type")),
    ("register_int", v("register int type = 11;", "type")),
    ("assign_later", v("int type;\n                type = 11;", "type")),
    ("static_const", v("static const int type = 11;", "type")),
    ("enum_local", v("enum { RESET_TYPE = 11 };", "RESET_TYPE")),
    ("ternary", v("int type = controller.isEnable() ? 11 : 11;", "type")),
    ("volatileish_s16", v("s16 type = 11;", "type")),
    ("u32", v("u32 type = 11;", "type")),
]
