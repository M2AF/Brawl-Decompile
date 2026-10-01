R = "                controller.resetEnergy(11, "
VARIANTS = [(n, [(R, R.replace("(11, ", "(" + a + ", "))]) for n, a in [
    ("u8", "(u8)11"), ("s8", "(s8)11"), ("s16", "(s16)11"), ("u16", "(u16)11"),
    ("bool_math", "11 + 0 * moduleAccesser->getWorkManageModule().isFlag(0)"),
    ("enum_cast", "(soKineticEnergy::Attribute)11"),
]]
