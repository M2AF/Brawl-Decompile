VARIANTS=[('reset-param-order',[
    ('const Vec3f& position, const Vec2f& minimum, const Vec2f& maximum','const Vec2f& maximum, const Vec2f& minimum, const Vec3f& position'),
    ('resetObject(&m_object,Vec3f(0.0f,0.0f,0.0f),Vec2f(-40.0f,40.0f),Vec2f(-20.0f,20.0f));','resetObject(&m_object,Vec2f(-20.0f,20.0f),Vec2f(-40.0f,40.0f),Vec3f(0.0f,0.0f,0.0f));')
])]
