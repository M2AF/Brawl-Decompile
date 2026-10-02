F = "            float absSpeedX = fabs(speed.m_x);\n"
VARIANTS = [
    ("tmp_var", [(F, "            float x = speed.m_x;\n            float absSpeedX = fabs(x);\n")]),
    ("dbl_arg", [(F, "            float absSpeedX = fabs((double)speed.m_x);\n")]),
    ("dbl_var_cast", [(F, "            double d = fabs(speed.m_x);\n            float absSpeedX = d;\n")]),
    ("decl_then_assign", [(F, "            float absSpeedX;\n            absSpeedX = fabs(speed.m_x);\n")]),
]
