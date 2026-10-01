PERM_IGNORE(
extern "C" {
typedef enum _va_arg_type {
arg_ARGPOINTER,
arg_WORD,
arg_DOUBLEWORD,
arg_ARGREAL
} _va_arg_type;
typedef struct __va_list_struct {
char gpr;
char fpr;
char* input_arg_area;
char* reg_save_area;
} va_list[1];
void* __va_arg(va_list argp, int type);
}
namespace std {
using ::va_list;
}
extern "C" {
typedef signed long intptr_t;
typedef unsigned long uintptr_t;
typedef intptr_t ptrdiff_t;
typedef unsigned long size_t;
}
namespace std {
using ::intptr_t;
using ::ptrdiff_t;
using ::size_t;
using ::uintptr_t;
}
inline void* operator new(size_t size, void* ptr) {
return ptr;
}
typedef unsigned long long u64;
typedef signed long long s64;
typedef unsigned long u32;
typedef signed long s32;
typedef unsigned short u16;
typedef signed short s16;
typedef unsigned char u8;
typedef signed char s8;
typedef float f32;
typedef double f64;
typedef int UNKWORD;
typedef void UNKTYPE;
enum { FALSE, TRUE };
typedef int BOOL;
typedef void (*funcptr_t)(void);
namespace std {
class nullptr_t {
void operator&() const;
public:
template<typename T>
operator T*() const { return 0; }
template<typename C, typename T>
operator T C::*() const { return 0; }
};
}
const std::nullptr_t nullptr = {};
extern "C" {
int stricmp(const char*, const char*);
char* itoa(int value, char* str, int base);
}
extern "C" {
void* memcpy(void*, const void*, size_t);
void* memset(void*, int, size_t);
void* memfill(const void*, int, size_t);
void* __memfill(const void*, int, size_t);
void* memmove(void*, const void*, size_t);
void* memchr(const void*, int, size_t);
void* __memrchr(const void*, int, size_t);
int memcmp(const void*, const void*, size_t);
}
extern "C" {
char* strcpy(char*, const char*);
char* strncpy(char*, const char*, size_t);
char* strcat(char*, const char*);
char* strncat(char*, const char*, size_t);
int strcmp(const char*, const char*);
int strncmp(const char*, const char*, size_t);
char* strchr(const char*, int);
char* strstr(const char*, const char*);
size_t strlen(const char*);
}
namespace std {
using ::__memrchr;
using ::memchr;
using ::memcmp;
using ::memcpy;
using ::memmove;
using ::memset;
using ::strcat;
using ::strchr;
using ::strcmp;
using ::strcpy;
using ::stricmp;
using ::strlen;
using ::strncat;
using ::strncmp;
using ::strncpy;
using ::strstr;
}
extern "C" {
extern "C" {
typedef enum {
OS_CONTEXT_STATE_FP_SAVED = (1 << 0),
} OSContextState;
typedef struct OSContext {
u32 gprs[32];
u32 cr;
u32 lr;
u32 ctr;
u32 xer;
f64 fprs[32];
u32 fpscr_pad;
u32 fpscr;
u32 srr0;
u32 srr1;
u16 mode;
u16 state;
u32 gqrs[8];
u32 psf_pad;
f64 psfs[32];
} OSContext;
void OSSaveFPUContext(OSContext* ctx);
void OSSetCurrentContext(OSContext* ctx);
OSContext* OSGetCurrentContext(void);
BOOL OSSaveContext(OSContext* ctx);
void OSLoadContext(OSContext* ctx);
void* OSGetStackPointer(void);
void OSSwitchFiber(void* func, void* stack);
void OSSwitchFiberEx(u32 r3, u32 r4, u32 r5, u32 r6, void* func, void* stack);
void OSClearContext(OSContext* ctx);
void OSInitContext(OSContext* ctx, void* _srr0, void* stack);
void OSDumpContext(const OSContext* ctx);
void __OSContextInit(void);
}
extern "C" {
typedef struct OSExecParams {
UNKWORD WORD_0x0;
UNKWORD WORD_0x4;
char UNK_0x8[0x4];
void* regionStart;
void* regionEnd;
char UNK_0x14[0x1C - 0x14];
} OSExecParams;
extern BOOL __OSInReboot;
void __OSGetExecParams(OSExecParams* out);
void __OSLaunchMenu(void);
}
extern "C" {
typedef enum {
OS_CONSOLE_MASK = 0xF0000000,
OS_CONSOLE_MASK_RVL = 0x00000000,
OS_CONSOLE_MASK_EMU = 0x10000000,
OS_CONSOLE_MASK_TDEV = 0x20000000,
OS_CONSOLE_RVL_PP_1 = 0x00000011,
OS_CONSOLE_RVL_PP_2_1 = 0x00000012,
OS_CONSOLE_RVL_PP_2_2 = 0x00000020,
OS_CONSOLE_RVL_EMU = 0x10000008,
OS_CONSOLE_NDEV_1_0 = 0x10000010,
OS_CONSOLE_NDEV_1_1 = 0x10000011,
OS_CONSOLE_NDEV_1_2 = 0x10000012,
OS_CONSOLE_NDEV_2_0 = 0x10000020,
OS_CONSOLE_NDEV_2_1 = 0x10000021,
} OSConsoleType;
typedef enum {
OS_APP_TYPE_IPL = 0x40,
OS_APP_TYPE_DVD = 0x80,
OS_APP_TYPE_CHANNEL = 0x81,
} OSAppType;
typedef enum {
OS_EXC_SYSTEM_RESET,
OS_EXC_MACHINE_CHECK,
OS_EXC_DSI,
OS_EXC_ISI,
OS_EXC_EXT_INTERRUPT,
OS_EXC_ALIGNMENT,
OS_EXC_PROGRAM,
OS_EXC_FP_UNAVAIL,
OS_EXC_DECREMENTER,
OS_EXC_SYSTEM_CALL,
OS_EXC_TRACE,
OS_EXC_PERF_MONITOR,
OS_EXC_IABR,
OS_EXC_SMI,
OS_EXC_THERMAL_INT,
OS_EXC_MAX
} OSExceptionType;
typedef struct OSIOSRev {
u8 idHi;
u8 idLo;
u8 verMajor;
u8 verMinor;
u8 buildMon;
u8 buildDay;
u16 buildYear;
} OSIOSRev;
typedef void (*OSExceptionHandler)(u8 type, OSContext* ctx);
extern BOOL __OSInIPL;
extern BOOL __OSInNandBoot;
extern BOOL __OSIsGcam;
extern s64 __OSStartTime;
extern OSExecParams __OSRebootParams;
void __OSFPRInit(void);
u32 __OSGetHollywoodRev(void);
void __OSGetIOSRev(OSIOSRev* rev);
u32 OSGetConsoleType(void);
void OSInit(void);
OSExceptionHandler __OSSetExceptionHandler(u8 type, OSExceptionHandler handler);
OSExceptionHandler __OSGetExceptionHandler(u8 type);
void OSDefaultExceptionHandler(u8 type, OSContext* ctx);
void __OSPSInit(void);
u32 __OSGetDIConfig(void);
void OSRegisterVersion(const char* ver);
const char* OSGetAppGamename(void);
u8 OSGetAppType(void);
}
extern "C" {
static inline void* OSPhysicalToCached(u32 ofs) {
return (void*)(ofs + 0x80000000);
}
static inline void* OSPhysicalToUncached(u32 ofs) {
return (void*)(ofs + 0xC0000000);
}
static inline void* OSCachedToPhysical(const void* ofs) {
return (u8*)ofs - 0x80000000;
}
}
extern "C" {
typedef struct OSAlarm OSAlarm;
typedef struct OSContext OSContext;
typedef void (*OSAlarmHandler)(OSAlarm* alarm, OSContext* ctx);
typedef struct OSAlarm {
OSAlarmHandler handler;
u32 tag;
s64 end;
OSAlarm* prev;
OSAlarm* next;
s64 period;
s64 start;
void* userData;
} OSAlarm;
typedef struct OSAlarmQueue {
OSAlarm* head;
OSAlarm* tail;
} OSAlarmQueue;
void __OSInitAlarm(void);
void OSCreateAlarm(OSAlarm* alarm);
void OSSetAlarm(OSAlarm* alarm, s64 tick, OSAlarmHandler handler);
void OSSetPeriodicAlarm(OSAlarm* alarm, s64 tick, s64 period,
OSAlarmHandler handler);
void OSCancelAlarm(OSAlarm* alarm);
void OSSetAlarmTag(OSAlarm* alarm, u32 tag);
void OSSetAlarmUserData(OSAlarm* alarm, void* userData);
void* OSGetAlarmUserData(const OSAlarm* alarm);
}
extern "C" {
extern volatile s32 __OSCurrHeap;
void* OSAllocFromHeap(s32 handle, s32 size);
void OSFreeToHeap(s32 handle, void* p);
s32 OSSetCurrentHeap(s32 handle);
void* OSInitAlloc(void* start, void* end, s32 numHeaps);
s32 OSCreateHeap(void* start, void* end);
}
extern "C" {
void* OSGetMEM1ArenaHi(void);
void* OSGetMEM2ArenaHi(void);
void* OSGetArenaHi(void);
void* OSGetMEM1ArenaLo(void);
void* OSGetMEM2ArenaLo(void);
void* OSGetArenaLo(void);
void OSSetMEM1ArenaHi(void* hi);
void OSSetMEM2ArenaHi(void* hi);
void OSSetArenaHi(void* hi);
void OSSetMEM1ArenaLo(void* lo);
void OSSetMEM2ArenaLo(void* lo);
void OSSetArenaLo(void* lo);
void* OSAllocFromMEM1ArenaLo(size_t size, u32 align);
}
extern "C" {
void __OSInitAudioSystem(void);
void __OSStopAudioSystem(void);
}
extern "C" {
typedef struct OSContext OSContext;
void DCEnable(void);
void DCInvalidateRange(const void* buf, u32 len);
void DCFlushRange(const void* buf, u32 len);
void DCStoreRange(const void* buf, u32 len);
void DCFlushRangeNoSync(const void* buf, u32 len);
void DCStoreRangeNoSync(const void* buf, u32 len);
void DCZeroRange(const void* buf, u32 len);
void ICInvalidateRange(const void* buf, u32 len);
void ICFlashInvalidate(void);
void ICEnable(void);
void LCEnable(void);
void LCDisable(void);
void LCLoadBlocks(void* dst, const void* src, u32 blocks);
void LCStoreBlocks(void* dst, const void* src, u32 blocks);
u32 LCStoreData(void* dst, const void* src, u32 len);
u32 LCQueueLength(void);
void LCQueueWait(u32 n);
void L2Enable(void);
void L2Disable(void);
void L2GlobalInvalidate(void);
void DMAErrorHandler(u8 error, OSContext* ctx, u32 dsisr, u32 dar, ...);
void __OSCacheInit(void);
}
extern "C" {
typedef struct OSContext OSContext;
typedef enum {
OS_ERR_SYSTEM_RESET,
OS_ERR_MACHINE_CHECK,
OS_ERR_DSI,
OS_ERR_ISI,
OS_ERR_EXT_INTERRUPT,
OS_ERR_ALIGNMENT,
OS_ERR_PROGRAM,
OS_ERR_FP_UNAVAIL,
OS_ERR_DECREMENTER,
OS_ERR_SYSTEM_CALL,
OS_ERR_TRACE,
OS_ERR_PERF_MONITOR,
OS_ERR_IABR,
OS_ERR_SMI,
OS_ERR_THERMAL_INT,
OS_ERR_PROTECTION,
OS_ERR_FP_EXCEPTION,
OS_ERR_MAX
} OSErrorType;
typedef void (*OSErrorHandler)(u8 error, OSContext* ctx, u32 dsisr, u32 dar,
...);
extern OSErrorHandler __OSErrorTable[OS_ERR_MAX];
extern u32 __OSFpscrEnableBits;
__declspec(weak) void OSReport(const char* msg, ...);
__declspec(weak) void OSPanic(const char* file, int line, const char* msg, ...);
OSErrorHandler OSSetErrorHandler(u16 error, OSErrorHandler handler);
void __OSUnhandledException(u8 error, OSContext* ctx, u32 dsisr, u32 dar);
}
extern "C" {
static inline void OSInitFastCast(void) {
asm {
li r3, 4
oris r3, r3, 4
mtspr 0x392, r3
li r3, 5
oris r3, r3, 5
mtspr 0x393, r3
li r3, 6
oris r3, r3, 6
mtspr 0x394, r3
li r3, 7
oris r3, r3, 7
mtspr 0x395, r3
}
}
static inline void OSSetGQR6(register u32 type, register u32 scale) {
register u32 val = ((scale << 8 | type) << 16) | ((scale << 8) | type);
asm {
mtspr 0x396, val
}
}
static inline void OSSetGQR7(register u32 type, register u32 scale) {
register u32 val = ((scale << 8 | type) << 16) | ((scale << 8) | type);
asm {
mtspr 0x397, val
}
}
static inline f32 __OSu8tof32(register u8* in) {
register f32 ret;
asm {
psq_l ret, 0(in), 1, 2
}
return ret;
}
static inline void OSu8tof32(u8* in, volatile f32* out) {
*out = __OSu8tof32(in);
}
static inline f32 __OSu16tof32(register u16* arg) {
register f32 ret;
asm {
psq_l ret, 0(arg), 1, 3
}
return ret;
}
static inline void OSu16tof32(u16* in, volatile f32* out) {
*out = __OSu16tof32(in);
}
static inline f32 __OSs16tof32(register s16* arg) {
register f32 ret;
asm {
psq_l ret, 0(arg), 1, 5
}
return ret;
}
static inline void OSs16tof32(s16* in, volatile f32* out) {
*out = __OSs16tof32(in);
}
static inline u8 __OSf32tou8(register f32 arg) {
f32 a;
register f32* ptr = &a;
u8 r;
asm {
psq_st arg, 0(ptr), 1, 2
}
r = *(u8*)ptr;
return r;
}
static inline void OSf32tou8(f32* in, volatile u8* out) {
*out = __OSf32tou8(*in);
}
static inline u16 __OSf32tou16(register f32 arg) {
f32 a;
register f32* ptr = &a;
u16 r;
asm {
psq_st arg, 0(ptr), 1, 3
}
r = *(u16*)ptr;
return r;
}
static inline void OSf32tou16(f32* in, volatile u16* out) {
*out = __OSf32tou16(*in);
}
static inline s16 __OSf32tos16(register f32 arg) {
f32 a;
register f32* ptr = &a;
s16 r;
asm {
psq_st arg, 0(ptr), 1, 5
}
r = *(s16*)ptr;
return r;
}
static inline void OSf32tos16(f32* in, volatile s16* out) {
*out = __OSf32tos16(*in);
}
}
extern "C" {
typedef unsigned char GXBool;
typedef struct _GXColor {
u8 r, g, b, a;
} GXColor;
typedef struct _GXColorS10 {
s16 r, g, b, a;
} GXColorS10;
typedef enum _GXAlphaOp {
GX_AOP_AND,
GX_AOP_OR,
GX_AOP_XOR,
GX_AOP_XNOR,
GX_MAX_ALPHAOP
} GXAlphaOp;
typedef enum _GXAnisotropy {
GX_ANISO_1,
GX_ANISO_2,
GX_ANISO_4,
GX_MAX_ANISOTROPY
} GXAnisotropy;
typedef enum _GXAttnFn {
GX_AF_SPEC,
GX_AF_SPOT,
GX_AF_NONE,
} GXAttnFn;
typedef enum _GXAttr {
GX_VA_PNMTXIDX,
GX_VA_TEX0MTXIDX,
GX_VA_TEX1MTXIDX,
GX_VA_TEX2MTXIDX,
GX_VA_TEX3MTXIDX,
GX_VA_TEX4MTXIDX,
GX_VA_TEX5MTXIDX,
GX_VA_TEX6MTXIDX,
GX_VA_TEX7MTXIDX,
GX_VA_POS,
GX_VA_NRM,
GX_VA_CLR0,
GX_VA_CLR1,
GX_VA_TEX0,
GX_VA_TEX1,
GX_VA_TEX2,
GX_VA_TEX3,
GX_VA_TEX4,
GX_VA_TEX5,
GX_VA_TEX6,
GX_VA_TEX7,
GX_POS_MTX_ARRAY,
GX_NRM_MTX_ARRAY,
GX_TEX_MTX_ARRAY,
GX_LIGHT_ARRAY,
GX_VA_NBT,
GX_VA_MAX_ATTR,
GX_VA_NULL = 255
} GXAttr;
typedef enum _GXAttrType {
GX_NONE,
GX_DIRECT,
GX_INDEX8,
GX_INDEX16
} GXAttrType;
typedef enum _GXBlendFactor {
GX_BL_ZERO,
GX_BL_ONE,
GX_BL_SRCCLR,
GX_BL_INVSRCCLR,
GX_BL_SRCALPHA,
GX_BL_INVSRCALPHA,
GX_BL_DSTALPHA,
GX_BL_INVDSTALPHA,
GX_BL_DSTCLR = GX_BL_SRCCLR,
GX_BL_INVDSTCLR = GX_BL_INVSRCCLR
} GXBlendFactor;
typedef enum _GXBlendMode {
GX_BM_NONE,
GX_BM_BLEND,
GX_BM_LOGIC,
GX_BM_SUBTRACT,
GX_MAX_BLENDMODE
} GXBlendMode;
typedef enum _GXChannelID {
GX_COLOR0,
GX_COLOR1,
GX_ALPHA0,
GX_ALPHA1,
GX_COLOR0A0,
GX_COLOR1A1,
GX_COLOR_ZERO,
GX_ALPHA_BUMP,
GX_ALPHA_BUMPN,
GX_COLOR_NULL = 255
} GXChannelID;
typedef enum _GXCITexFmt {
GX_TF_C4 = 8,
GX_TF_C8,
GX_TF_C14X2,
} GXCITexFmt;
typedef enum _GXClearZ {
GX_CLEAR_Z_MIN = 0,
GX_CLEAR_Z_MAX = (1 << 24) - 1,
} GXClearZ;
typedef enum _GXClipMode {
GX_CLIP_ENABLE,
GX_CLIP_DISABLE,
} GXClipMode;
typedef enum _GXColorSrc { GX_SRC_REG, GX_SRC_VTX } GXColorSrc;
typedef enum _GXCompare {
GX_NEVER,
GX_LESS,
GX_EQUAL,
GX_LEQUAL,
GX_GREATER,
GX_NEQUAL,
GX_GEQUAL,
GX_ALWAYS
} GXCompare;
typedef enum _GXCompCnt {
GX_POS_XY = 0,
GX_POS_XYZ,
GX_NRM_XYZ = 0,
GX_NRM_NBT,
GX_NRM_NBT3,
GX_CLR_RGB = 0,
GX_CLR_RGBA,
GX_TEX_S = 0,
GX_TEX_ST
} GXCompCnt;
typedef enum _GXCompType {
GX_U8,
GX_S8,
GX_U16,
GX_S16,
GX_F32,
GX_RGB565 = 0,
GX_RGB8,
GX_RGBX8,
GX_RGBA4,
GX_RGBA6,
GX_RGBA8
} GXCompType;
typedef enum _GXCopyClamp {
GX_CLAMP_NONE,
GX_CLAMP_TOP,
GX_CLAMP_BOTTOM,
GX_CLAMP_ALL,
} GXCopyClamp;
typedef enum _GXCullMode {
GX_CULL_NONE,
GX_CULL_FRONT,
GX_CULL_BACK,
GX_CULL_ALL
} GXCullMode;
typedef enum _GXDiffuseFn { GX_DF_NONE, GX_DF_SIGN, GX_DF_CLAMP } GXDiffuseFn;
typedef enum _GXDirtyFlag {
GX_DIRTY_SU_TEX = (1 << 0),
GX_DIRTY_BP_MASK = (1 << 1),
GX_DIRTY_GEN_MODE = (1 << 2),
GX_DIRTY_VCD = (1 << 3),
GX_DIRTY_VAT = (1 << 4),
GX_DIRTY_AMB_COLOR0 = (1 << 8),
GX_DIRTY_AMB_COLOR1 = (1 << 9),
GX_DIRTY_MAT_COLOR0 = (1 << 10),
GX_DIRTY_MAT_COLOR1 = (1 << 11),
GX_DIRTY_CHAN_COLOR0 = (1 << 12),
GX_DIRTY_CHAN_COLOR1 = (1 << 13),
GX_DIRTY_CHAN_ALPHA0 = (1 << 14),
GX_DIRTY_CHAN_ALPHA1 = (1 << 15),
GX_DIRTY_TEX0 = (1 << 16),
GX_DIRTY_TEX1 = (1 << 17),
GX_DIRTY_TEX2 = (1 << 18),
GX_DIRTY_TEX3 = (1 << 19),
GX_DIRTY_TEX4 = (1 << 20),
GX_DIRTY_TEX5 = (1 << 21),
GX_DIRTY_TEX6 = (1 << 22),
GX_DIRTY_TEX7 = (1 << 23),
GX_DIRTY_NUM_COLORS = (1 << 24),
GX_DIRTY_NUM_TEX = (1 << 25),
GX_DIRTY_MTX_IDX = (1 << 26),
GX_DIRTY_PROJECTION = (1 << 27),
GX_DIRTY_VIEWPORT = (1 << 28),
GX_AMB_MAT_MASK = GX_DIRTY_AMB_COLOR0 | GX_DIRTY_AMB_COLOR1 |
GX_DIRTY_MAT_COLOR0 | GX_DIRTY_MAT_COLOR1,
GX_LIGHT_CHAN_MASK = GX_DIRTY_CHAN_COLOR0 | GX_DIRTY_CHAN_COLOR1 |
GX_DIRTY_CHAN_ALPHA0 | GX_DIRTY_CHAN_ALPHA1 |
GX_DIRTY_NUM_COLORS,
GX_TEX_GEN_MASK = 0x2FF0000,
} GXDirtyFlag;
typedef enum _GXDistAttnFn {
GX_DA_OFF,
GX_DA_GENTLE,
GX_DA_MEDIUM,
GX_DA_STEEP
} GXDistAttnFn;
typedef enum _GXFogType {
GX_FOG_NONE,
GX_FOG_PERSP_LIN = 2,
GX_FOG_PERSP_EXP = 4,
GX_FOG_PERSP_EXP2 = 5,
GX_FOG_PERSP_REVEXP = 6,
GX_FOG_PERSP_REVEXP2 = 7,
GX_FOG_ORTHO_LIN = 1 << 3 | GX_FOG_PERSP_LIN,
GX_FOG_ORTHO_EXP = 1 << 3 | GX_FOG_PERSP_EXP,
GX_FOG_ORTHO_EXP2 = 1 << 3 | GX_FOG_PERSP_EXP2,
GX_FOG_ORTHO_REVEXP = 1 << 3 | GX_FOG_PERSP_REVEXP,
GX_FOG_ORTHO_REVEXP2 = 1 << 3 | GX_FOG_PERSP_REVEXP2
} GXFogType;
typedef enum _GXIndTexAlphaSel {
GX_ITBA_OFF,
GX_ITBA_S,
GX_ITBA_T,
GX_ITBA_U,
GX_MAX_ITBALPHA
} GXIndTexAlphaSel;
typedef enum _GXIndTexBiasSel {
GX_ITB_NONE,
GX_ITB_S,
GX_ITB_T,
GX_ITB_ST,
GX_ITB_U,
GX_ITB_SU,
GX_ITB_TU,
GX_ITB_STU,
GX_MAX_ITBIAS
} GXIndTexBiasSel;
typedef enum _GXIndTexFormat {
GX_ITF_8,
GX_ITF_5,
GX_ITF_4,
GX_ITF_3,
GX_MAX_ITFORMAT
} GXIndTexFormat;
typedef enum _GXIndTexMtxID {
GX_ITM_OFF,
GX_ITM_0,
GX_ITM_1,
GX_ITM_2,
GX_ITM_S0 = 5,
GX_ITM_S1,
GX_ITM_S2,
GX_ITM_T0 = 9,
GX_ITM_T1,
GX_ITM_T2,
} GXIndTexMtxID;
typedef enum _GXIndTexScale {
GX_ITS_1,
GX_ITS_2,
GX_ITS_4,
GX_ITS_8,
GX_ITS_16,
GX_ITS_32,
GX_ITS_64,
GX_ITS_128,
GX_ITS_256,
GX_MAX_ITSCALE
} GXIndTexScale;
typedef enum _GXIndTexStageID {
GX_INDTEXSTAGE0,
GX_INDTEXSTAGE1,
GX_INDTEXSTAGE2,
GX_INDTEXSTAGE3,
GX_MAX_INDTEXSTAGE
} GXIndTexStageID;
typedef enum _GXIndTexWrap {
GX_ITW_OFF,
GX_ITW_256,
GX_ITW_128,
GX_ITW_64,
GX_ITW_32,
GX_ITW_16,
GX_ITW_0,
GX_MAX_ITWRAP,
} GXIndTexWrap;
typedef enum _GXLightID {
GX_LIGHT0 = (1 << 0),
GX_LIGHT1 = (1 << 1),
GX_LIGHT2 = (1 << 2),
GX_LIGHT3 = (1 << 3),
GX_LIGHT4 = (1 << 4),
GX_LIGHT5 = (1 << 5),
GX_LIGHT6 = (1 << 6),
GX_LIGHT7 = (1 << 7),
GX_MAX_LIGHT = (1 << 8),
GX_LIGHT_NULL = 0
} GXLightID;
typedef enum _GXLogicOp {
GX_LO_CLEAR,
GX_LO_AND,
GX_LO_REVAND,
GX_LO_COPY,
GX_LO_INVAND,
GX_LO_NOOP,
GX_LO_XOR,
GX_LO_OR,
GX_LO_NOR,
GX_LO_EQUIV,
GX_LO_INV,
GX_LO_REVOR,
GX_LO_INVCOPY,
GX_LO_INVOR,
GX_LO_NAND,
GX_LO_SET
} GXLogicOp;
typedef enum _GXMtxType {
GX_MTX_3x4,
GX_MTX_2x4,
} GXMtxType;
typedef enum _GXPixelFmt {
GX_PF_RGB8_Z24,
GX_PF_RGBA6_Z24,
GX_PF_RGBA565_Z16,
GX_PF_Z24,
GX_PF_Y8,
GX_PF_U8,
GX_PF_V8,
GX_PF_YUV420,
GX_MAX_PIXELFMT
} GXPixelFmt;
typedef enum _GXPosNrmMtx {
GX_PNMTX0 = 0,
GX_PNMTX1 = 3,
GX_PNMTX2 = 6,
GX_PNMTX3 = 9,
GX_PNMTX4 = 12,
GX_PNMTX5 = 15,
GX_PNMTX6 = 18,
GX_PNMTX7 = 21,
GX_PNMTX8 = 24,
GX_PNMTX9 = 27
} GXPosNrmMtx;
typedef enum _GXPrimitive {
GX_POINTS = 0xB8,
GX_LINES = 0xA8,
GX_LINESTRIP = 0xB0,
GX_TRIANGLES = 0x90,
GX_TRIANGLESTRIP = 0x98,
GX_TRIANGLEFAN = 0xA0,
GX_QUADS = 0x80,
} GXPrimitive;
typedef enum _GXProjectionType {
GX_PERSPECTIVE,
GX_ORTHOGRAPHIC
} GXProjectionType;
typedef enum _GXSpotFn {
GX_SP_OFF,
GX_SP_FLAT,
GX_SP_COS,
GX_SP_COS2,
GX_SP_SHARP,
GX_SP_RING1,
GX_SP_RING2
} GXSpotFn;
typedef enum _GXTevAlphaArg {
GX_CA_APREV,
GX_CA_A0,
GX_CA_A1,
GX_CA_A2,
GX_CA_TEXA,
GX_CA_RASA,
GX_CA_KONST,
GX_CA_ZERO,
GX_CA_ONE
} GXTevAlphaArg;
typedef enum _GXTevBias {
GX_TB_ZERO,
GX_TB_ADDHALF,
GX_TB_SUBHALF,
GX_MAX_TEVBIAS
} GXTevBias;
typedef enum _GXTevColorArg {
GX_CC_CPREV,
GX_CC_APREV,
GX_CC_C0,
GX_CC_A0,
GX_CC_C1,
GX_CC_A1,
GX_CC_C2,
GX_CC_A2,
GX_CC_TEXC,
GX_CC_TEXA,
GX_CC_RASC,
GX_CC_RASA,
GX_CC_ONE,
GX_CC_HALF,
GX_CC_KONST,
GX_CC_ZERO,
GX_CC_TEXRRR,
GX_CC_TEXGGG,
GX_CC_TEXBBB,
GX_CC_QUARTER = GX_CC_KONST
} GXTevColorArg;
typedef enum _GXTevColorChan {
GX_CH_RED,
GX_CH_GREEN,
GX_CH_BLUE,
GX_CH_ALPHA
} GXTevColorChan;
typedef enum _GXTevOp {
GX_TEV_ADD,
GX_TEV_SUB,
GX_TEV_COMP_R8_GT = 8,
GX_TEV_COMP_R8_EQ,
GX_TEV_COMP_GR16_GT,
GX_TEV_COMP_GR16_EQ,
GX_TEV_COMP_BGR24_GT,
GX_TEV_COMP_BGR24_EQ,
GX_TEV_COMP_RGB8_GT,
GX_TEV_COMP_RGB8_EQ,
GX_TEV_COMP_A8_GT = GX_TEV_COMP_RGB8_GT,
GX_TEV_COMP_A8_EQ = GX_TEV_COMP_RGB8_EQ
} GXTevOp;
typedef enum _GXTevRegID {
GX_TEVPREV,
GX_TEVREG0,
GX_TEVREG1,
GX_TEVREG2,
GX_MAX_TEVREG
} GXTevRegID;
typedef enum _GXTevScale {
GX_CS_SCALE_1,
GX_CS_SCALE_2,
GX_CS_SCALE_4,
GX_CS_DIVIDE_2,
GX_MAX_TEVSCALE
} GXTevScale;
typedef enum _GXTevStageID {
GX_TEVSTAGE0,
GX_TEVSTAGE1,
GX_TEVSTAGE2,
GX_TEVSTAGE3,
GX_TEVSTAGE4,
GX_TEVSTAGE5,
GX_TEVSTAGE6,
GX_TEVSTAGE7,
GX_TEVSTAGE8,
GX_TEVSTAGE9,
GX_TEVSTAGE10,
GX_TEVSTAGE11,
GX_TEVSTAGE12,
GX_TEVSTAGE13,
GX_TEVSTAGE14,
GX_TEVSTAGE15,
GX_MAX_TEVSTAGE
} GXTevStageID;
typedef enum _GXTevSwapSel {
GX_TEV_SWAP0,
GX_TEV_SWAP1,
GX_TEV_SWAP2,
GX_TEV_SWAP3,
GX_MAX_TEVSWAP
} GXTevSwapSel;
typedef enum _GXTevKAlphaSel {
GX_TEV_KASEL_8_8,
GX_TEV_KASEL_7_8,
GX_TEV_KASEL_6_8,
GX_TEV_KASEL_5_8,
GX_TEV_KASEL_4_8,
GX_TEV_KASEL_3_8,
GX_TEV_KASEL_2_8,
GX_TEV_KASEL_1_8,
GX_TEV_KASEL_1 = 0,
GX_TEV_KASEL_3_4 = 2,
GX_TEV_KASEL_1_2 = 4,
GX_TEV_KASEL_1_4 = 6,
GX_TEV_KASEL_K0_R = 16,
GX_TEV_KASEL_K1_R,
GX_TEV_KASEL_K2_R,
GX_TEV_KASEL_K3_R,
GX_TEV_KASEL_K0_G,
GX_TEV_KASEL_K1_G,
GX_TEV_KASEL_K2_G,
GX_TEV_KASEL_K3_G,
GX_TEV_KASEL_K0_B,
GX_TEV_KASEL_K1_B,
GX_TEV_KASEL_K2_B,
GX_TEV_KASEL_K3_B,
GX_TEV_KASEL_K0_A,
GX_TEV_KASEL_K1_A,
GX_TEV_KASEL_K2_A,
GX_TEV_KASEL_K3_A
} GXTevKAlphaSel;
typedef enum _GXTevKColorID {
GX_KCOLOR0,
GX_KCOLOR1,
GX_KCOLOR2,
GX_KCOLOR3,
GX_MAX_KCOLOR
} GXTevKColorID;
typedef enum _GXTevKColorSel {
GX_TEV_KCSEL_8_8,
GX_TEV_KCSEL_7_8,
GX_TEV_KCSEL_6_8,
GX_TEV_KCSEL_5_8,
GX_TEV_KCSEL_4_8,
GX_TEV_KCSEL_3_8,
GX_TEV_KCSEL_2_8,
GX_TEV_KCSEL_1_8,
GX_TEV_KCSEL_1 = 0,
GX_TEV_KCSEL_3_4 = 2,
GX_TEV_KCSEL_1_2 = 4,
GX_TEV_KCSEL_1_4 = 6,
GX_TEV_KCSEL_K0 = 12,
GX_TEV_KCSEL_K1,
GX_TEV_KCSEL_K2,
GX_TEV_KCSEL_K3,
GX_TEV_KCSEL_K0_R,
GX_TEV_KCSEL_K1_R,
GX_TEV_KCSEL_K2_R,
GX_TEV_KCSEL_K3_R,
GX_TEV_KCSEL_K0_G,
GX_TEV_KCSEL_K1_G,
GX_TEV_KCSEL_K2_G,
GX_TEV_KCSEL_K3_G,
GX_TEV_KCSEL_K0_B,
GX_TEV_KCSEL_K1_B,
GX_TEV_KCSEL_K2_B,
GX_TEV_KCSEL_K3_B,
GX_TEV_KCSEL_K0_A,
GX_TEV_KCSEL_K1_A,
GX_TEV_KCSEL_K2_A,
GX_TEV_KCSEL_K3_A
} GXTevKColorSel;
typedef enum _GXTevMode {
GX_MODULATE,
GX_DECAL,
GX_REPLACE,
GX_PASSCLR,
GX_BLEND
} GXTevMode;
typedef enum _GXTexCoordID {
GX_TEXCOORD0,
GX_TEXCOORD1,
GX_TEXCOORD2,
GX_TEXCOORD3,
GX_TEXCOORD4,
GX_TEXCOORD5,
GX_TEXCOORD6,
GX_TEXCOORD7,
GX_MAX_TEXCOORD,
GX_TEXCOORD_NULL = 255
} GXTexCoordID;
typedef enum _GXTexFilter {
GX_NEAR,
GX_LINEAR,
GX_NEAR_MIP_NEAR,
GX_LIN_MIP_NEAR,
GX_NEAR_MIP_LIN,
GX_LIN_MIP_LIN,
} GXTexFilter;
typedef enum _GXTexFmt {
GX_TF_I4,
GX_TF_I8,
GX_TF_IA4,
GX_TF_IA8,
GX_TF_RGB565,
GX_TF_RGB5A3,
GX_TF_RGBA8,
GX_TF_CMPR = 14,
GX_CTF_R4 = 32,
GX_CTF_RA4 = 34,
GX_CTF_RA8 = 35,
GX_CTF_YUVA8 = 38,
GX_CTF_A8 = 39,
GX_CTF_R8 = 40,
GX_CTF_G8 = 41,
GX_CTF_B8 = 42,
GX_CTF_RG8 = 43,
GX_CTF_GB8 = 44,
GX_TF_Z8 = 17,
GX_TF_Z16 = 19,
GX_TF_Z24X8 = 22,
GX_CTF_Z4 = 48,
GX_CTF_Z8M = 57,
GX_CTF_Z8L = 58,
GX_CTF_Z16L = 60,
GX_TF_A8 = GX_CTF_YUVA8
} GXTexFmt;
typedef enum _GXTexGenSrc {
GX_TG_POS,
GX_TG_NRM,
GX_TG_BINRM,
GX_TG_TANGENT,
GX_TG_TEX0,
GX_TG_TEX1,
GX_TG_TEX2,
GX_TG_TEX3,
GX_TG_TEX4,
GX_TG_TEX5,
GX_TG_TEX6,
GX_TG_TEX7,
GX_TG_TEXCOORD0,
GX_TG_TEXCOORD1,
GX_TG_TEXCOORD2,
GX_TG_TEXCOORD3,
GX_TG_TEXCOORD4,
GX_TG_TEXCOORD5,
GX_TG_TEXCOORD6,
GX_TG_COLOR0,
GX_TG_COLOR1,
} GXTexGenSrc;
typedef enum _GXTexGenType {
GX_TG_MTX3x4,
GX_TG_MTX2x4,
GX_TG_BUMP0,
GX_TG_BUMP1,
GX_TG_BUMP2,
GX_TG_BUMP3,
GX_TG_BUMP4,
GX_TG_BUMP5,
GX_TG_BUMP6,
GX_TG_BUMP7,
GX_TG_SRTG
} GXTexGenType;
typedef enum _GXTexMapID {
GX_TEXMAP0,
GX_TEXMAP1,
GX_TEXMAP2,
GX_TEXMAP3,
GX_TEXMAP4,
GX_TEXMAP5,
GX_TEXMAP6,
GX_TEXMAP7,
GX_MAX_TEXMAP,
GX_TEXMAP_NULL = 255,
GX_TEX_DISABLE
} GXTexMapID;
typedef enum _GXTexMtx {
GX_TEXMTX0 = 30,
GX_TEXMTX1 = 33,
GX_TEXMTX2 = 36,
GX_TEXMTX3 = 39,
GX_TEXMTX4 = 42,
GX_TEXMTX5 = 45,
GX_TEXMTX6 = 48,
GX_TEXMTX7 = 51,
GX_TEXMTX8 = 54,
GX_TEXMTX9 = 57,
GX_TEXMTX_IDENT = 60,
GX_DUALMTX0 = 64,
GX_DUALMTX1 = 67,
GX_DUALMTX2 = 70,
GX_DUALMTX3 = 73,
GX_DUALMTX4 = 76,
GX_DUALMTX5 = 79,
GX_DUALMTX6 = 82,
GX_DUALMTX7 = 85,
GX_DUALMTX8 = 88,
GX_DUALMTX9 = 91,
GX_DUALMTX10 = 94,
GX_DUALMTX11 = 97,
GX_DUALMTX12 = 100,
GX_DUALMTX13 = 103,
GX_DUALMTX14 = 106,
GX_DUALMTX15 = 109,
GX_DUALMTX16 = 112,
GX_DUALMTX17 = 115,
GX_DUALMTX18 = 118,
GX_DUALMTX19 = 121,
GX_DUALMTX_IDENT = 125,
} GXTexMtx;
typedef enum _GXTexWrapMode {
GX_CLAMP,
GX_REPEAT,
GX_MIRROR,
GX_MAX_TEXWRAPMODE
} GXTexWrapMode;
typedef enum _GXTlut {
GX_TLUT0,
GX_TLUT1,
GX_TLUT2,
GX_TLUT3,
GX_TLUT4,
GX_TLUT5,
GX_TLUT6,
GX_TLUT7,
GX_TLUT8,
GX_TLUT9,
GX_TLUT10,
GX_TLUT11,
GX_TLUT12,
GX_TLUT13,
GX_TLUT14,
GX_TLUT15,
GX_BIGTLUT0,
GX_BIGTLUT1,
GX_BIGTLUT2,
GX_BIGTLUT3,
} GXTlut;
typedef enum _GXTlutFmt {
GX_TL_IA8,
GX_TL_RGB565,
GX_TL_RGB5A3,
GX_MAX_TLUTFMT
} GXTlutFmt;
typedef enum _GXVtxFmt {
GX_VTXFMT0,
GX_VTXFMT1,
GX_VTXFMT2,
GX_VTXFMT3,
GX_VTXFMT4,
GX_VTXFMT5,
GX_VTXFMT6,
GX_VTXFMT7,
GX_MAX_VTXFMT
} GXVtxFmt;
typedef enum _GXZFmt16 {
GX_ZC_LINEAR,
GX_ZC_NEAR,
GX_ZC_MID,
GX_ZC_FAR,
} GXZFmt16;
typedef enum _GXZTexOp {
GX_ZT_DISABLE,
GX_ZT_ADD,
GZ_ZT_REPLACE,
GX_MAX_ZTEXOP
} GXZTexOp;
}
extern "C" {
void OSFatal(GXColor textColor, GXColor bgColor, const char* msg);
}
extern "C" {
typedef enum {
OS_FONT_ENCODE_ANSI,
OS_FONT_ENCODE_SJIS,
OS_FONT_ENCODE_2,
OS_FONT_ENCODE_UTF8,
OS_FONT_ENCODE_UTF16,
OS_FONT_ENCODE_UTF32,
OS_FONT_ENCODE_MAX
} OSFontEncode;
typedef struct OSFontHeader {
u16 type;
u16 firstChar;
u16 lastChar;
u16 invalidChar;
u16 ascent;
u16 descent;
u16 width;
u16 leading;
u16 cellWidth;
u16 cellHeight;
u32 sheetSize;
u16 sheetFormat;
u16 sheetNumCol;
u16 sheetNumRow;
u16 sheetWidth;
u16 sheetHeight;
u16 widthTableOfs;
u32 sheetImageOfs;
u32 sheetFullSize;
u8 c0;
u8 c1;
u8 c2;
u8 c3;
} OSFontHeader;
u16 OSGetFontEncode(void);
u16 OSSetFontEncode(u16 encode);
u32 OSLoadFont(OSFontHeader* font, void* dst);
const char* OSGetFontTexel(const char* str, void* dst, s32 xOfs, s32 arg3,
u32* widthOut);
BOOL OSInitFont(OSFontHeader* font);
const char* OSGetFontTexture(const char* str, void** texOut, u32* xOut,
u32* yOut, u32* widthOut);
const char* OSGetFontWidth(const char* str, u32* widthOut);
}
extern "C" {
typedef struct DVDCommandBlock DVDCommandBlock;
typedef struct DVDFileInfo DVDFileInfo;
typedef struct OSAlarm OSAlarm;
typedef enum {
DVD_RESULT_COVER_CLOSED = -4,
DVD_RESULT_CANCELED,
DVD_RESULT_M2,
DVD_RESULT_FATAL,
DVD_RESULT_OK,
} DVDResult;
typedef enum {
DVD_STATE_FATAL = -1,
DVD_STATE_IDLE,
DVD_STATE_BUSY,
DVD_STATE_WAITING,
DVD_STATE_COVER_CLOSED,
DVD_STATE_NO_DISK,
DVD_STATE_COVER_OPENED,
DVD_STATE_WRONG_DISK_ID,
DVD_STATE_7,
DVD_STATE_PAUSED,
DVD_STATE_9,
DVD_STATE_CANCELED,
DVD_STATE_DISK_ERROR,
DVD_STATE_MOTOR_STOPPED,
} DVDAsyncState;
typedef enum {
DVD_COVER_BUSY,
DVD_COVER_OPENED,
DVD_COVER_CLOSED,
} DVDCoverState;
typedef void (*DVDAsyncCallback)(s32 result, DVDFileInfo* info);
typedef void (*DVDCommandCallback)(s32 result, DVDCommandBlock* block);
typedef struct DVDDiskID {
char game[4];
char company[2];
u8 disk;
u8 version;
u8 strmEnable;
u8 strmBufSize;
u8 padding[14];
u32 rvlMagic;
u32 gcMagic;
} DVDDiskID;
typedef struct DVDCommandBlock {
DVDCommandBlock* next;
DVDCommandBlock* prev;
u32 command;
volatile s32 state;
u32 offset;
u32 length;
void* addr;
u32 transferSize;
u32 transferTotal;
DVDDiskID* id;
DVDCommandCallback callback;
void* userData;
} DVDCommandBlock;
typedef struct DVDDriveInfo {
u16 revision;
u16 deviceCode;
u32 releaseDate;
char padding[32 - 0x8];
} DVDDriveInfo;
typedef struct DVDFileInfo {
DVDCommandBlock block;
u32 offset;
u32 size;
DVDAsyncCallback callback;
} DVDFileInfo;
extern volatile u32 __DVDLayoutFormat;
void DVDInit(void);
BOOL DVDReadAbsAsyncPrio(DVDCommandBlock* block, void* dst, u32 size,
u32 offset, DVDCommandCallback callback, s32 prio);
BOOL DVDInquiryAsync(DVDCommandBlock* block, DVDDriveInfo* info,
DVDCommandCallback callback);
s32 DVDGetCommandBlockStatus(const DVDCommandBlock* block);
s32 DVDGetDriveStatus(void);
void DVDPause(void);
void DVDResume(void);
BOOL DVDCancelAsync(DVDCommandBlock* block, DVDCommandCallback callback);
s32 DVDCancel(DVDCommandBlock* block);
BOOL DVDCancelAllAsync(DVDCommandCallback callback);
const DVDDiskID* DVDGetCurrentDiskID(void);
u32 __DVDGetCoverStatus(void);
void __DVDPrepareResetAsync(DVDCommandCallback callback);
void __DVDPrepareReset(void);
BOOL __DVDTestAlarm(const OSAlarm* alarm);
BOOL __DVDLowBreak(void);
BOOL __DVDStopMotorAsync(DVDCommandBlock* block, DVDCommandCallback callback);
void __DVDRestartMotor(void);
}
extern "C" {
typedef enum {
OS_THREAD_STATE_EXITED = 0,
OS_THREAD_STATE_READY = 1,
OS_THREAD_STATE_RUNNING = 2,
OS_THREAD_STATE_SLEEPING = 4,
OS_THREAD_STATE_MORIBUND = 8
} OSThreadState;
typedef enum { OS_THREAD_DETACHED = (1 << 0) } OSThreadFlag;
typedef struct OSThreadQueue {
struct OSThread* head;
struct OSThread* tail;
} OSThreadQueue;
typedef struct OSMutexQueue {
struct OSMutex* head;
struct OSMutex* tail;
} OSMutexQueue;
typedef struct OSThread {
OSContext context;
u16 state;
u16 flags;
s32 suspend;
s32 priority;
s32 base;
u32 val;
OSThreadQueue* queue;
struct OSThread* next;
struct OSThread* prev;
OSThreadQueue joinQueue;
struct OSMutex* mutex;
OSMutexQueue mutexQueue;
struct OSThread* nextActive;
struct OSThread* prevActive;
u32* stackBegin;
u32* stackEnd;
s32 error;
void* specific[2];
} OSThread;
typedef void (*OSSwitchThreadCallback)(OSThread* currThread,
OSThread* newThread);
typedef void* (*OSThreadFunc)(void* arg);
OSSwitchThreadCallback
OSSetSwitchThreadCallback(OSSwitchThreadCallback callback);
void __OSThreadInit(void);
void OSSetCurrentThread(OSThread* thread);
void OSInitMutexQueue(OSMutexQueue* queue);
void OSInitThreadQueue(OSThreadQueue* queue);
OSThread* OSGetCurrentThread(void);
BOOL OSIsThreadTerminated(OSThread* thread);
s32 OSDisableScheduler(void);
s32 OSEnableScheduler(void);
s32 __OSGetEffectivePriority(OSThread* thread);
void __OSPromoteThread(OSThread* thread, s32 prio);
void __OSReschedule(void);
void OSYieldThread(void);
BOOL OSCreateThread(OSThread* thread, OSThreadFunc func, void* funcArg,
void* stackBegin, u32 stackSize, s32 prio, u16 flags);
void OSExitThread(OSThread* thread);
void OSCancelThread(OSThread* thread);
BOOL OSJoinThread(OSThread* thread, void* val);
void OSDetachThread(OSThread* thread);
s32 OSResumeThread(OSThread* thread);
s32 OSSuspendThread(OSThread* thread);
void OSSleepThread(OSThreadQueue* queue);
void OSWakeupThread(OSThreadQueue* queue);
BOOL OSSetThreadPriority(OSThread* thread, s32 prio);
void OSClearStack(u8 val);
void OSSleepTicks(s64 ticks);
}
extern "C" {
typedef struct OSContext OSContext;
typedef struct OSExecParams OSExecParams;
typedef enum {
OS_BOOT_MAGIC_BOOTROM = 0xD15EA5E,
OS_BOOT_MAGIC_JTAG = 0xE5207C22,
} OSBootMagic;
typedef struct OSBootInfo {
DVDDiskID diskID;
u32 bootMagic;
u32 aplVersion;
u32 physMemSize;
u32 consoleType;
void* arenaLo;
void* arenaHi;
void* fstStart;
u32 fstSize;
} OSBootInfo;
typedef struct OSDebugInterface {
BOOL usingDebugger;
u32 exceptionMask;
void* exceptionHook;
void* exceptionHookLR;
} OSDebugInterface;
typedef struct OSBI2 {
u32 dbgMonitorSize;
u32 simulatedMemSize;
u32 argumentOfs;
u32 debugFlag;
u32 trackLocation;
u32 trackSize;
u32 countryCode;
u32 WORD_0x1C;
u32 lastInsert;
u32 padSpec;
u32 totalTextDataLimit;
u32 simulatedMem2Size;
} OSBI2;
OSBootInfo OS_BOOT_INFO : ( 0x80000000); static const u32 OS_PHYS_BOOT_INFO = ( 0x80000000) - 0x80000000; static const u32 OS_CACHED_BOOT_INFO = ( 0x80000000); static const u32 OS_UNCACHED_BOOT_INFO = ( 0x80000000) + (0xC0000000 - 0x80000000); ;
OSDebugInterface OS_DEBUG_INTERFACE : ( 0x80000040); static const u32 OS_PHYS_DEBUG_INTERFACE = ( 0x80000040) - 0x80000000; static const u32 OS_CACHED_DEBUG_INTERFACE = ( 0x80000040); static const u32 OS_UNCACHED_DEBUG_INTERFACE = ( 0x80000040) + (0xC0000000 - 0x80000000); ;
u8 OS_DB_INTEGRATOR_HOOK [0x24] : ( 0x80000060); static const u32 OS_PHYS_DB_INTEGRATOR_HOOK = ( 0x80000060) - 0x80000000; static const u32 OS_CACHED_DB_INTEGRATOR_HOOK = ( 0x80000060); static const u32 OS_UNCACHED_DB_INTEGRATOR_HOOK = ( 0x80000060) + (0xC0000000 - 0x80000000); ;
OSContext* OS_CURRENT_CONTEXT_PHYS : ( 0x800000C0); static const u32 OS_PHYS_CURRENT_CONTEXT_PHYS = ( 0x800000C0) - 0x80000000; static const u32 OS_CACHED_CURRENT_CONTEXT_PHYS = ( 0x800000C0); static const u32 OS_UNCACHED_CURRENT_CONTEXT_PHYS = ( 0x800000C0) + (0xC0000000 - 0x80000000); ;
u32 OS_PREV_INTR_MASK : ( 0x800000C4); static const u32 OS_PHYS_PREV_INTR_MASK = ( 0x800000C4) - 0x80000000; static const u32 OS_CACHED_PREV_INTR_MASK = ( 0x800000C4); static const u32 OS_UNCACHED_PREV_INTR_MASK = ( 0x800000C4) + (0xC0000000 - 0x80000000); ;
u32 OS_CURRENT_INTR_MASK : ( 0x800000C8); static const u32 OS_PHYS_CURRENT_INTR_MASK = ( 0x800000C8) - 0x80000000; static const u32 OS_CACHED_CURRENT_INTR_MASK = ( 0x800000C8); static const u32 OS_UNCACHED_CURRENT_INTR_MASK = ( 0x800000C8) + (0xC0000000 - 0x80000000); ;
u32 OS_TV_FORMAT : ( 0x800000CC); static const u32 OS_PHYS_TV_FORMAT = ( 0x800000CC) - 0x80000000; static const u32 OS_CACHED_TV_FORMAT = ( 0x800000CC); static const u32 OS_UNCACHED_TV_FORMAT = ( 0x800000CC) + (0xC0000000 - 0x80000000); ;
u32 OS_ARAM_SIZE : ( 0x800000D0); static const u32 OS_PHYS_ARAM_SIZE = ( 0x800000D0) - 0x80000000; static const u32 OS_CACHED_ARAM_SIZE = ( 0x800000D0); static const u32 OS_UNCACHED_ARAM_SIZE = ( 0x800000D0) + (0xC0000000 - 0x80000000); ;
OSContext* OS_CURRENT_CONTEXT : ( 0x800000D4); static const u32 OS_PHYS_CURRENT_CONTEXT = ( 0x800000D4) - 0x80000000; static const u32 OS_CACHED_CURRENT_CONTEXT = ( 0x800000D4); static const u32 OS_UNCACHED_CURRENT_CONTEXT = ( 0x800000D4) + (0xC0000000 - 0x80000000); ;
OSContext* OS_CURRENT_FPU_CONTEXT : ( 0x800000D8); static const u32 OS_PHYS_CURRENT_FPU_CONTEXT = ( 0x800000D8) - 0x80000000; static const u32 OS_CACHED_CURRENT_FPU_CONTEXT = ( 0x800000D8); static const u32 OS_UNCACHED_CURRENT_FPU_CONTEXT = ( 0x800000D8) + (0xC0000000 - 0x80000000); ;
OSThreadQueue OS_THREAD_QUEUE : ( 0x800000DC); static const u32 OS_PHYS_THREAD_QUEUE = ( 0x800000DC) - 0x80000000; static const u32 OS_CACHED_THREAD_QUEUE = ( 0x800000DC); static const u32 OS_UNCACHED_THREAD_QUEUE = ( 0x800000DC) + (0xC0000000 - 0x80000000); ;
OSThread* OS_CURRENT_THREAD : ( 0x800000E4); static const u32 OS_PHYS_CURRENT_THREAD = ( 0x800000E4) - 0x80000000; static const u32 OS_CACHED_CURRENT_THREAD = ( 0x800000E4); static const u32 OS_UNCACHED_CURRENT_THREAD = ( 0x800000E4) + (0xC0000000 - 0x80000000); ;
u32 OS_DEBUG_MONITOR_SIZE : ( 0x800000E8); static const u32 OS_PHYS_DEBUG_MONITOR_SIZE = ( 0x800000E8) - 0x80000000; static const u32 OS_CACHED_DEBUG_MONITOR_SIZE = ( 0x800000E8); static const u32 OS_UNCACHED_DEBUG_MONITOR_SIZE = ( 0x800000E8) + (0xC0000000 - 0x80000000); ;
void* OS_DEBUG_MONITOR : ( 0x800000EC); static const u32 OS_PHYS_DEBUG_MONITOR = ( 0x800000EC) - 0x80000000; static const u32 OS_CACHED_DEBUG_MONITOR = ( 0x800000EC); static const u32 OS_UNCACHED_DEBUG_MONITOR = ( 0x800000EC) + (0xC0000000 - 0x80000000); ;
u32 OS_SIMULATED_MEM_SIZE : ( 0x800000F0); static const u32 OS_PHYS_SIMULATED_MEM_SIZE = ( 0x800000F0) - 0x80000000; static const u32 OS_CACHED_SIMULATED_MEM_SIZE = ( 0x800000F0); static const u32 OS_UNCACHED_SIMULATED_MEM_SIZE = ( 0x800000F0) + (0xC0000000 - 0x80000000); ;
OSBI2* OS_DVD_BI2 : ( 0x800000F4); static const u32 OS_PHYS_DVD_BI2 = ( 0x800000F4) - 0x80000000; static const u32 OS_CACHED_DVD_BI2 = ( 0x800000F4); static const u32 OS_UNCACHED_DVD_BI2 = ( 0x800000F4) + (0xC0000000 - 0x80000000); ;
u32 OS_BUS_CLOCK_SPEED : ( 0x800000F8); static const u32 OS_PHYS_BUS_CLOCK_SPEED = ( 0x800000F8) - 0x80000000; static const u32 OS_CACHED_BUS_CLOCK_SPEED = ( 0x800000F8); static const u32 OS_UNCACHED_BUS_CLOCK_SPEED = ( 0x800000F8) + (0xC0000000 - 0x80000000); ;
u32 OS_CPU_CLOCK_SPEED : ( 0x800000FC); static const u32 OS_PHYS_CPU_CLOCK_SPEED = ( 0x800000FC) - 0x80000000; static const u32 OS_CACHED_CPU_CLOCK_SPEED = ( 0x800000FC); static const u32 OS_UNCACHED_CPU_CLOCK_SPEED = ( 0x800000FC) + (0xC0000000 - 0x80000000); ;
void* OS_EXCEPTION_TABLE [15] : ( 0x80003000); static const u32 OS_PHYS_EXCEPTION_TABLE = ( 0x80003000) - 0x80000000; static const u32 OS_CACHED_EXCEPTION_TABLE = ( 0x80003000); static const u32 OS_UNCACHED_EXCEPTION_TABLE = ( 0x80003000) + (0xC0000000 - 0x80000000); ;
void* OS_INTR_HANDLER_TABLE : ( 0x80003040); static const u32 OS_PHYS_INTR_HANDLER_TABLE = ( 0x80003040) - 0x80000000; static const u32 OS_CACHED_INTR_HANDLER_TABLE = ( 0x80003040); static const u32 OS_UNCACHED_INTR_HANDLER_TABLE = ( 0x80003040) + (0xC0000000 - 0x80000000); ;
volatile s32 OS_EXI_LAST_INSERT [] : ( 0x800030C0); static const u32 OS_PHYS_EXI_LAST_INSERT = ( 0x800030C0) - 0x80000000; static const u32 OS_CACHED_EXI_LAST_INSERT = ( 0x800030C0); static const u32 OS_UNCACHED_EXI_LAST_INSERT = ( 0x800030C0) + (0xC0000000 - 0x80000000); ;
void* OS_FIRST_REL : ( 0x800030C8); static const u32 OS_PHYS_FIRST_REL = ( 0x800030C8) - 0x80000000; static const u32 OS_CACHED_FIRST_REL = ( 0x800030C8); static const u32 OS_UNCACHED_FIRST_REL = ( 0x800030C8) + (0xC0000000 - 0x80000000); ;
void* OS_LAST_REL : ( 0x800030CC); static const u32 OS_PHYS_LAST_REL = ( 0x800030CC) - 0x80000000; static const u32 OS_CACHED_LAST_REL = ( 0x800030CC); static const u32 OS_UNCACHED_LAST_REL = ( 0x800030CC) + (0xC0000000 - 0x80000000); ;
void* OS_REL_NAME_TABLE : ( 0x800030D0); static const u32 OS_PHYS_REL_NAME_TABLE = ( 0x800030D0) - 0x80000000; static const u32 OS_CACHED_REL_NAME_TABLE = ( 0x800030D0); static const u32 OS_UNCACHED_REL_NAME_TABLE = ( 0x800030D0) + (0xC0000000 - 0x80000000); ;
u32 OS_DOL_TOTAL_TEXT_DATA : ( 0x800030D4); static const u32 OS_PHYS_DOL_TOTAL_TEXT_DATA = ( 0x800030D4) - 0x80000000; static const u32 OS_CACHED_DOL_TOTAL_TEXT_DATA = ( 0x800030D4); static const u32 OS_UNCACHED_DOL_TOTAL_TEXT_DATA = ( 0x800030D4) + (0xC0000000 - 0x80000000); ;
s64 OS_SYSTEM_TIME : ( 0x800030D8); static const u32 OS_PHYS_SYSTEM_TIME = ( 0x800030D8) - 0x80000000; static const u32 OS_CACHED_SYSTEM_TIME = ( 0x800030D8); static const u32 OS_UNCACHED_SYSTEM_TIME = ( 0x800030D8) + (0xC0000000 - 0x80000000); ;
u8 OS_PAD_FLAGS : ( 0x800030E3); static const u32 OS_PHYS_PAD_FLAGS = ( 0x800030E3) - 0x80000000; static const u32 OS_CACHED_PAD_FLAGS = ( 0x800030E3); static const u32 OS_UNCACHED_PAD_FLAGS = ( 0x800030E3) + (0xC0000000 - 0x80000000); ;
u16 OS_GC_PAD_3_BTN : ( 0x800030E4); static const u32 OS_PHYS_GC_PAD_3_BTN = ( 0x800030E4) - 0x80000000; static const u32 OS_CACHED_GC_PAD_3_BTN = ( 0x800030E4); static const u32 OS_UNCACHED_GC_PAD_3_BTN = ( 0x800030E4) + (0xC0000000 - 0x80000000); ;
volatile u16 OS_DVD_DEVICE_CODE : ( 0x800030E6); static const u32 OS_PHYS_DVD_DEVICE_CODE = ( 0x800030E6) - 0x80000000; static const u32 OS_CACHED_DVD_DEVICE_CODE = ( 0x800030E6); static const u32 OS_UNCACHED_DVD_DEVICE_CODE = ( 0x800030E6) + (0xC0000000 - 0x80000000); ;
u8 OS_BI2_DEBUG_FLAG : ( 0x800030E8); static const u32 OS_PHYS_BI2_DEBUG_FLAG = ( 0x800030E8) - 0x80000000; static const u32 OS_CACHED_BI2_DEBUG_FLAG = ( 0x800030E8); static const u32 OS_UNCACHED_BI2_DEBUG_FLAG = ( 0x800030E8) + (0xC0000000 - 0x80000000); ;
u8 OS_PAD_SPEC : ( 0x800030E9); static const u32 OS_PHYS_PAD_SPEC = ( 0x800030E9) - 0x80000000; static const u32 OS_CACHED_PAD_SPEC = ( 0x800030E9); static const u32 OS_UNCACHED_PAD_SPEC = ( 0x800030E9) + (0xC0000000 - 0x80000000); ;
OSExecParams* OS_DOL_EXEC_PARAMS : ( 0x800030F0); static const u32 OS_PHYS_DOL_EXEC_PARAMS = ( 0x800030F0) - 0x80000000; static const u32 OS_CACHED_DOL_EXEC_PARAMS = ( 0x800030F0); static const u32 OS_UNCACHED_DOL_EXEC_PARAMS = ( 0x800030F0) + (0xC0000000 - 0x80000000); ;
u32 OS_PHYSICAL_MEM1_SIZE : ( 0x80003100); static const u32 OS_PHYS_PHYSICAL_MEM1_SIZE = ( 0x80003100) - 0x80000000; static const u32 OS_CACHED_PHYSICAL_MEM1_SIZE = ( 0x80003100); static const u32 OS_UNCACHED_PHYSICAL_MEM1_SIZE = ( 0x80003100) + (0xC0000000 - 0x80000000); ;
u32 OS_SIMULATED_MEM1_SIZE : ( 0x80003104); static const u32 OS_PHYS_SIMULATED_MEM1_SIZE = ( 0x80003104) - 0x80000000; static const u32 OS_CACHED_SIMULATED_MEM1_SIZE = ( 0x80003104); static const u32 OS_UNCACHED_SIMULATED_MEM1_SIZE = ( 0x80003104) + (0xC0000000 - 0x80000000); ;
void* OS_USABLE_MEM1_START : ( 0x8000310C); static const u32 OS_PHYS_USABLE_MEM1_START = ( 0x8000310C) - 0x80000000; static const u32 OS_CACHED_USABLE_MEM1_START = ( 0x8000310C); static const u32 OS_UNCACHED_USABLE_MEM1_START = ( 0x8000310C) + (0xC0000000 - 0x80000000); ;
void* OS_USABLE_MEM1_END : ( 0x80003110); static const u32 OS_PHYS_USABLE_MEM1_END = ( 0x80003110) - 0x80000000; static const u32 OS_CACHED_USABLE_MEM1_END = ( 0x80003110); static const u32 OS_UNCACHED_USABLE_MEM1_END = ( 0x80003110) + (0xC0000000 - 0x80000000); ;
u32 OS_PHYSICAL_MEM2_SIZE : ( 0x80003118); static const u32 OS_PHYS_PHYSICAL_MEM2_SIZE = ( 0x80003118) - 0x80000000; static const u32 OS_CACHED_PHYSICAL_MEM2_SIZE = ( 0x80003118); static const u32 OS_UNCACHED_PHYSICAL_MEM2_SIZE = ( 0x80003118) + (0xC0000000 - 0x80000000); ;
u32 OS_SIMULATED_MEM2_SIZE : ( 0x8000311C); static const u32 OS_PHYS_SIMULATED_MEM2_SIZE = ( 0x8000311C) - 0x80000000; static const u32 OS_CACHED_SIMULATED_MEM2_SIZE = ( 0x8000311C); static const u32 OS_UNCACHED_SIMULATED_MEM2_SIZE = ( 0x8000311C) + (0xC0000000 - 0x80000000); ;
void* OS_ACCESSIBLE_MEM2_END : ( 0x80003120); static const u32 OS_PHYS_ACCESSIBLE_MEM2_END = ( 0x80003120) - 0x80000000; static const u32 OS_CACHED_ACCESSIBLE_MEM2_END = ( 0x80003120); static const u32 OS_UNCACHED_ACCESSIBLE_MEM2_END = ( 0x80003120) + (0xC0000000 - 0x80000000); ;
void* OS_USABLE_MEM2_START : ( 0x80003124); static const u32 OS_PHYS_USABLE_MEM2_START = ( 0x80003124) - 0x80000000; static const u32 OS_CACHED_USABLE_MEM2_START = ( 0x80003124); static const u32 OS_UNCACHED_USABLE_MEM2_START = ( 0x80003124) + (0xC0000000 - 0x80000000); ;
void* OS_USABLE_MEM2_END : ( 0x80003128); static const u32 OS_PHYS_USABLE_MEM2_END = ( 0x80003128) - 0x80000000; static const u32 OS_CACHED_USABLE_MEM2_END = ( 0x80003128); static const u32 OS_UNCACHED_USABLE_MEM2_END = ( 0x80003128) + (0xC0000000 - 0x80000000); ;
void* OS_IPC_BUFFER_START : ( 0x80003130); static const u32 OS_PHYS_IPC_BUFFER_START = ( 0x80003130) - 0x80000000; static const u32 OS_CACHED_IPC_BUFFER_START = ( 0x80003130); static const u32 OS_UNCACHED_IPC_BUFFER_START = ( 0x80003130) + (0xC0000000 - 0x80000000); ;
void* OS_IPC_BUFFER_END : ( 0x80003134); static const u32 OS_PHYS_IPC_BUFFER_END = ( 0x80003134) - 0x80000000; static const u32 OS_CACHED_IPC_BUFFER_END = ( 0x80003134); static const u32 OS_UNCACHED_IPC_BUFFER_END = ( 0x80003134) + (0xC0000000 - 0x80000000); ;
u32 OS_HOLLYWOOD_REV : ( 0x80003138); static const u32 OS_PHYS_HOLLYWOOD_REV = ( 0x80003138) - 0x80000000; static const u32 OS_CACHED_HOLLYWOOD_REV = ( 0x80003138); static const u32 OS_UNCACHED_HOLLYWOOD_REV = ( 0x80003138) + (0xC0000000 - 0x80000000); ;
u32 OS_IOS_VERSION : ( 0x80003140); static const u32 OS_PHYS_IOS_VERSION = ( 0x80003140) - 0x80000000; static const u32 OS_CACHED_IOS_VERSION = ( 0x80003140); static const u32 OS_UNCACHED_IOS_VERSION = ( 0x80003140) + (0xC0000000 - 0x80000000); ;
u32 OS_IOS_BUILD_DATE : ( 0x80003144); static const u32 OS_PHYS_IOS_BUILD_DATE = ( 0x80003144) - 0x80000000; static const u32 OS_CACHED_IOS_BUILD_DATE = ( 0x80003144); static const u32 OS_UNCACHED_IOS_BUILD_DATE = ( 0x80003144) + (0xC0000000 - 0x80000000); ;
void* OS_IOS_HEAP_START : ( 0x80003148); static const u32 OS_PHYS_IOS_HEAP_START = ( 0x80003148) - 0x80000000; static const u32 OS_CACHED_IOS_HEAP_START = ( 0x80003148); static const u32 OS_UNCACHED_IOS_HEAP_START = ( 0x80003148) + (0xC0000000 - 0x80000000); ;
void* OS_IOS_HEAP_END : ( 0x8000314C); static const u32 OS_PHYS_IOS_HEAP_END = ( 0x8000314C) - 0x80000000; static const u32 OS_CACHED_IOS_HEAP_END = ( 0x8000314C); static const u32 OS_UNCACHED_IOS_HEAP_END = ( 0x8000314C) + (0xC0000000 - 0x80000000); ;
u32 OS_GDDR_VENDOR_CODE : ( 0x80003158); static const u32 OS_PHYS_GDDR_VENDOR_CODE = ( 0x80003158) - 0x80000000; static const u32 OS_CACHED_GDDR_VENDOR_CODE = ( 0x80003158); static const u32 OS_UNCACHED_GDDR_VENDOR_CODE = ( 0x80003158) + (0xC0000000 - 0x80000000); ;
u8 OS_BOOT_PROGRAM_TARGET : ( 0x8000315C); static const u32 OS_PHYS_BOOT_PROGRAM_TARGET = ( 0x8000315C) - 0x80000000; static const u32 OS_CACHED_BOOT_PROGRAM_TARGET = ( 0x8000315C); static const u32 OS_UNCACHED_BOOT_PROGRAM_TARGET = ( 0x8000315C) + (0xC0000000 - 0x80000000); ;
u8 OS_APPLOADER_TARGET : ( 0x8000315D); static const u32 OS_PHYS_APPLOADER_TARGET = ( 0x8000315D) - 0x80000000; static const u32 OS_CACHED_APPLOADER_TARGET = ( 0x8000315D); static const u32 OS_UNCACHED_APPLOADER_TARGET = ( 0x8000315D) + (0xC0000000 - 0x80000000); ;
BOOL OS_MIOS_SHUTDOWN_FLAG : ( 0x80003164); static const u32 OS_PHYS_MIOS_SHUTDOWN_FLAG = ( 0x80003164) - 0x80000000; static const u32 OS_CACHED_MIOS_SHUTDOWN_FLAG = ( 0x80003164); static const u32 OS_UNCACHED_MIOS_SHUTDOWN_FLAG = ( 0x80003164) + (0xC0000000 - 0x80000000); ;
u32 OS_CURRENT_APP_NAME : ( 0x80003180); static const u32 OS_PHYS_CURRENT_APP_NAME = ( 0x80003180) - 0x80000000; static const u32 OS_CACHED_CURRENT_APP_NAME = ( 0x80003180); static const u32 OS_UNCACHED_CURRENT_APP_NAME = ( 0x80003180) + (0xC0000000 - 0x80000000); ;
u8 OS_CURRENT_APP_TYPE : ( 0x80003184); static const u32 OS_PHYS_CURRENT_APP_TYPE = ( 0x80003184) - 0x80000000; static const u32 OS_CACHED_CURRENT_APP_TYPE = ( 0x80003184); static const u32 OS_UNCACHED_CURRENT_APP_TYPE = ( 0x80003184) + (0xC0000000 - 0x80000000); ;
u32 OS_MINIMUM_IOS_VERSION : ( 0x80003188); static const u32 OS_PHYS_MINIMUM_IOS_VERSION = ( 0x80003188) - 0x80000000; static const u32 OS_CACHED_MINIMUM_IOS_VERSION = ( 0x80003188); static const u32 OS_UNCACHED_MINIMUM_IOS_VERSION = ( 0x80003188) + (0xC0000000 - 0x80000000); ;
u32 OS_NAND_TITLE_LAUNCH_CODE : ( 0x8000318C); static const u32 OS_PHYS_NAND_TITLE_LAUNCH_CODE = ( 0x8000318C) - 0x80000000; static const u32 OS_CACHED_NAND_TITLE_LAUNCH_CODE = ( 0x8000318C); static const u32 OS_UNCACHED_NAND_TITLE_LAUNCH_CODE = ( 0x8000318C) + (0xC0000000 - 0x80000000); ;
u32 OS_NAND_TITLE_RETURN_CODE : ( 0x80003190); static const u32 OS_PHYS_NAND_TITLE_RETURN_CODE = ( 0x80003190) - 0x80000000; static const u32 OS_CACHED_NAND_TITLE_RETURN_CODE = ( 0x80003190); static const u32 OS_UNCACHED_NAND_TITLE_RETURN_CODE = ( 0x80003190) + (0xC0000000 - 0x80000000); ;
u32 OS_BOOT_PARTITION_TYPE : ( 0x80003194); static const u32 OS_PHYS_BOOT_PARTITION_TYPE = ( 0x80003194) - 0x80000000; static const u32 OS_CACHED_BOOT_PARTITION_TYPE = ( 0x80003194); static const u32 OS_UNCACHED_BOOT_PARTITION_TYPE = ( 0x80003194) + (0xC0000000 - 0x80000000); ;
u32 OS_BOOT_PARTITION_OFFSET : ( 0x80003198); static const u32 OS_PHYS_BOOT_PARTITION_OFFSET = ( 0x80003198) - 0x80000000; static const u32 OS_CACHED_BOOT_PARTITION_OFFSET = ( 0x80003198); static const u32 OS_UNCACHED_BOOT_PARTITION_OFFSET = ( 0x80003198) + (0xC0000000 - 0x80000000); ;
u8 OS_NWC24_USER_ID_BUFFER [32] : ( 0x800031C0); static const u32 OS_PHYS_NWC24_USER_ID_BUFFER = ( 0x800031C0) - 0x80000000; static const u32 OS_CACHED_NWC24_USER_ID_BUFFER = ( 0x800031C0); static const u32 OS_UNCACHED_NWC24_USER_ID_BUFFER = ( 0x800031C0) + (0xC0000000 - 0x80000000); ;
u64 OS_NWC24_USER_ID : ( 0x800031C0); static const u32 OS_PHYS_NWC24_USER_ID = ( 0x800031C0) - 0x80000000; static const u32 OS_CACHED_NWC24_USER_ID = ( 0x800031C0); static const u32 OS_UNCACHED_NWC24_USER_ID = ( 0x800031C0) + (0xC0000000 - 0x80000000); ;
u8 OS_SC_PRDINFO [0x100] : ( 0x80003800); static const u32 OS_PHYS_SC_PRDINFO = ( 0x80003800) - 0x80000000; static const u32 OS_CACHED_SC_PRDINFO = ( 0x80003800); static const u32 OS_UNCACHED_SC_PRDINFO = ( 0x80003800) + (0xC0000000 - 0x80000000); ;
volatile u32 PI_HW_REGS[]
: 0xCC003000
;
typedef enum {
PI_INTSR,
PI_INTMR,
PI_REG_0x8,
PI_REG_0xC,
PI_REG_0x10,
PI_REG_0x14,
PI_REG_0x18,
PI_REG_0x1C,
PI_REG_0x20,
PI_RESET,
} PIHwReg;
volatile u16 MI_HW_REGS[]
: 0xCC004000
;
typedef enum {
MI_PAGE_MEM0_H,
MI_PAGE_MEM0_L,
MI_PAGE_MEM1_H,
MI_PAGE_MEM1_L,
MI_PAGE_MEM2_H,
MI_PAGE_MEM2_L,
MI_PAGE_MEM3_H,
MI_PAGE_MEM3_L,
MI_PROT_MEM0,
MI_PROT_MEM1,
MI_PROT_MEM2,
MI_PROT_MEM3,
MI_REG_0x18,
MI_REG_0x1A,
MI_INTMR,
MI_INTSR,
MI_REG_0x20,
MI_ADDRLO,
MI_ADDRHI,
MI_REG_0x26,
MI_REG_0x28,
} MIHwReg;
volatile u32 OS_DI_DMA_ADDR : ( 0xCD006014); ;
volatile u32 OS_DI_CONFIG : ( 0xCD006024); ;
volatile u32 OS_UNK_CD000034 : ( 0xCD000034); ;
volatile u32 OS_UNK_CD800180 : ( 0xCD800180); ;
volatile u32 OS_UNK_CD8001CC : ( 0xCD8001CC); ;
volatile u32 OS_UNK_CD8001D0 : ( 0xCD8001D0); ;
}
extern "C" {
typedef struct OSContext OSContext;
typedef enum {
OS_INTR_MEM_0,
OS_INTR_MEM_1,
OS_INTR_MEM_2,
OS_INTR_MEM_3,
OS_INTR_MEM_ADDRESS,
OS_INTR_DSP_AI,
OS_INTR_DSP_ARAM,
OS_INTR_DSP_DSP,
OS_INTR_AI_AI,
OS_INTR_EXI_0_EXI,
OS_INTR_EXI_0_TC,
OS_INTR_EXI_0_EXT,
OS_INTR_EXI_1_EXI,
OS_INTR_EXI_1_TC,
OS_INTR_EXI_1_EXT,
OS_INTR_EXI_2_EXI,
OS_INTR_EXI_2_TC,
OS_INTR_PI_CP,
OS_INTR_PI_PE_TOKEN,
OS_INTR_PI_PE_FINISH,
OS_INTR_PI_SI,
OS_INTR_PI_DI,
OS_INTR_PI_RSW,
OS_INTR_PI_ERROR,
OS_INTR_PI_VI,
OS_INTR_PI_DEBUG,
OS_INTR_PI_HSP,
OS_INTR_PI_ACR,
OS_INTR_28,
OS_INTR_29,
OS_INTR_30,
OS_INTR_31,
OS_INTR_MAX
} OSInterruptType;
typedef void (*OSInterruptHandler)(s16 intr, OSContext* ctx);
extern u32 __OSLastInterruptSrr0;
extern s16 __OSLastInterrupt;
extern s64 __OSLastInterruptTime;
BOOL OSDisableInterrupts(void);
BOOL OSEnableInterrupts(void);
BOOL OSRestoreInterrupts(BOOL status);
OSInterruptHandler __OSSetInterruptHandler(OSInterruptType type,
OSInterruptHandler handler);
OSInterruptHandler __OSGetInterruptHandler(OSInterruptType type);
void __OSInterruptInit(void);
u32 __OSMaskInterrupts(u32 userMask);
u32 __OSUnmaskInterrupts(u32 userMask);
void __OSDispatchInterrupt(u8 intr, OSContext* ctx);
void __RAS_OSDisableInterrupts_begin(void);
void __RAS_OSDisableInterrupts_end(void);
}
extern "C" {
void* __OSGetIPCBufferHi(void);
void* __OSGetIPCBufferLo(void);
void __OSInitIPCBuffer(void);
}
extern "C" {
struct OSModuleHeader {
u32 id;
u32 linkNext;
u32 linkPrev;
u32 numSections;
u32 sectionInfoOffset;
u32 nameOffset;
u32 nameSize;
u32 version;
u32 bssSize;
u32 relOffset;
u32 impOffset;
u32 impSize;
char prologSection;
char epilogSection;
char unresolvedSection;
char bssSection;
u32 prologOffset;
u32 epilogOffset;
u32 unresolvedOffset;
u32 moduleAlign;
u32 bssAlign;
u32 commandOffset;
};
void __OSModuleInit(void);
bool OSUnlink(OSModuleHeader* module);
}
extern "C" {
u32 OSGetPhysicalMem1Size(void);
u32 OSGetPhysicalMem2Size(void);
u32 OSGetConsoleSimulatedMem1Size(void);
u32 OSGetConsoleSimulatedMem2Size(void);
void __OSInitMemoryProtection(void);
}
extern "C" {
typedef void* OSMessage;
typedef enum { OS_MSG_BLOCKING = (1 << 0) } OSMessageFlags;
typedef struct OSMessageQueue {
OSThreadQueue sendQueue;
OSThreadQueue recvQueue;
OSMessage* buffer;
s32 capacity;
s32 front;
s32 size;
} OSMessageQueue;
void OSInitMessageQueue(OSMessageQueue* queue, OSMessage* buffer, s32 capacity);
BOOL OSSendMessage(OSMessageQueue* queue, OSMessage mesg, u32 flags);
BOOL OSReceiveMessage(OSMessageQueue* queue, OSMessage* mesg, u32 flags);
BOOL OSJamMessage(OSMessageQueue* queue, OSMessage mesg, u32 flags);
}
extern "C" {
typedef struct OSMutex {
OSThreadQueue queue;
OSThread* thread;
s32 lock;
struct OSMutex* next;
struct OSMutex* prev;
} OSMutex;
typedef struct OSCond {
OSThreadQueue queue;
} OSCond;
void OSInitMutex(OSMutex* mutex);
void OSLockMutex(OSMutex* mutex);
void OSUnlockMutex(OSMutex* mutex);
void __OSUnlockAllMutex(OSThread* thread);
BOOL OSTryLockMutex(OSMutex* mutex);
void OSInitCond(OSCond* cond);
void OSWaitCond(OSCond* cond, OSMutex* mutex);
void OSSignalCond(OSCond* cond);
}
extern "C" {
void __OSInitNet(void);
}
extern "C" {
void __OSStartPlayRecord(void);
void __OSStopPlayRecord(void);
}
extern "C" {
typedef BOOL (*OSShutdownFunction)(BOOL final, u32 event);
typedef enum {
OS_SD_EVENT_SHUTDOWN = 2,
OS_SD_EVENT_RESTART = 4,
OS_SD_EVENT_RETURN_TO_MENU = 5,
OS_SD_EVENT_LAUNCH_APP = 6,
} OSShutdownEvent;
typedef struct OSShutdownFunctionInfo {
OSShutdownFunction func;
u32 prio;
struct OSShutdownFunctionInfo* next;
struct OSShutdownFunctionInfo* prev;
} OSShutdownFunctionInfo;
typedef struct OSShutdownFunctionQueue {
OSShutdownFunctionInfo* head;
OSShutdownFunctionInfo* tail;
} OSShutdownFunctionQueue;
void OSRegisterShutdownFunction(OSShutdownFunctionInfo* info);
BOOL __OSCallShutdownFunctions(u32 pass, u32 event);
void __OSShutdownDevices(u32 event);
void __OSGetDiscState(u8* out);
void OSShutdownSystem(void);
void OSReturnToMenu(void);
u32 OSGetResetCode(void);
void OSResetSystem(u32 arg0, u32 arg1, u32 arg2);
}
extern "C" {
typedef struct OSSram {
u16 checksum;
u16 invchecksum;
u32 ead0;
u32 ead1;
u32 counterBias;
u8 dispOfsH;
u8 ntd;
u8 lang;
u8 flags;
} OSSram;
typedef struct OSSramEx {
char UNK_0x0[0x1C];
u16 wirelessPadId[4];
char UNK_0x38[0x3C - 0x38];
u16 gbs;
char UNK_0x3E[0x40 - 0x3E];
} OSSramEx;
void __OSInitSram(void);
OSSramEx* __OSLockSramEx(void);
BOOL __OSUnlockSramEx(BOOL save);
BOOL __OSSyncSram(void);
BOOL __OSReadROM(void* dst, s32 size, const void* src);
u16 OSGetWirelessID(s32 pad);
void OSSetWirelessID(s32 pad, u16 id);
u16 OSGetGbsMode(void);
void OSSetGbsMode(u16 gbs);
BOOL __OSGetRTCFlags(u32* out);
BOOL __OSClearRTCFlags(void);
}
extern "C" {
typedef struct OSStateFlags {
u32 checksum;
u8 BYTE_0x4;
u8 BYTE_0x5;
u8 discState;
u8 BYTE_0x7;
u32 WORD_0x8;
u32 WORD_0xC;
u32 WORD_0x10;
u32 WORD_0x14;
u32 WORD_0x18;
u32 WORD_0x1C;
} OSStateFlags;
BOOL __OSWriteStateFlags(const OSStateFlags* state);
BOOL __OSReadStateFlags(OSStateFlags* state);
}
extern "C" {
typedef void (*OSStateCallback)(void);
OSStateCallback OSSetResetCallback(OSStateCallback callback);
OSStateCallback OSSetPowerCallback(OSStateCallback callback);
BOOL __OSInitSTM(void);
void __OSShutdownToSBY(void);
void __OSHotReset(void);
BOOL __OSGetResetButtonStateRaw(void);
s32 __OSSetVIForceDimming(u32 arg0, u32 arg1, u32 arg2);
s32 __OSSetIdleLEDMode(u32 mode);
s32 __OSUnRegisterStateEvent(void);
}
extern "C" {
void __OSInitSystemCall(void);
}
extern "C" {
typedef struct OSCalendarTime {
s32 sec;
s32 min;
s32 hour;
s32 mday;
s32 month;
s32 year;
s32 wday;
s32 yday;
s32 msec;
s32 usec;
} OSCalendarTime;
s64 OSGetTime(void);
u32 OSGetTick(void);
s64 __OSGetSystemTime(void);
s64 __OSTimeToSystemTime(s64 time);
void OSTicksToCalendarTime(s64 time, OSCalendarTime* cal);
s64 OSCalendarTimeToTicks(const OSCalendarTime* cal);
}
extern "C" {
const u8* OSUTF8to32(const u8* utf8, u32* utf32);
const wchar_t* OSUTF16to32(const wchar_t* utf16, u32* utf32);
u8 OSUTF32toANSI(u32 utf32);
wchar_t OSUTF32toSJIS(u32 utf32);
}
extern "C" {
__declspec(section ".init") void __init_hardware(void);
__declspec(section ".init") void __flush_cache(void*, size_t);
void __init_user(void);
void __init_cpp(void);
void __fini_cpp(void);
__declspec(weak) void exit(void);
void _ExitProcess(void);
extern u8 _db_stack_addr[];
extern u8 _db_stack_end[];
extern u8 __ArenaLo[];
extern u8 __ArenaHi[];
extern u8 _stack_addr[];
extern u8 _stack_end[];
extern u8 _SDA_BASE_[];
extern u8 _SDA2_BASE_[];
extern u8 _f_init[]; extern u8 _f_init_rom[]; extern u8 _e_init[]; ;
extern u8 _fextab[]; extern u8 _fextab_rom[]; extern u8 _eextab[]; ;
extern u8 _fextabindex[]; extern u8 _fextabindex_rom[]; extern u8 _eextabindex[]; ;
extern u8 _f_text[]; extern u8 _f_text_rom[]; extern u8 _e_text[]; ;
extern u8 _f_ctors[]; extern u8 _f_ctors_rom[]; extern u8 _e_ctors[]; ;
extern u8 _f_dtors[]; extern u8 _f_dtors_rom[]; extern u8 _e_dtors[]; ;
extern u8 _f_rodata[]; extern u8 _f_rodata_rom[]; extern u8 _e_rodata[]; ;
extern u8 _f_data[]; extern u8 _f_data_rom[]; extern u8 _e_data[]; ;
extern u8 _f_sdata[]; extern u8 _f_sdata_rom[]; extern u8 _e_sdata[]; ;
extern u8 _f_sdata2[]; extern u8 _f_sdata2_rom[]; extern u8 _e_sdata2[]; ;
extern u8 _f_stack[]; extern u8 _f_stack_rom[]; extern u8 _e_stack[]; ;
extern u8 _f_bss[]; extern u8 _e_bss[]; ;
extern u8 _f_sbss[]; extern u8 _e_sbss[]; ;
extern u8 _f_sbss2[]; extern u8 _e_sbss2[]; ;
typedef struct RomSection {
void* phys;
void* virt;
size_t size;
} RomSection;
typedef struct BssSection {
void* virt;
size_t size;
} BssSection;
typedef struct ExtabIndexInfo {
void* section;
struct ExtabIndexInfo* extab;
void* codeStart;
u32 codeSize;
} ExtabIndexInfo;
__declspec(section ".init") extern const RomSection _rom_copy_info[];
__declspec(section ".init") extern const BssSection _bss_init_info[];
__declspec(section ".init") extern const ExtabIndexInfo _eti_init_info[];
}
}
struct DATHeader {
u32 fileSz;
u32 dataSz;
u32 nRels;
u32 nSymbols;
u32 nImports;
u32 unk14;
u32 isAbsolute;
u32 unk1C;
};
struct DATSymbol {
u32 offset;
u32 name;
};
struct DATImport {
u32 offset;
u32 name;
};
class utRelocate {
DATHeader m_hdr;
u8* m_dataStart;
const u32* m_relStart;
const DATSymbol* m_symtabStart;
const DATImport* m_importStart;
const char* m_strtabStart;
void relocate(u8* fileBuf) {
if (!m_hdr.isAbsolute) {
for (u32 i = 0; i < m_hdr.nRels; i++) {
u32 base = reinterpret_cast<u32>(m_dataStart);
*reinterpret_cast<u32*>(&m_dataStart[m_relStart[i]]) += base;
}
reinterpret_cast<DATHeader*>(fileBuf)->isAbsolute = true;
}
}
public:
const char* getImportName(s32 i, u32 nImports) const {
if (i < 0 || nImports <= i)
return 0;
return m_strtabStart + m_importStart[i].name;
}
utRelocate(u8* fileBuf, u32 fileSz);
~utRelocate();
void* getPublicAddress(const char* name) const;
void resolveReference(const utRelocate* p1);
void locateExtern(const char* externName, void* addr);
};


utRelocate::utRelocate(u8* fileBuf, u32 fileSz) {
    m_dataStart = nullptr;
    m_relStart = nullptr;
    m_symtabStart = nullptr;
    m_importStart = nullptr;
    m_strtabStart = nullptr;
    std::memcpy(&m_hdr, fileBuf, sizeof(m_hdr));
    if (m_hdr.fileSz != fileSz)
        OSReport("utRelocate: byte-order mismatch! Please check data format\n");

    u32 fp = sizeof(m_hdr);
    if (m_hdr.dataSz) {
        m_dataStart = fileBuf + sizeof(m_hdr);
        fp = m_hdr.dataSz + sizeof(m_hdr);
    }

    if (m_hdr.nRels) {
        m_relStart = reinterpret_cast<u32*>(fileBuf + fp);
        fp += m_hdr.nRels * sizeof(m_relStart[0]);
    }

    if (m_hdr.nSymbols) {
        m_symtabStart = reinterpret_cast<DATSymbol*>(fileBuf + fp);
        fp += m_hdr.nSymbols * sizeof(m_symtabStart[0]);
    }

    if (m_hdr.nImports) {
        m_importStart = reinterpret_cast<DATImport*>(fileBuf + fp);
        fp += m_hdr.nImports * sizeof(m_importStart[0]);
    }

    if (fp < m_hdr.fileSz)
        m_strtabStart = reinterpret_cast<char*>(fileBuf + fp);

    relocate(fileBuf);
}

utRelocate::~utRelocate() { }

void* utRelocate::getPublicAddress(const char* symName) const {
    const DATSymbol* sym;
    for (u32 i = 0; i < m_hdr.nSymbols; i++) {
        sym = m_symtabStart;
        if (!std::strcmp(m_strtabStart + sym[i].name, symName))
            return m_dataStart + sym[i].offset;
    }
    return nullptr;
}

static const u32 EndMarker = 0xFFFFFFFF;

// Resolve all references to externName within this module to addr
void utRelocate::locateExtern(const char* externName, void* addr) {
    u32 nextOffset = EndMarker;
    for (u32 i = 0; i < m_hdr.nImports; i++) {
        if (!std::strcmp(externName, m_strtabStart + m_importStart[i].name)) {
            nextOffset = m_importStart[i].offset;
            break;
        }
    }
    if (nextOffset == EndMarker) {
        return;
    } else {
        while (nextOffset != EndMarker && nextOffset < m_hdr.dataSz) {
            void** ref = reinterpret_cast<void**>(m_dataStart + nextOffset);
            nextOffset = reinterpret_cast<u32>(*ref);
            *ref = addr;
        }
    }
}

#define resolveReference utRelocate::resolveReference
)
PERM_PRETEND(
typedef unsigned int u32;
typedef int s32;
typedef struct DATHeader { u32 nImports; } DATHeader;
typedef struct utRelocate { void* (*getPublicAddress)(const char*); } utRelocate;
static DATHeader m_hdr;
const char* getImportName(s32 i, u32 n);
void locateExtern(const char* name, void* addr);
void OSReport(const char* fmt, ...);
)
void resolveReference(const utRelocate* other) {
    for (s32 i = 0; i < m_hdr.nImports; i++) {
        const char* importName = getImportName(i, m_hdr.nImports);
        if (importName) {
            void* addr = (void*)(other->getPublicAddress(importName));
            if (!addr)
                OSReport("utRelocate: not found symbol! ->[%s] \n", importName);
            locateExtern(importName, addr);
        }
    }
}
