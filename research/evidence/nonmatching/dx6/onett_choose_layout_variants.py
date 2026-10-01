old='resetObject(&m_object,Vec3f(0.0f,0.0f,0.0f),Vec2f(-40.0f,40.0f),Vec2f(-20.0f,20.0f));'
layout='''struct ResetArgs { Vec3f position; u32 padding; Vec2f minimum; Vec2f maximum; };
        ResetArgs args;
        setPos(&args.position,0.0f,0.0f,0.0f);
        args.maximum.m_x=-20.0f; args.maximum.m_y=20.0f;
        args.minimum.m_x=-40.0f; args.minimum.m_y=40.0f;
        resetObject(&m_object,args.position,args.minimum,args.maximum);'''
VARIANTS=[('typed-frame-layout',[(old,layout)]),
('typed-frame-assign',[(old,layout.replace('args.maximum.m_x=-20.0f; args.maximum.m_y=20.0f;','args.maximum=Vec2f(-20.0f,20.0f);').replace('args.minimum.m_x=-40.0f; args.minimum.m_y=40.0f;','args.minimum=Vec2f(-40.0f,40.0f);'))])]
