C = "                ftKineticEnergyController& controller = dynamic_cast<ftKineticEnergyController&>(*moduleAccesser->getKineticModule().getEnergy(2));\n"
R = "                controller.resetEnergy(11, &Vec2f(speed.m_x, 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);\n"
VARIANTS = [
    ("dowhile", [(R, "                do { int type = 11; controller.resetEnergy(type, &Vec2f(speed.m_x, 0.0f), &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser); } while (0);\n")]),
    ("args_named", [(R, "                int type = 11;\n                Vec2f ctrlSpeed(speed.m_x, 0.0f);\n                controller.resetEnergy(type, &ctrlSpeed, &Vec3f(0.0f, 0.0f, 0.0f), moduleAccesser);\n")]),
    ("rot_named", [(R, "                Vec3f rot(0.0f, 0.0f, 0.0f);\n                controller.resetEnergy(11, &Vec2f(speed.m_x, 0.0f), &rot, moduleAccesser);\n")]),
    ("type_after_cast_rot_named", [(C, C + "                int type = 11;\n"), (R, "                Vec2f s(speed.m_x, 0.0f);\n                Vec3f rot(0.0f, 0.0f, 0.0f);\n                controller.resetEnergy(type, &s, &rot, moduleAccesser);\n")]),
]
