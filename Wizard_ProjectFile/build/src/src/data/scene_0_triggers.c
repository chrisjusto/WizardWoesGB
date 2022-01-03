#pragma bank 255

// Scene: Level 1-1
// Triggers

#include "gbs_types.h"
#include "data/script_s0t0_interact.h"
#include "data/script_s0t1_interact.h"

BANKREF(scene_0_triggers)

const struct trigger_t scene_0_triggers[] = {
    {
        // Trigger 1,
        .x = 19,
        .y = 7,
        .width = 1,
        .height = 3,
        .script = TO_FAR_PTR_T(script_s0t0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 7,
        .y = 4,
        .width = 12,
        .height = 12,
        .script = TO_FAR_PTR_T(script_s0t1_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
