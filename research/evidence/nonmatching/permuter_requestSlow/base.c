PERM_IGNORE(
template <bool>
struct CompileTimeError;
template <>
struct CompileTimeError<true> {
};
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
class gfCallBack {
public:
gfCallBack* m_next;
gfCallBack() : m_next(nullptr) { }
virtual void userProc() = 0;
virtual ~gfCallBack() { }
};
__static_assert(sizeof(gfCallBack) == 0x8, "Class is wrong size!") ;
class gfCallBackList {
public:
gfCallBack* m_head;
gfCallBackList() : m_head(nullptr) { }
void add(gfCallBack* cb);
bool remove(gfCallBack* cb);
void process();
};
__static_assert(sizeof(gfCallBackList) == 0x4, "Class is wrong size!") ;
class gfTask {
public:
enum Category {
Category_None = 0x0,
Category_Enemy = 0x2,
Category_Ground = 0x6,
Category_GrCollision = 0x7,
Category_Menu = 0x8,
Category_Fighter = 0xA,
Category_Item = 0xB,
Category_Weapon = 0xC,
Category_Effect = 0xE,
Category_Info = 0x12,
Category_Camera = 0x15,
Category_Visual = 0x1F,
Category_Stage = 0x21,
Category_Physics = 0x23,
Category_AI = 0x24,
Category_CoinShooter = 0x25,
Category_Network = 0x26,
Category_SoCollision = 0x27,
};
enum Render {
Render_Pre,
Render_Opa,
Render_Xlu,
};
enum ProcessType {
Process_Default,
Process_Begin,
Process_Anim,
Process_Update,
Process_PreMapCorrection,
Process_MapCorrection,
Process_FixPosition,
Process_PreCollision,
Process_Collision,
Process_Catch,
Process_Hit,
Process_Camera,
Process_FixCamera,
Process_Effect,
Process_GameProc,
Process_End,
};
const char* m_taskName;
gfTask* m_prev;
gfTask* m_next;
gfTask* m_0xC;
gfTask* m_0x10;
gfTask* m_0x14;
gfTask* m_0x18;
gfTask* m_connectedTask;
gfTask* m_attachedTask;
gfTask* m_nextTask;
u32 m_taskId;
u8 _0 : 1;
bool m_alive : 1;
bool unk2C_b5 : 1;
u8 _1: 1;
bool unk2C_b3 : 1;
bool unk2C_b2 : 1;
bool unk2C_b1 : 1;
bool unk2C_b0 : 1;
u32 _2 : 1;
s32 m_status : 8;
Category m_taskCategory : 8;
u32 _4 : 7;
u8 unk30;
u8 unk31;
u16 unk32;
u16 unk34;
gfCallBackList unk38;
bool getFlag1() const { return unk2C_b1; }
bool getFlag2() const { return unk2C_b2; }
bool getFlag5() const { return unk2C_b5; }
bool isAlive() const { return m_alive; }
s32 getStatus() const { return m_status; }
void setStatus(s32 st) { m_status = st; }
gfTask(const char* name, Category category, int unk2, int unk3, bool unk4);
virtual void processDefault();
virtual void processBegin();
virtual void processAnim();
virtual void processUpdate();
virtual void processPreMapCorrection();
virtual void processMapCorrection();
virtual void processFixPosition();
virtual void processPreCollision();
virtual void processCollision();
virtual void processCatch();
virtual void processHit();
virtual void processCamera();
virtual void processFixCamera();
virtual void processEffect();
virtual void processGameProc();
virtual void processEnd();
virtual void renderPre();
virtual void renderOpa();
virtual void renderXlu();
virtual void processDebug();
virtual void renderDebug();
virtual void init();
virtual ~gfTask();
void updateId();
void process(ProcessType taskType);
void render(Render kind);
void setPaused(bool paused);
void link(bool p1);
void unlink();
void exit();
int getId();
Category getCategory();
static gfTask* getTask(int taskId);
};
__static_assert(sizeof(gfTask) == 0x40, "Class is wrong size!") ;
class gfKeepFrameBuffer {
bool m_isActive : 1;
bool m_needsUpdate : 1;
public:
void endKeepScreen();
void startKeepScreen();
void render();
void update();
};
__static_assert(sizeof(gfKeepFrameBuffer) == 1, "Class is the wrong size!") ;
struct vcBootParam {
u8 unk0[0x54];
void init(int argc, const char* argv[]);
};
class gfApplication;
extern gfApplication* g_gfApplication;
class gfApplication {
public:
u8 unk0[0xD0];
gfKeepFrameBuffer unkD0;
u8 unkD1[0x13];
int m_e4;
u8 unkE8[0x10];
u16 m_frameRate;
u8 unkFA[0x1A];
gfCallBackList m_114;
u8 unk118[0x4];
vcBootParam m_bootParam;
gfApplication();
~gfApplication();
void init();
void reset();
void restart();
void mainLoop();
void exit();
inline static gfApplication* getInstance() { return g_gfApplication; }
};
__static_assert(sizeof(gfApplication) == 0x170, "Class is wrong size!") ;
class gfSlowManager {
static const u32 StateInactive = 0;
static const u32 StateActive = 1;
struct SlowRequest {
u8 m_state : 8;
u8 m_slowRate;
};
static const u32 NRequests = 16;
SlowRequest m_reqs[NRequests];
public:
static void reset();
static void update();
static u32 requestSlow(u8 rate);
static bool removeRequest(const u8& idx);
static u8 getSlowRate();
static u8 getSlowRate(const u8& idx);
static float getQuickRate();
static float getRealTimeRate();
};
struct gmAppData {
char _0x0[0x30];
};
__static_assert(sizeof(gmAppData) == 0x30, "Class is wrong size!") ;
bool gmCheckExistFigure(u16 id);
enum GameMode {
Game_Mode_Melee = 0x0,
Game_Mode_Tournament = 0x1,
Game_Mode_Simple = 0x2,
Game_Mode_Simple_Target = 0x3,
Game_Mode_AllStar = 0x4,
Game_Mode_Rest = 0x5,
Game_Mode_Adventure = 0x6,
Game_Mode_Event = 0x7,
Game_Mode_Target = 0x8,
Game_Mode_Homerun = 0x9,
Game_Mode_Kumite = 0xA,
Game_Mode_Training = 0xD,
Game_Mode_Net_Friend = 0xE,
Game_Mode_Net_Friend_Practice = 0xF,
Game_Mode_Net_Kumite = 0x10,
Game_Mode_Net_Kumite_Practice = 0x11,
Game_Mode_Net_Homerun = 0x12,
Game_Mode_Net_Homerun_Practice = 0x13,
Game_Mode_Net_Watch = 0x17,
Game_Mode_Net_Okiraku = 0x18,
Game_Mode_Net_Okiraku_Practice = 0x19,
Game_Mode_Net_Team = 0x1C,
Game_Mode_Net_Team_Practice = 0x1D,
Game_Mode_Button = 0x1F,
Game_Mode_Result = 0x20,
Game_Mode_Demo = 0x21,
};
enum GameRule {
Game_Rule_Time = 0x0,
Game_Rule_Stock = 0x1,
Game_Rule_Coin = 0x2
};
enum gmCorpsKind {
Corps_None = 0x0,
Corps_Target = 0x3,
Corps_Simple = 0x4,
Corps_Kumite_Man_10 = 0x5,
Corps_Kumite_Man_100 = 0x6,
Corps_Kumite_Minute_3 = 0x7,
Corps_Kumite_Minute_15 = 0x8,
Corps_Kumite_Endless = 0x9,
Corps_Kumite_Cruel = 0xA,
};
enum gmCharacterKind {
Character_Mario = 0x0,
Character_DonkeyKong = 0x1, Character_Donkey = 0x1,
Character_Link = 0x2,
Character_Samus = 0x3,
Character_ZeroSuitSamus = 0x4, Character_SZeroSuit = 0x4,
Character_Yoshi = 0x5,
Character_Kirby = 0x6,
Character_Fox = 0x7,
Character_Pikachu = 0x8,
Character_Luigi = 0x9,
Character_CaptainFalcon = 0xa, Character_Captain = 0xa,
Character_Ness = 0xb,
Character_Bowser = 0xc, Character_Koopa = 0xc,
Character_Peach = 0xd,
Character_Zelda = 0xe,
Character_Sheik = 0xf,
Character_IceClimbers = 0x10, Character_IceClimber = 0x10,
Character_IceClimbers_Popo = 0x11, Character_IceClimber_Popo = 0x11,
Character_IceClimbers_Nana = 0x12, Character_IceClimber_Nana = 0x12,
Character_Marth = 0x13,
Character_MrGameAndWatch = 0x14, Character_GameWatch = 0x14,
Character_Falco = 0x15,
Character_Ganondorf = 0x16, Character_Ganon = 0x16,
Character_Wario = 0x17,
Character_MetaKnight = 0x18,
Character_Pit = 0x19,
Character_Olimar = 0x1a, Character_Pikmin = 0x1a,
Character_Lucas = 0x1b,
Character_DiddyKong = 0x1c, Character_Diddy = 0x1c,
Character_PokeLizardon_Trainer = 0x1d, Character_Charizard_Trainer = 0x1d,
Character_PokeLizardon_Solo = 0x1e, Character_Charizard_Solo = 0x1e,
Character_PokeZenigame_Trainer = 0x1f, Character_Squirtle_Trainer = 0x1f,
Character_PokeZenigame_Solo = 0x20, Character_Squirtle_Solo = 0x20,
Character_PokeFushigisou_Trainer = 0x21, Character_Ivysaur_Trainer = 0x21,
Character_PokeFushigisou_Solo = 0x22, Character_Ivysaur_Solo = 0x22,
Character_KingDedede = 0x23, Character_Dedede = 0x23,
Character_Lucario = 0x24,
Character_Ike = 0x25,
Character_ROB = 0x26, Character_Robot = 0x26,
Character_Jigglypuff = 0x27, Character_Purin = 0x27,
Character_ToonLink = 0x28,
Character_Wolf = 0x29,
Character_Snake = 0x2a,
Character_Sonic = 0x2b,
Character_GigaBowser = 0x2c, Character_GKoopa = 0x2c,
Character_WarioMan = 0x2d,
Character_Alloy_Red = 0x2e, Character_Zako_Boy = 0x2e,
Character_Alloy_Blue = 0x2f, Character_Zako_Girl = 0x2f,
Character_Alloy_Yellow = 0x30, Character_Zako_Child = 0x30,
Character_Alloy_Green = 0x31, Character_Zako_Ball = 0x31,
Character_MarioD = 0x32,
Character_Boss_PeteyPiranha = 0x33, Character_Boss_BossPackun = 0x33,
Character_Boss_Rayquaza = 0x34,
Character_Boss_PorkyStatue = 0x35,
Character_Boss_Porky = 0x36,
Character_Boss_Galloem = 0x37,
Character_Boss_Ridley = 0x38,
Character_Boss_Duon = 0x39,
Character_Boss_MetaRidley = 0x3a,
Character_Boss_Tabuu = 0x3b, Character_Boss_Taboo = 0x3b,
Character_Boss_MasterHand = 0x3c,
Character_Boss_CrazyHand = 0x3d,
Character_SelectNone = 0x3e,
Character_PokemonTrainer = 0x48, Character_PokeTrainer = 0x48,
Character_SamusSZeroSuit = 0x49,
Character_ZeldaShiek = 0x4a,
Character_Invalid = 0xff,
};
namespace Stages {
enum srStageKind {
BattleField = 0x01,
Battle = 0x01,
FinalDestination = 0x02,
Final = 0x02,
DelfinoPlaza = 0x03,
Dolpic = 0x03,
LuigiMansion = 0x04,
Mansion = 0x04,
MushroomyKingdom = 0x05,
MarioPast = 0x05,
MarioCircuit = 0x06,
Kart = 0x06,
_75m = 0x07,
Donkey = 0x07,
RumbleFalls = 0x08,
Jungle = 0x08,
PirateShip = 0x09,
Pirates = 0x09,
Norfair = 0x0B,
FrigateOrpheon = 0x0C,
Orpheon = 0x0C,
YoshiIsland = 0x0D,
Crayon = 0x0D,
Halberd = 0x0E,
LylatCruise = 0x13,
StarFox = 0x13,
PokemonStadium2 = 0x14,
Stadium = 0x14,
SpearPillar = 0x15,
Tengan = 0x15,
PortTown = 0x16,
FZero = 0x16,
Summit = 0x17,
Ice = 0x17,
FlatZone2 = 0x18,
GW = 0x18,
CastleSiege = 0x19,
Emblem = 0x19,
WarioWare = 0x1C,
Madein = 0x1C,
DistantPlanet = 0x1D,
Earth = 0x1D,
Skyworld = 0x1E,
Palutena = 0x1E,
MarioBros = 0x1F,
Famicom = 0x1F,
NewPorkCity = 0x20,
NewPork = 0x20,
Smashville = 0x21,
Village = 0x21,
ShadowMoses = 0x22,
MetalGear = 0x22,
GreenHillZone = 0x23,
GreenHill = 0x23,
PictoChat = 0x24,
PictChat = 0x24,
Hanenbow = 0x25,
Plankton = 0x25,
Config = 0x26,
Result = 0x28,
Temple = 0x29,
DxShrine = 0x29,
YoshiIslandMelee = 0x2A,
DxYorster = 0x2A,
JungleJapes = 0x2B,
DxGarden = 0x2B,
Onett = 0x2C,
DxOnett = 0x2C,
GreenGreens = 0x2D,
DxGreens = 0x2D,
PokemonStadium = 0x2E,
DxPStadium = 0x2E,
RainbowCruise = 0x2F,
DxCruise = 0x2F,
Corneria = 0x30,
DxCorneria = 0x30,
BigBlue = 0x31,
DxBigBlue = 0x31,
Brinstar = 0x32,
DxZebes = 0x32,
BridgeOfEldin = 0x33,
Oldin = 0x33,
HomeRunContest = 0x34,
Homerun = 0x34,
Builder = 0x35,
Edit = 0x35,
RestArea = 0x36,
Heal = 0x36,
OnlineTraining = 0x37,
OTrain = 0x37,
TargetSmash = 0x38,
Target = 0x38,
TargetBreak = 0x38,
TBreak = 0x38,
CharacterRoll = 0x39,
CharaRoll = 0x39,
CRoll = 0x39,
Subspace = 0x3d,
Adventure = 0x3d,
BattleFieldS = 0x41,
BattleS = 0x41
};
};
typedef Stages::srStageKind srStageKind;
struct gmPlayerCorpsInitData {
gmCharacterKind m_characterKind : 8;
u8 m_costumeId;
s8 m_stockCount;
u8 m_cpuType;
s8 m_cpuRank;
char _1[0x03];
float m_attackReactionMul;
float m_damageReactionMul;
float m_scale;
};
__static_assert(sizeof(gmPlayerCorpsInitData) == 0x14, "Class is wrong size!") ;
class gmGlobalCorps {
public:
u8 _0;
s8 m_numFightersToBeat;
u8 _1;
s8 m_numFightersInCurrentStage;
char _2[0x19];
s8 m_remainingFightersToBeat;
char _3[0x06];
gmPlayerCorpsInitData m_playersInitData[0x24];
};
__static_assert(sizeof(gmGlobalCorps) == 0x2f4, "Class is wrong size!") ;
class gmItSwitch {
public:
enum Frequency {
Frequency_None = 0x0,
Frequency_Low = 0x1,
Frequency_Medium = 0x2,
Frequency_High = 0x3,
Frequency_VeryHigh = 0x4,
Frequency_Intense = 0x5,
Frequency_BombRain = 0x6
};
struct ItemSwitch {
union {
struct {
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool m_cd : 1;
bool m_trophy : 1;
bool m_sticker : 1;
bool m_screwAttack : 1;
bool m_franklinBadge : 1;
bool m_teamHealer : 1;
bool m_soccerBall : 1;
bool m_unira : 1;
bool m_spring : 1;
bool m_bumper : 1;
bool m_bananaPeel : 1;
bool m_greenShell : 1;
bool m_mrSaturn : 1;
bool m_hothead : 1;
bool m_pitfall : 1;
bool m_smokeBall : 1;
bool m_freezie : 1;
bool m_dekuNut : 1;
bool m_smartBomb : 1;
bool m_gooeyBomb : 1;
bool m_motionSensorBomb : 1;
bool m_bobOmb : 1;
bool m_crackerLauncher : 1;
bool m_fireFlower : 1;
bool m_rayGun : 1;
bool m_superScope : 1;
bool m_goldenHammer : 1;
bool m_hammer : 1;
bool m_starRod : 1;
bool m_lipStick : 1;
bool m_fan : 1;
bool m_homeRunBat : 1;
bool m_beamSword : 1;
bool m_lightning : 1;
bool m_timer : 1;
bool m_superspicyCurry : 1;
bool m_bunnyHood : 1;
bool m_metalBox : 1;
bool m_starman : 1;
bool m_warpStar : 1;
bool m_poisonMushroom : 1;
bool m_superMushroom : 1;
bool m_dragoonParts : 1;
bool m_heartContainer : 1;
bool m_maximTomato : 1;
bool m_food : 1;
bool m_sandBag : 1;
bool m_blastBox : 1;
bool m_containers : 1;
bool m_pokeBall : 1;
bool m_assistTrophy : 1;
bool m_smashBall : 1;
};
struct {
bool m_extra3 : 1;
bool m_extra2 : 1;
bool m_extra1 : 1;
bool m_containerPartyBall : 1;
bool m_containerRollingCrate : 1;
bool m_containerCrate : 1;
bool m_containerBarrel : 1;
bool m_containerCapsule : 1;
bool m_containersExplode : 1;
bool m_containersHaveEnemies : 1;
bool m_containersHaveItems : 1;
bool m_passiveAggression : 1;
bool m_mayhem : 1;
bool m_extra : 1;
bool m_stage : 1;
bool m_screwAttack : 1;
bool m_franklinBadge : 1;
bool m_teamHealer : 1;
bool m_soccerBall : 1;
bool m_unira : 1;
bool m_spring : 1;
bool m_bumper : 1;
bool m_bananaPeel : 1;
bool m_greenShell : 1;
bool m_mrSaturn : 1;
bool m_hothead : 1;
bool m_pitfall : 1;
bool m_smokeBall : 1;
bool m_freezie : 1;
bool m_dekuNut : 1;
bool m_smartBomb : 1;
bool m_gooeyBomb : 1;
bool m_motionSensorBomb : 1;
bool m_bobOmb : 1;
bool m_crackerLauncher : 1;
bool m_fireFlower : 1;
bool m_rayGun : 1;
bool m_superScope : 1;
bool m_goldenHammer : 1;
bool m_hammer : 1;
bool m_starRod : 1;
bool m_lipStick : 1;
bool m_fan : 1;
bool m_homeRunBat : 1;
bool m_beamSword : 1;
bool m_lightning : 1;
bool m_timer : 1;
bool m_superspicyCurry : 1;
bool m_bunnyHood : 1;
bool m_metalBox : 1;
bool m_starman : 1;
bool m_warpStar : 1;
bool m_poisonMushroom : 1;
bool m_superMushroom : 1;
bool m_dragoonParts : 1;
bool m_heartContainer : 1;
bool m_maximTomato : 1;
bool m_food : 1;
bool m_sandBag : 1;
bool m_blastBox : 1;
bool m_containers : 1;
bool m_pokeBall : 1;
bool m_assistTrophy : 1;
bool m_smashBall : 1;
} ex;
};
} m_item;
struct PokemonSwitch {
union {
struct {
bool : 1;
bool : 1;
bool m_bonsly : 1;
bool m_suicune : 1;
bool m_wobuffet : 1;
bool m_gardevoir : 1;
bool m_goldeen : 1;
bool m_togepi : 1;
bool m_piplup : 1;
bool m_meowth : 1;
bool m_mew : 1;
bool m_metagross : 1;
bool m_electrode : 1;
bool m_weavile : 1;
bool m_manaphy : 1;
bool m_lugia : 1;
bool m_latiasLatios : 1;
bool m_kyogre : 1;
bool m_bellosom : 1;
bool m_snorlax : 1;
bool m_jirachi : 1;
bool m_hoOh : 1;
bool m_staryu : 1;
bool m_gulpin : 1;
bool m_groudon : 1;
bool m_deoxys : 1;
bool m_munchlax : 1;
bool m_moltres : 1;
bool m_entei : 1;
bool m_chikorita : 1;
bool m_celebi : 1;
bool m_torchic : 1;
};
struct {
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool m_bonsly : 1;
bool m_suicune : 1;
bool m_wobuffet : 1;
bool m_gardevoir : 1;
bool m_goldeen : 1;
bool m_togepi : 1;
bool m_piplup : 1;
bool m_meowth : 1;
bool m_metagross : 1;
bool m_electrode : 1;
bool m_weavile : 1;
bool m_manaphy : 1;
bool m_lugia : 1;
bool m_latiasLatios : 1;
bool m_kyogre : 1;
bool m_bellosom : 1;
bool m_snorlax : 1;
bool m_hoOh : 1;
bool m_staryu : 1;
bool m_gulpin : 1;
bool m_groudon : 1;
bool m_deoxys : 1;
bool m_munchlax : 1;
bool m_moltres : 1;
bool m_entei : 1;
bool m_chikorita : 1;
bool m_torchic : 1;
} ex;
};
} m_pokemon;
struct AssistSwitch {
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool m_drWright : 1;
bool m_waluigi : 1;
bool m_tingle : 1;
bool m_infantryTank : 1;
bool m_starfy : 1;
bool m_shadow : 1;
bool m_saki : 1;
bool m_isaac : 1;
bool m_mrResetti : 1;
bool m_nintendog : 1;
bool m_metroid : 1;
bool m_littleMac : 1;
bool m_lyn : 1;
bool m_jillDozer : 1;
bool m_katAna : 1;
bool m_helirin : 1;
bool m_hammerBro : 1;
bool m_knuckleJoe : 1;
bool m_lakitu : 1;
bool m_jeff : 1;
bool m_excitebike : 1;
bool m_devil : 1;
bool m_samuraiGoroh : 1;
bool m_rayMKII : 1;
bool m_grayFox : 1;
bool m_barbara : 1;
bool m_andross : 1;
} m_assist;
};
__static_assert(sizeof(gmItSwitch) == 0x10, "Class is wrong size!") ;
class gmMeleeInitData {
public:
GameMode m_gameMode : 6;
char _0x0_0 : 2;
GameRule m_gameRule : 3;
u8 m_numPlayers : 3;
u8 m_0x1_0 : 2;
bool m_0x2_7 : 1;
bool m_0x2_6 : 1;
bool m_0x2_5 : 1;
bool m_0x2_4 : 1;
bool m_0x2_3 : 1;
bool m_0x2_2 : 1;
bool m_0x2_1 : 1;
bool m_isTeamAttack : 1;
bool m_0x3_7 : 1;
bool m_0x3_6 : 1;
bool m_isStamina : 1;
bool m_0x3_4 : 1;
bool m_allowPause : 1;
bool m_0x3_2 : 1;
bool m_hideDamageGauge : 1;
bool m_0x3_0 : 1;
bool m_scoreDisplay : 1;
bool m_0x4_6 : 1;
bool m_0x4_5 : 1;
bool m_0x4_4 : 1;
bool m_0x4_3 : 1;
bool m_0x4_2 : 1;
bool m_0x4_1 : 1;
bool m_0x4_0 : 1;
char _0x5[0x2];
bool m_0x7_7 : 1;
bool m_0x7_6 : 1;
bool m_0x7_5 : 1;
bool m_0x7_4 : 1;
bool m_0x7_3 : 1;
bool m_0x7_2 : 1;
bool m_0x7_1 : 1;
bool m_isAmplifySongAttack : 1;
bool m_playeMode : 1;
u8 m_eventId : 7;
u8 m_scoreToWin;
char _0xA[0x1];
bool m_isTeams;
gmCorpsKind m_corpsKind : 8;
char _0xd[0x1];
gmItSwitch::Frequency m_itemFrequency : 8;
s8 m_suicideScoreMultiplier;
char _0x10[0x02];
srStageKind m_stageKind : 16;
u8 m_subStageKind;
char _0x15[0x3];
s32 m_timeLimitFrames;
char _0x1c[0x5];
bool m_isStaminaKnockback : 1;
bool m_isStaminaDeadZoneWrap : 1;
bool m_isHazardOff : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
char _0x22[6];
gmItSwitch m_itSwitch;
char _0x38[0x08];
float m_cameraShakeScale;
char _0x44[0x04];
float m_gameSpeed;
char _0x4c[0x2C];
short m_globalOffenseRatio;
short m_globalDefenseRatio;
char _0x7c[0x05];
u8 m_0x81;
char _0x82[0x0E];
};
__static_assert(sizeof(gmMeleeInitData) == 0x90, "Class is wrong size!") ;
class gmPlayerInitData {
public:
gmCharacterKind m_characterKind : 8;
u8 m_state;
u8 m_playerId;
u8 m_playerNo;
s8 m_stockCount;
s8 m_colorFileNo;
s8 m_colorNo;
s8 m_controllerNo;
s8 m_startPointIdx;
char _0x9[0x02];
s8 m_teamNo;
wchar_t m_name[5];
char _0x16[2];
u8 m_nameIndex;
char _0x17;
bool m_isNoVoice;
bool : 1;
bool : 1;
bool : 1;
bool m_isMetal : 1;
bool : 1;
bool m_isSpycloak : 1;
bool : 1;
bool : 1;
bool m_isStamina : 1;
bool : 1;
bool : 1;
bool m_isRebirthXlu : 1;
bool m_isRabbitCap : 1;
bool m_isFlower : 1;
bool m_isCurry : 1;
bool m_isReflector : 1;
char _0x1D[1];
u8 m_cpuType;
u8 m_cpuRank;
char _0x20[0x02];
short m_startDamage;
short m_hitPointMax;
char _0x26[0x02];
short m_glowAttack;
short m_glowDefense;
float m_attackRatio;
float m_damageRatio;
float m_attackReactionMul;
float m_damageReactionMul;
char _0x3C[0x04];
float m_scale;
float m_visibilityScale;
float m_gravity;
char _0x4C[0x10];
};
__static_assert(sizeof(gmPlayerInitData) == 0x5C, "Class is wrong size!") ;
class gmGlobalModeMelee {
public:
char _0[0x08];
gmMeleeInitData m_meleeInitData;
gmPlayerInitData m_playersInitData[7 ];
char _1[4];
};
__static_assert(sizeof(gmGlobalModeMelee) == 0x320, "Class is wrong size!") ;
struct gmGlobalRecord {
struct InfoAppFlagData {
enum State {
State_Locked = 0x0,
State_Unlocked = 0x1,
State_Received = 0x2,
State_UnlockedReceived = 0x3,
};
State m_unlocked75mStage : 2;
State m_unlockedLuigiMansionStage : 2;
State m_unlockedWolfFighter : 2;
State m_unlockedToonLinkFighter : 2;
State m_unlockedJigglypuffFighter : 2;
State m_unlockedSonicFighter : 2;
State m_unlockedMrGameAndWatchFighter : 2;
State m_unlockedGanondorfFighter : 2;
State m_unlockedROBFighter : 2;
State m_unlockedSnakeFighter : 2;
State m_unlockedLucarioFighter : 2;
State m_unlockedCaptainFalconFighter : 2;
State m_unlockedFalcoFighter : 2;
State m_unlockedLuigiFighter : 2;
State m_unlockedMarthFighter : 2;
State m_unlockedNessFighter : 2;
State m_encounteredCelebi : 2;
State m_encounteredMew : 2;
State m_unlockedRandomStageChoice : 2;
State m_unlockedAdditionalRules : 2;
State m_unlockedBossBattlesMode : 2;
State m_unlockedAllStarMode : 2;
State m_unlockedBigBlueStage : 2;
State m_unlockedPokemonStadiumStage : 2;
State m_unlockedGreenGreensStage : 2;
State m_unlockedJungleJapesStage : 2;
State m_unlockedFlatZone2Stage : 2;
State m_unlockedGreenHillZoneStage : 2;
State m_unlockedHanenbowStage : 2;
State m_unlockedMarioBrosStage : 2;
State m_unlockedSpearPillarStage : 2;
State m_unlockedPirateShipStage : 2;
State m_filledAllGWChronicleTitles : 2;
State m_unlockedSMWMasterpiece : 2;
State m_unlockedOOTMasterpiece : 2;
State m_unlockedSMB2Masterpiece : 2;
State m_unlockedFZeroMasterpiece : 2;
State m_unlockedDonkeyKongMasterpiece : 2;
State m_unlockedStageBuilderPartsC : 2;
State m_unlockedStageBuilderPartsB : 2;
State m_unlockedStageBuilderPartsA : 2;
State m_unlockedShadowAssist : 2;
State m_unlockedGrayFoxAssist : 2;
State m_unlockedBarbaraAssist : 2;
State m_unlockedInfantryAssist : 2;
State m_unlockedIsaacAssist : 2;
State m_unlockedCustomRoboAssist : 2;
State m_encounteredJirachi : 2;
State m_have400DifferentTrophies : 2;
State m_have300DifferentTrophies : 2;
State m_have200DifferentTrophies : 2;
State m_have100DifferentTrophies : 2;
State m_gotAllSubspaceBossTrophies : 2;
State m_gotAllSubspaceEnemyTrophies : 2;
State m_filledAllWiiChronicleTitles : 2;
State m_filledAllDSChronicleTitles : 2;
State m_filledAllGCNChronicleTitles : 2;
State m_filledAllGBAChronicleTitles : 2;
State m_filledAllN64ChronicleTitles : 2;
State m_filledAllVBChronicleTitles : 2;
State m_filledAllSNESChronicleTitles : 2;
State m_filledAllGBChronicleTitles : 2;
State m_empty : 2;
State m_filledAllNESChronicleTitles : 2;
State m_clearedAllStarAllFighters : 2;
State m_clearedAllStar : 2;
State m_clearedSubspace : 2;
State m_clearedClassicAllFighters : 2;
State m_clearedClassic : 2;
State m_have250Songs : 2;
State m_have200Songs : 2;
State m_have150Songs : 2;
State m_have100Songs : 2;
State m_have600DifferentStickers : 2;
State m_have500DifferentStickers : 2;
State m_have400DifferentStickers : 2;
State m_have300DifferentStickers : 2;
State m_have200DifferentStickers : 2;
State m_have100DifferentStickers : 2;
State m_have500DifferentTrophies : 2;
State m_cleared41SoloEvents : 2;
State m_cleared20SoloEvents : 2;
State m_clearedBossBattlesIntense : 2;
State m_clearedAllStarIntense : 2;
State m_clearedAllSubspaceStagesIntense : 2;
State m_clearedClassicIntenseOneStock : 2;
State m_clearedClassicIntense : 2;
State m_clearedTargetSmashLevel5AllFighters : 2;
State m_clearedTargetSmashLevel4AllFighters : 2;
State m_clearedTargetSmashLevel3AllFighters : 2;
State m_clearedTargetSmashLevel2AllFighters : 2;
State m_clearedTargetSmashLevel1AllFighters : 2;
State m_cleared15MinuteSmash : 2;
State m_cleared100ManSmash : 2;
State m_clearedBossBattlesAllFighters : 2;
State m_clearedBossBattles : 2;
State m_played10000Matches : 2;
State m_played1000Matches : 2;
State m_played100Matches : 2;
State m_gotAllOnlineFriendIcons : 2;
State m_filledAllChronicleTitles : 2;
State m_gotAllMasterpieces : 2;
State m_gotAllSongs : 2;
State m_gotAllStageBuilderParts : 2;
State m_gotAllStickers : 2;
State m_gotAllTrophies : 2;
State m_gotAllAssistTrophies : 2;
State m_gotAllSubspaceMovies : 2;
State m_gotAllStages : 2;
State m_gotAllFighters : 2;
State m_cleared21CoOpEvents : 2;
State m_cleared10CoOpEvents : 2;
};
__static_assert(sizeof(InfoAppFlagData) == 28, "Class is wrong size!") ;
struct EventHiScoreData {
u32 m_easyScores[51];
u32 m_normalScores[51];
u32 m_hardScores[51];
};
struct MenuData {
union StageSwitch {
struct {
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool m_dxPStadium : 1;
bool m_dxZebes : 1;
bool m_dxBigBlue : 1;
bool m_dxCorneria : 1;
bool m_dxCruise : 1;
bool m_dxGreens : 1;
bool m_dxOnett : 1;
bool m_dxGarden : 1;
bool m_dxYorster : 1;
bool m_dxShrine : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool : 1;
bool m_plankton : 1;
bool m_pictChat : 1;
bool m_greenHill : 1;
bool m_metalGear : 1;
bool m_village : 1;
bool m_newPork : 1;
bool m_famicom : 1;
bool m_palutena : 1;
bool m_earth : 1;
bool m_madein : 1;
bool m_emblem : 1;
bool m_gW : 1;
bool m_ice : 1;
bool m_fZero : 1;
bool m_tengan : 1;
bool m_stadium : 1;
bool m_starFox : 1;
bool m_halberd : 1;
bool m_crayon : 1;
bool m_orpheon : 1;
bool m_norfair : 1;
bool m_oldin : 1;
bool m_pirates : 1;
bool m_jungle : 1;
bool m_donkey : 1;
bool m_kart : 1;
bool m_marioPast : 1;
bool m_mansion : 1;
bool m_dolpic : 1;
bool m_final : 1;
bool m_battle : 1;
};
struct {
u32 m_meleeMask;
u32 m_normalMask;
};
};
u8 m_itemFrequency;
char _1[7];
gmItSwitch::ItemSwitch m_itemSwitch;
char _16[10];
u8 m_language;
char _27[5];
StageSwitch m_stageSwitch;
bool m_isWidescreen : 1;
bool m_41_6 : 1;
bool m_41_5 : 1;
bool m_41_4 : 1;
bool m_41_3 : 1;
bool m_41_2 : 1;
bool m_41_1 : 1;
bool m_41_0 : 1;
char _41[3];
};
struct NameData {
char _0[0x124];
};
__static_assert(sizeof(NameData) == 0x124, "Class is wrong size!") ;
char _0[28];
InfoAppFlagData m_infoAppFlagData;
char _56[756];
EventHiScoreData m_eventHiScoreData[2];
char _2036[28];
MenuData m_menuData;
char _spacer[0x34B4];
};
__static_assert(sizeof(gmGlobalRecord) == 0x3cf0, "Class is wrong size!") ;
struct nteGlobalData {
char _spacer[0x88];
};
__static_assert(sizeof(nteGlobalData) == 0x88, "Class is wrong size!") ;
struct gmAdvData {
struct Record {
struct LevelClear {
u32 m_state;
s32 m_difficulty;
u32 m_unk1;
s32 m_percent;
u32 m_unk2;
};
__static_assert(sizeof(LevelClear) == 0x14, "Class is wrong size!") ;
char _0[0x04];
LevelClear m_levelClears[34];
char unk2AC[0x467C];
u32 unk4928;
u32 unk492C;
};
__static_assert(sizeof(Record) == 0x4930, "Class is wrong size!") ;
Record m_record;
char unk4930[0x28];
};
__static_assert(sizeof(gmAdvData) == 0x4958, "Class is wrong size!") ;
struct gmPlayerResultInfo {
gmCharacterKind m_characterKind : 8;
u8 m_state;
s8 m_colorFileIdx;
char _3[3];
u8 m_teamNo;
char _7[1];
s16 m_hitPointMax;
u8 m_startStockCount;
char _11[1];
s16 m_startDamage;
u8 m_rank;
char _15[1];
u32 m_koCount;
u32 m_deadCount;
u16 m_suicideCount;
u16 m_playerBeatCounts[7 ];
u32 m_coins;
u32 m_pickupCoins;
u32 m_lostCoins;
char _26[548];
int m_rankCount;
char _604[80];
};
__static_assert(sizeof(gmPlayerResultInfo) == 684, "Class is wrong size!") ;
class gmResultInfo {
public:
enum DecisionKind {
Decision_Timeup = 0x1,
Decision_Win = 0x2,
Decision_Team_Win = 0x3,
Decision_Failure = 0x4,
Decision_Complete = 0x5,
Decision_Success = 0x6,
Decision_Event_Success = 0x7,
Decision_Event_Failure = 0x8,
Decision_NoContest = 0x9,
};
char _0[1];
GameRule m_gameRule : 8;
bool m_isTeams;
char _4[0xc];
u8 m_numWinners;
char _16[15];
s8 m_winningPlayer;
char _32[4];
gmPlayerResultInfo m_playersResultInfo[7 ];
char _4824[0xa0];
DecisionKind m_decisionKind : 8;
char _0x1379[11];
int m_framesElapsed;
};
__static_assert(sizeof(gmResultInfo) == 0x1388, "Class is wrong size!") ;
namespace static_checks {
}
struct gmSelCharData {
char _spacer[0xb8];
gmPlayerInitData m_playersInitData[7 ];
char _0x33c[4];
};
__static_assert(sizeof(gmSelCharData) == 0x340, "Class is wrong size!") ;
namespace static_checks {
}
struct gmSelStageData {
char _0[34];
srStageKind m_stageKind : 16;
u8 m_subStageKind;
char _37[771];
};
__static_assert(sizeof(gmSelStageData) == 808, "Class is wrong size!") ;
struct gmSetRule {
char _0[0x2];
u8 _1 : 5;
GameRule m_rule : 3;
u8 m_timeMinutes;
u8 m_stockCount;
u8 m_handicap;
u8 m_damageRatio;
u8 m_stageChoice;
u8 m_stockTimeMinutes;
u8 m_isTeamAttack;
u8 m_allowPause;
u8 m_showScoreDisplay;
u8 m_showDamageGauge;
char _13[11];
u8 m_spMeleeSetting1;
u8 m_spMeleeSetting2;
u8 m_spMeleeSetting3;
u8 m_spMeleeSetting4;
u8 m_spMeleeSetting5;
u8 m_spMeleeSetting6;
u8 m_spMeleeSetting7;
u8 m_spMeleeSetting8;
char _32[0x68];
};
__static_assert(sizeof(gmSetRule) == 0x88, "Class is wrong size!") ;
struct gmTournamentData {
char _spacer[0x510];
};
__static_assert(sizeof(gmTournamentData) == 0x510, "Class is wrong size!") ;
struct gmStageData {
struct ItemCollection {
u16 m_num;
short m_variations[256];
u8 m_kinds[256];
};
short m_exSetting;
char _2[2];
float m_motionRatio;
float m_motionSubRatio;
ItemCollection m_itemCollection;
char _782[2310];
};
__static_assert(sizeof(gmStageData) == 3092, "Class is wrong size!") ;
struct gmStageEditData {
char _spacer[0x24e4];
};
__static_assert(sizeof(gmStageEditData) == 0x24e4, "Class is wrong size!") ;
class GameGlobal {
public:
gmAppData* m_appData;
char _0[0x4];
gmGlobalModeMelee* m_modeMelee;
char _1[0x04];
gmSelCharData* m_selCharData;
gmSelStageData* m_selStageData;
gmResultInfo* m_resultInfo;
gmSetRule* m_setRule;
char _3[0x04];
gmGlobalRecord* m_record;
gmGlobalRecord::NameData* m_nameRecords;
gmTournamentData* m_tournamentData;
gmAdvData* m_advData;
nteGlobalData* m_nteData;
char _4[0x04];
gmGlobalCorps* m_corps;
gmStageEditData* m_stageEditData;
gmStageData* m_stageData;
char _6[0x8];
gmGlobalRecord::MenuData* getGlobalRecordMenuDatap();
float getGameFrame() const;
void updateGameFrame();
u32 getSlowRate() const;
void setSlowRate(u8 rate);
static int getLanguage();
static GameGlobal* getInstance();
};
__static_assert(sizeof(GameGlobal) == 0x50, "Class is wrong size!") ;
extern GameGlobal* g_GameGlobal;
static bool s_needsUpdate;
static u8 s_maxSlowRate = 1;
static gfSlowManager s_gfSlowManager;

#define requestSlow gfSlowManager::requestSlow
)
PERM_PRETEND(
typedef unsigned char u8;
typedef unsigned int u32;
typedef struct SlowRequest { u8 m_state; u8 m_slowRate; } SlowRequest;
typedef struct gfSlowManager { SlowRequest m_reqs[16]; } gfSlowManager;
static int s_needsUpdate;
static gfSlowManager s_gfSlowManager;
enum { StateInactive = 0, StateActive = 1, NRequests = 16, true = 1 };
)
u32 requestSlow(u8 rate) {
    u8 res = 0xFF;
    SlowRequest* reqs = s_gfSlowManager.m_reqs;
    SlowRequest* curr;
    u8 i;
    for (i = 0; i < NRequests; i++) {
        curr = &reqs[i];
        if (curr->m_state == StateInactive) {
            res = i;
            s_needsUpdate = true;
            curr->m_state = StateActive;
            curr->m_slowRate = rate;
            break;
        }
    }
    return (u32)res << 24;
}
