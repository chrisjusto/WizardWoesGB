#pragma bank 255

// Scene: Level 1-2
// Actors

#include "gbs_types.h"
#include "data/spritesheet_7.h"

BANKREF(scene_3_actors)

const struct actor_t scene_3_actors[] = {
    {
        // Actor 1,
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
        .dir = DIR_RIGHT,
        .sprite = TO_FAR_PTR_T(spritesheet_7),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = TRUE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = FALSE,
        .exclusive_sprite = 0
    }
};
