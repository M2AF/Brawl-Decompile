from pathlib import Path
s=Path(__file__).resolve().parents[4].joinpath('brawl-codex6/src/mo_stage/st_dxonett/st_dxonett.cpp').read_text()
start=s.index('static inline void resetObject(');end=s.index('bool stDxOnett::chooseCar(',start)
oldhelper=s[start:end]
helper='''static inline void resetObject(stDxOnettObject84* object, const Vec2f& minimum, const Vec2f& maximum) {
    nw4r::math::_VEC3 position;
    setBound(&position,0.0f,0.0f,0.0f);
    object->mode = 0;
    fn_8009EF8C(object, &position);
    object->minimum.x=minimum.m_x; object->minimum.y=minimum.m_y;
    object->maximum.x=maximum.m_x; object->maximum.y=maximum.m_y;
    object->secondary = 0;
}
'''
common=[('void fn_8009EF8C(void*, Vec3f*);','void fn_8009EF8C(void*, void*);'),
 ('resetObject(&m_object,Vec3f(0.0f,0.0f,0.0f),Vec2f(-40.0f,40.0f),Vec2f(-20.0f,20.0f));','resetObject(&m_object,Vec2f(-40.0f,40.0f),Vec2f(-20.0f,20.0f));')]
VARIANTS=[('inner-pod',common+[(oldhelper,helper)]),
 ('nested-inner-pod',common+[(oldhelper,helper.replace('static inline void resetObject(', 'static inline void resetInner(')+'''static inline void resetObject(stDxOnettObject84* object,const Vec2f& minimum,const Vec2f& maximum) {
    resetInner(object,minimum,maximum);
}
''')])]
