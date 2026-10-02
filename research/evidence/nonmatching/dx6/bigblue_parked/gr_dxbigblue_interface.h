#pragma once
#include <st_dxbigblue/gr_dxbigblue.h>

// RTTI-proven interfaces. Ground code remains extracted; unknown setter names
// identify their vtable offsets. Do not extend the already matched base vtable.
class grDxBigBlueBg : public grDxBigBlue {
    void* m_158;
    void* m_15C;
    void* m_160;
public:
    virtual void vf1C8();
    virtual void set1CC(void* p) { m_158 = p; }
    virtual void set1D0(void* p) { m_15C = p; }
    virtual void set1D4(void* p) { m_160 = p; }
};
class grDxBigBlueCourse : public grDxBigBlue {
    char _158[0xC];
    void* m_164;
    void* m_168;
    void* m_16C;
    void* m_170;
    u8 m_174;
    void* m_178;
    void* m_17C;
public:
    virtual void vf1C8();
    virtual void vf1CC();
    virtual void vf1D0();
    virtual void vf1D4();
    virtual void set1D8(void* p) { m_164 = p; }
    virtual void set1DC(void* p) { m_168 = p; }
    virtual void set1E0(void* p) { m_16C = p; }
    virtual void set1E4(void* p) { m_170 = p; }
    virtual void set1E8(u8 index) { m_174 = index; }
    virtual void set1EC(void* p) { m_178 = p; }
    virtual void set1F0(void* p) { m_17C = p; }
};
class grDxBigBlueFly : public grDxBigBlue {
    char _158[4];
    void* m_15C;
    char _160[4];
    void* m_164;
public:
    virtual void vf1C8();
    virtual void vf1CC();
    virtual void set1D0(void* p) { m_15C = p; }
    virtual void set1D4(void* p) { m_164 = p; }
};
class grDxBigBlueAshiba : public grDxBigBlueFly {
    char _168[0x10];
public:
    virtual void vf1D8();
};
class grDxBigBlueAshibaTrainer : public grDxBigBlueAshiba {
    char _178[4];
    void* m_17C;
public:
    virtual void set1DC(void* p) { m_17C = p; }
};
class grDxBigBlueFalcon : public grDxBigBlueFly {};
class grDxBigBlueTyukei : public grDxBigBlueFly {};
class grDxBigBlueCar : public grDxBigBlue {
    void* m_158;
    void* m_15C;
    char _160[0xC];
    u8 m_16C;
    void* m_170;
    void* m_174;
    void* m_178;
public:
    virtual void vf1C8();
    virtual void vf1CC();
    virtual void vf1D0();
    virtual void vf1D4();
    virtual void vf1D8();
    virtual void vf1DC();
    virtual void set1E0(void* p) { m_158 = p; }
    virtual void set1E4(void* p) { m_15C = p; }
    virtual void set1E8(int index) { m_16C = index; }
    virtual void set1EC(void* p) { m_170 = p; }
    virtual void set1F0(void* p) { m_174 = p; }
    virtual void set1F4(void* p) { m_178 = p; }
};
