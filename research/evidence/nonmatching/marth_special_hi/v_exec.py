RATE = """            float rate = (stick - deadZone) / (1.0f - deadZone);
            rate *= soValueAccesser::getConstantFloat(moduleAccesser, 0xFAB, 0);
            float rot;
            if (moduleAccesser->getControllerModule().getStickX() > 0.0f) {
                rot = -(0.017453292f * rate);
            } else {
                rot = 0.017453292f * rate;
            }"""
RATE_ONE = """            float rot = (stick - deadZone) / (1.0f - deadZone);
            rot *= soValueAccesser::getConstantFloat(moduleAccesser, 0xFAB, 0);
            if (moduleAccesser->getControllerModule().getStickX() > 0.0f) {
                rot = -(0.017453292f * rot);
            } else {
                rot = 0.017453292f * rot;
            }"""
RATE_EXPR = """            float rate = (stick - deadZone) / (1.0f - deadZone) * soValueAccesser::getConstantFloat(moduleAccesser, 0xFAB, 0);
            float rot;
            if (moduleAccesser->getControllerModule().getStickX() > 0.0f) {
                rot = -(0.017453292f * rate);
            } else {
                rot = 0.017453292f * rate;
            }"""
SPEED = "    Vec2f speed = moduleAccesser->getKineticModule().getSumSpeed(soKineticEnergy::ATTRIBUTE_MASK_MAIN);\n    if (moduleAccesser->getWorkManageModule().isFlag(0x22000010)) {"
EN1 = "            if (!moduleAccesser->getKineticModule().getEnergy(1)->isEnable()) {"
EN2 = "            if (!moduleAccesser->getKineticModule().getEnergy(2)->isEnable()) {"
VARIANTS = [
    ("rate_one", [(RATE, RATE_ONE)]),
    ("rate_expr", [(RATE, RATE_EXPR)]),
    ("speed_ctor", [(SPEED, SPEED.replace("Vec2f speed = moduleAccesser->getKineticModule().getSumSpeed(soKineticEnergy::ATTRIBUTE_MASK_MAIN);", "Vec2f speed(moduleAccesser->getKineticModule().getSumSpeed(soKineticEnergy::ATTRIBUTE_MASK_MAIN));"))]),
    ("speed_assign", [(SPEED, SPEED.replace("Vec2f speed = ", "Vec2f speed;\n    speed = "))]),
    ("en_eqfalse", [(EN1, EN1.replace("!moduleAccesser->getKineticModule().getEnergy(1)->isEnable()", "moduleAccesser->getKineticModule().getEnergy(1)->isEnable() == false")),
                    (EN2, EN2.replace("!moduleAccesser->getKineticModule().getEnergy(2)->isEnable()", "moduleAccesser->getKineticModule().getEnergy(2)->isEnable() == false"))]),
    ("en_netrue", [(EN1, EN1.replace("!moduleAccesser->getKineticModule().getEnergy(1)->isEnable()", "moduleAccesser->getKineticModule().getEnergy(1)->isEnable() != true")),
                   (EN2, EN2.replace("!moduleAccesser->getKineticModule().getEnergy(2)->isEnable()", "moduleAccesser->getKineticModule().getEnergy(2)->isEnable() != true"))]),
]
