old='Vec3f position(0.0f, 0.0f, 0.0f);\n        Vec2f maximum(-20.0f, 20.0f); Vec2f minimum(-40.0f, 40.0f);'
VARIANTS=[
    ('decl-reverse-fields',[(old,'Vec2f maximum; Vec2f minimum; Vec3f position(0.0f, 0.0f, 0.0f);\n        maximum.m_x=-20.0f; maximum.m_y=20.0f; minimum.m_x=-40.0f; minimum.m_y=40.0f;')]),
    ('decl-reverse-assign',[(old,'Vec2f maximum; Vec2f minimum; Vec3f position(0.0f, 0.0f, 0.0f);\n        maximum=Vec2f(-20.0f,20.0f); minimum=Vec2f(-40.0f,40.0f);')]),
    ('all-scalar-decls',[(old,'Vec2f maximum; Vec2f minimum; Vec3f position;\n        position.m_x=0.0f; position.m_y=0.0f; position.m_z=0.0f; maximum.m_x=-20.0f; maximum.m_y=20.0f; minimum.m_x=-40.0f; minimum.m_y=40.0f;')]),
]
