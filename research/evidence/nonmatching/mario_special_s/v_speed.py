B = "            const Vec2f& speed = gravity->getSpeed();\n"
VARIANTS = [
    ("member_stmt", [(B, "            gravity->getSpeed().m_y;\n")]),
    ("unused_float", [(B, "            float y = gravity->getSpeed().m_y;\n")]),
    ("void_cast", [(B, "            (void)gravity->getSpeed();\n")]),
    ("assign_after", [(B, "            Vec2f speed;\n            speed = gravity->getSpeed();\n")]),
    ("ptr_temp", [(B, "            const Vec2f* speed = &gravity->getSpeed();\n")]),
]
