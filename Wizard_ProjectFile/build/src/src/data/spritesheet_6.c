#pragma bank 255
// SpriteSheet: Enemy_Bird
  
#include "gbs_types.h"
#include "data/tileset_9.h"

BANKREF(spritesheet_6)

#define SPRITE_6_STATE_DEFAULT 0
#define SPRITE_6_STATE_ATTACKRIGHT 16
#define SPRITE_6_STATE_ATTACKLEFT 8
#define SPRITE_6_STATE_HITSTUNRIGHT 0
#define SPRITE_6_STATE_HITSTUNLEFT 0
#define SPRITE_6_STATE_FIREBALLRIGHT 0
#define SPRITE_6_STATE_FIREBALLLEFT 0
#define SPRITE_6_STATE_DEATHRIGHT 0
#define SPRITE_6_STATE_DEATHLEFT 0

const metasprite_t spritesheet_6_metasprite_0[]  = {
    { 0, 4, 0, 16 },
    {metasprite_end}
};

const metasprite_t spritesheet_6_metasprite_1[]  = {
    { 0, 4, 2, 0 },
    {metasprite_end}
};

const metasprite_t spritesheet_6_metasprite_2[]  = {
    { 0, 4, 4, 0 },
    {metasprite_end}
};

const metasprite_t spritesheet_6_metasprite_3[]  = {
    { 0, 4, 6, 0 },
    {metasprite_end}
};

const metasprite_t spritesheet_6_metasprite_4[]  = {
    { 0, 4, 8, 0 },
    {metasprite_end}
};

const metasprite_t spritesheet_6_metasprite_5[]  = {
    { 0, 4, 10, 0 },
    {metasprite_end}
};

const metasprite_t spritesheet_6_metasprite_6[]  = {
    { 0, 4, 0, 32 },
    {metasprite_end}
};

const metasprite_t spritesheet_6_metasprite_7[]  = {
    { 0, 4, 2, 32 },
    {metasprite_end}
};

const metasprite_t spritesheet_6_metasprite_8[]  = {
    { 0, 4, 4, 32 },
    {metasprite_end}
};

const metasprite_t spritesheet_6_metasprite_9[]  = {
    { 0, 4, 6, 32 },
    {metasprite_end}
};

const metasprite_t spritesheet_6_metasprite_10[]  = {
    { 0, 4, 8, 32 },
    {metasprite_end}
};

const metasprite_t spritesheet_6_metasprite_11[]  = {
    { 0, 4, 10, 32 },
    {metasprite_end}
};

const metasprite_t spritesheet_6_metasprite_12[]  = {
    { 0, 4, 12, 0 },
    {metasprite_end}
};

const metasprite_t spritesheet_6_metasprite_13[]  = {
    { 0, 4, 14, 0 },
    {metasprite_end}
};

const metasprite_t * const spritesheet_6_metasprites[] = {
    spritesheet_6_metasprite_0,
    spritesheet_6_metasprite_1,
    spritesheet_6_metasprite_2,
    spritesheet_6_metasprite_3,
    spritesheet_6_metasprite_4,
    spritesheet_6_metasprite_5,
    spritesheet_6_metasprite_6,
    spritesheet_6_metasprite_7,
    spritesheet_6_metasprite_8,
    spritesheet_6_metasprite_9,
    spritesheet_6_metasprite_10,
    spritesheet_6_metasprite_11,
    spritesheet_6_metasprite_12,
    spritesheet_6_metasprite_13
};

const struct animation_t spritesheet_6_animations[] = {
    {
        .start = 0,
        .end = 5
    },
    {
        .start = 0,
        .end = 5
    },
    {
        .start = 0,
        .end = 5
    },
    {
        .start = 0,
        .end = 5
    },
    {
        .start = 0,
        .end = 5
    },
    {
        .start = 0,
        .end = 5
    },
    {
        .start = 0,
        .end = 5
    },
    {
        .start = 0,
        .end = 5
    },
    {
        .start = 6,
        .end = 11
    },
    {
        .start = 6,
        .end = 11
    },
    {
        .start = 6,
        .end = 11
    },
    {
        .start = 6,
        .end = 11
    },
    {
        .start = 6,
        .end = 11
    },
    {
        .start = 6,
        .end = 11
    },
    {
        .start = 6,
        .end = 11
    },
    {
        .start = 6,
        .end = 11
    },
    {
        .start = 12,
        .end = 13
    },
    {
        .start = 12,
        .end = 13
    },
    {
        .start = 12,
        .end = 13
    },
    {
        .start = 12,
        .end = 13
    },
    {
        .start = 12,
        .end = 13
    },
    {
        .start = 12,
        .end = 13
    },
    {
        .start = 12,
        .end = 13
    },
    {
        .start = 12,
        .end = 13
    }
};

const UWORD spritesheet_6_animations_lookup[] = {
    SPRITE_6_STATE_DEFAULT,
    SPRITE_6_STATE_ATTACKRIGHT,
    SPRITE_6_STATE_ATTACKLEFT
};

const struct spritesheet_t spritesheet_6 = {
    .n_metasprites = 14,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = spritesheet_6_metasprites,
    .animations = spritesheet_6_animations,
    .animations_lookup = spritesheet_6_animations_lookup,
    .bounds = {
        .left = 4,
        .bottom = 7,
        .right = 11,
        .top = 0
    },
    .tileset = TO_FAR_PTR_T(tileset_9),
    .cgb_tileset = { NULL, NULL }
};
