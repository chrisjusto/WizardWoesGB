#pragma bank 255

// Scene: Title
// Actors

#include "gbs_types.h"
#include "data/spritesheet_8.h"

BANKREF(scene_1_actors)

const struct actor_t scene_1_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 80 * 16,
            .y = 96 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(spritesheet_8),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .exclusive_sprite = 0
    }
};
