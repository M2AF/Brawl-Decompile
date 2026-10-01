#include <gf/gf_archive.h>
#include <gf/gf_3d_scene.h>
#include <gf/gf_task.h>
#include <gm/gm_global.h>
#include <memory.h>
#include <mu/mu_object.h>
#include <nw4r/g3d/g3d_scnmdl.h>

using namespace nw4r::g3d;

static char s_taskName[] = "Telop";
static char s_materialName[] = "lambert42";

// These entry points lack confirmed community names. Keep their original
// symbols until their signatures and names can be established independently.
extern "C" {
u32 fn_8018D568(ResFile*);
void* fn_8018D4D0(ResFile*, int);
void fn_800B6E08(MuObject*, Vec3f*);
void fn_800B70D0(MuObject*, const char*, GXTexObj*);
ResMatTevColor fn_801B01BC(ScnMdl::CopiedMatAccess*);
void fn_80191B9C(ResMatTevColor*, u32, GXColor*);
void fn_80191AA4(ResMatTevColor*, u32, GXColor);
bool fn_80192A44(ResTex*, void**, u16*, u16*, u32*, float*, float*, u8*);
void fn_801F28F0(GXTexObj*, void*, u16, u16, u32, u32, u32, u8);
}

class muAdvTelopTask : public gfTask {
public:
    struct CreateParam {
        u32 textureIndex;
        u32 holdFrames;
        u32 fadeInFrames;
        u32 fadeOutFrames;
        gfArchive* archive;
    };

    gfArchive* m_archive;
    ResTex m_texture;
    MuObject* m_model;
    s32 m_state;
    u32 m_textureIndex;
    u32 m_holdFrames;
    u32 m_fadeInFrames;
    u32 m_fadeOutFrames;
    u32 m_frameCounter;
    float m_alpha;
    float m_rate;
    u32 m_unk6C;
    u8 m_alphaByte;
    u8 m_unk71;

    muAdvTelopTask() : gfTask(s_taskName, Category_Menu, 15, 8, true) {
        m_model = NULL;
        m_frameCounter = 0;
        m_state = 0;
    }
    static muAdvTelopTask* create(CreateParam* param);
    virtual ~muAdvTelopTask();
    virtual void processDefault();
    bool isActive();
    void end();
    void load(gfArchive* archive);

    inline void updateAlpha() {
        ScnMdl* model = m_model->m_scnMdl;
        ResMdl resource = model->m_resMdl;
        ResMat material = resource.GetResMat(s_materialName);
        ScnMdl::CopiedMatAccess access(model, material->m_id);
        ResMatTevColor tev(fn_801B01BC(&access));
        GXColor color;
        fn_80191B9C(&tev, 2, &color);
        color.a = m_alphaByte;
        fn_80191AA4(&tev, 2, color);
    }
};
static_assert(sizeof(muAdvTelopTask) == 0x74, "Telop task layout");

muAdvTelopTask* muAdvTelopTask::create(CreateParam* param) {
    muAdvTelopTask* task = new (static_cast<HeapType>(0x2A)) muAdvTelopTask;
    task->m_holdFrames = param->holdFrames;
    u32 fadeIn = param->fadeInFrames;
    task->m_fadeInFrames = fadeIn;
    task->m_fadeOutFrames = param->fadeOutFrames;
    task->m_textureIndex = param->textureIndex;
    task->m_archive = param->archive;
    if (fadeIn == 0) task->m_fadeInFrames = 1;
    if (task->m_fadeOutFrames == 0) task->m_fadeOutFrames = 1;
    return task;
}

muAdvTelopTask::~muAdvTelopTask() {
    if (m_model != NULL) {
        delete m_model;
        m_model = NULL;
    }
}

void muAdvTelopTask::processDefault() {
    switch (m_state) {
    case 0: {
        load(m_archive);
        m_state = 1; m_unk71 = 255; m_alpha = 0.0f; m_rate = 255.0f / m_fadeInFrames; m_state = 1;
        }
        // Fall through: begin the fade on the frame the model is loaded.
    case 1:
        m_alpha += m_rate;
        if (m_alpha >= 255.0f) {
            m_alpha = 255.0f;
            m_state = 2;
        }
        m_alphaByte = static_cast<int>(m_alpha);
        updateAlpha();
        break;
    case 2:
        // The original checks the next counter value without storing it.
        if (m_frameCounter + 1 >= m_holdFrames) {
            m_rate = -255.0f / m_fadeOutFrames;
            m_state = 3;
        }
        break;
    case 3:
        m_alpha += m_rate;
        if (m_alpha <= 0.0f) {
            m_alpha = 0.0f;
            m_state = 4;
        }
        m_alphaByte = static_cast<int>(m_alpha);
        updateAlpha();
        break;
    case 4:
        m_alphaByte = 0;
        updateAlpha();
        if (m_model != NULL) g_gfSceneRoot->remove(m_model->m_scnMdl);
        m_state = 5;
        break;
    case 5:
        if (m_model != NULL) {
            delete m_model;
            m_model = NULL;
        }
        m_state = 6;
        break;
    }
}

bool muAdvTelopTask::isActive() { return m_state < 6; }

void muAdvTelopTask::end() {
    if (m_state < 4) m_state = 4;
    setPaused(false);
}

void muAdvTelopTask::load(gfArchive* archive) {
    muAdvTelopTask* task = this;
    ResFile file;
    file = ResFile(archive->getData(Data_Type_Model, 1, 0xFFFE));
    ResFile::Init(&file);
    if (fn_8018D568(&file) <= m_textureIndex) m_textureIndex = 0;
    m_texture = ResTex(fn_8018D4D0(&file, m_textureIndex));
    file = ResFile(archive->getData(Data_Type_Model, 0, 0xFFFE));
    ResFile::Init(&file);
    m_model = MuObject::create(&file, s_taskName, 1, NULL, static_cast<HeapType>(0x2A));
    if (!g_GameGlobal->getGlobalRecordMenuDatap()->m_isWidescreen) {
        Vec3f scale(0.677116f, 0.6753247f, 1.0f);
        fn_800B6E08(m_model, &scale);
    } else {
        Vec3f scale(0.9028213f, 0.9004329f, 1.0f);
        fn_800B6E08(m_model, &scale);
    }
    float maxLod, minLod;
    u32 format;
    void* image;
    u16 height, width;
    u8 mipmap;
    fn_80192A44(&m_texture, &image, &width, &height, &format, &minLod, &maxLod, &mipmap);
    GXTexObj texture;
    fn_801F28F0(&texture, image, width, height, format, 0, 0, mipmap);
    fn_800B70D0(m_model, s_materialName, &texture);
    m_alphaByte = 0;
    updateAlpha();
    g_gfSceneRoot->add(gfSceneRoot::Layer_Info, m_model->m_scnMdl);
}
