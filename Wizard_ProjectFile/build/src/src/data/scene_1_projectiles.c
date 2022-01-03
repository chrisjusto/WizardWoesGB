#pragma bank 255

// Scene: Title
// Projectiles

#include "gbs_types.h"
#include "data/spritesheet_0.h"
#include "data/spritesheet_1.h"

BANKREF(scene_1_projectiles)

const struct projectile_def_t scene_1_projectiles[] = {
    {
        // Projectile 0,
        .sprite = TO_FAR_PTR_T(spritesheet_0),
        .move_speed = 48,
        .life_time = 30,
        .collision_group = COLLISION_GROUP_3,
        .collision_mask = COLLISION_GROUP_1,
        .bounds = {
            .left = 8,
            .bottom = 4,
            .right = 15,
            .top = -5
        },
        .anim_tick = 15,
        .animations = {
            {
                .start = 0,
                .end = 1
            },
            {
                .start = 0,
                .end = 1
            },
            {
                .start = 0,
                .end = 1
            },
            {
                .start = 0,
                .end = 1
            }
        },
        .initial_offset = 0
    },
    {
        // Projectile 1,
        .sprite = TO_FAR_PTR_T(spritesheet_1),
        .move_speed = 48,
        .life_time = 30,
        .collision_group = COLLISION_GROUP_3,
        .collision_mask = COLLISION_GROUP_1,
        .bounds = {
            .left = 0,
            .bottom = 4,
            .right = 7,
            .top = -5
        },
        .anim_tick = 15,
        .animations = {
            {
                .start = 0,
                .end = 1
            },
            {
                .start = 0,
                .end = 1
            },
            {
                .start = 0,
                .end = 1
            },
            {
                .start = 0,
                .end = 1
            }
        },
        .initial_offset = 0
    }
};
