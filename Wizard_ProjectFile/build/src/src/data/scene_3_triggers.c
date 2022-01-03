#pragma bank 255

// Scene: Level 1-2
// Triggers

#include "gbs_types.h"
#include "data/script_s3t0_interact.h"
#include "data/script_s3t1_interact.h"

BANKREF(scene_3_triggers)

const struct trigger_t scene_3_triggers[] = {
    {
        // Trigger 1,
        .x = 4,
        .y = 33,
        .width = 5,
        .height = 1,
        .script = TO_FAR_PTR_T(script_s3t0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 12,
        .y = 33,
        .width = 4,
        .height = 1,
        .script = TO_FAR_PTR_T(script_s3t1_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
