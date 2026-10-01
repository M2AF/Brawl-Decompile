from pathlib import Path
base=Path(__file__).resolve().parents[4].joinpath('brawl-codex6/src/mo_stage/st_dxonett/st_dxonett.cpp').read_text()
start=base.index('        Vec3f position(0.0f, 0.0f, 0.0f);')
end=base.index('        m_warningState = 0;',start)
old=base[start:end]
helper='''static inline void resetObject(stDxOnettObject84* object, const Vec2f* minimum, const Vec2f* maximum) {
    Vec3f position(0.0f, 0.0f, 0.0f);
    object->mode = 0;
    fn_8009EF8C(object, &position);
    object->minimum.x=minimum->m_x; object->minimum.y=minimum->m_y;
    object->maximum.x=maximum->m_x; object->maximum.y=maximum->m_y;
    object->secondary = 0;
}
'''
replacement='''        Vec2f maximum(-20.0f,20.0f); Vec2f minimum(-40.0f,40.0f);
        resetObject(&m_object,&minimum,&maximum);
'''
VARIANTS=[('reset-inline',[(old,replacement),('bool stDxOnett::chooseCar(u32 secondary) {',helper+'bool stDxOnett::chooseCar(u32 secondary) {')])]
