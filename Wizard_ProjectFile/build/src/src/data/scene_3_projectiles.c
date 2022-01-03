#pragma bank 255

// Scene: Level 1-2
// Projectiles

#include "gbs_types.h"
#include "data/spritesheet_0.h"
#include "data/spritesheet_1.h"
#include "data/spritesheet_2.h"
#include "data/spritesheet_3.h"

BANKREF(scene_3_projectiles)

const struct projectile_def_t scene_3_projectiles[] = {
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
    },
    {
        // Projectile 2,
        .sprite = TO_FAR_PTR_T(spritesheet_2),
        .move_speed = 32,
        .life_time = 9,
        .collision_group = COLLISION_GROUP_3,
        .collision_mask = COLLISION_GROUP_1,
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .anim_tick = 15,
        .animations = {
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            }
        },
        .initial_offset = 128
    },
    {
        // Projectile 3,
        .sprite = TO_FAR_PTR_T(spritesheet_3),
        .move_speed = 32,
        .life_time = 9,
        .collision_group = COLLISION_GROUP_3,
        .collision_mask = COLLISION_GROUP_1,
        .bounds = {
            .left = 0,
            .bottom = 6,
            .right = 15,
            .top = -12
        },
        .anim_tick = 15,
        .animations = {
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            },
            {
                .start = 0,
                .end = 0
            }
        },
        .initial_offset = 128
    }
};
