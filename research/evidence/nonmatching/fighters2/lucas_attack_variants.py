VARIANTS = [
 ('assign_touch_after_normal', [
 ('touch = 1;\n            normal = ground.getTouchNormal((grCollStatus::TouchMask)1, 0);','normal = ground.getTouchNormal((grCollStatus::TouchMask)1, 0);\n            touch = 1;'),
 ('touch = 4;\n            normal = ground.getTouchNormal((grCollStatus::TouchMask)4, 0);','normal = ground.getTouchNormal((grCollStatus::TouchMask)4, 0);\n            touch = 4;'),
 ('touch = 2;\n            normal = ground.getTouchNormal((grCollStatus::TouchMask)2, 0);','normal = ground.getTouchNormal((grCollStatus::TouchMask)2, 0);\n            touch = 2;')]),
 ('explicit_reflection_temps', [('speed = speed - ((normal * 2.0f) * projection);','Vec2f twice = normal * 2.0f;\n                Vec2f correction = twice * projection;\n                speed = speed - correction;')]),
 ('reflection_reference', [('float projection = normal.m_x * speed.m_x + normal.m_y * speed.m_y;','const Vec2f& collisionNormal = normal;\n                float projection = collisionNormal.m_x * speed.m_x + collisionNormal.m_y * speed.m_y;'),('speed = speed - ((normal * 2.0f) * projection);','speed = speed - ((collisionNormal * 2.0f) * projection);')]),
]
