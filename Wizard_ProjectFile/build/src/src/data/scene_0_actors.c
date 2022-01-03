#pragma bank 255

// Scene: Level 1-1
// Actors

#include "gbs_types.h"
#include "data/spritesheet_6.h"
#include "data/script_s0a0_update.h"
#include "data/script_s0a0_interact.h"
#include "data/spritesheet_7.h"

BANKREF(scene_0_actors)

const struct actor_t scene_0_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 120 * 16,
            .y = 88 * 16
        },
        .bounds = {
            .left = 4,
            .bottom = 7,
            .right = 11,
            .top = 0
        },
        .dir = DIR_LEFT,
        .sprite = TO_FAR_PTR_T(spritesheet_6),
        .move_speed = 32,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_1,
        .collision_enabled = TRUE,
        .script_update = TO_FAR_PTR_T(script_s0a0_update),
        .script = TO_FAR_PTR_T(script_s0a0_interact),
        .exclusive_sprite = 0
    },
    {
        // Actor 2,
        .pos = {
            .x = 16 * 16,
            .y = 8 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(spritesheet_7),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = TRUE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = FALSE,
        .exclusive_sprite = 0
    }
};
