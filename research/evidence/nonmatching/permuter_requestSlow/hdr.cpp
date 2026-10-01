#include <gf/gf_application.h>
#include <gf/gf_slow_manager.h>
#include <gm/gm_global.h>
#include <types.h>

static bool s_needsUpdate;
static u8 s_maxSlowRate = 1;
static gfSlowManager s_gfSlowManager;
