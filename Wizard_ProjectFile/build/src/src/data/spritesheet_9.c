#pragma bank 255
// SpriteSheet: actor_animated
  
#include "gbs_types.h"
#include "data/tileset_12.h"

BANKREF(spritesheet_9)

#define SPRITE_9_STATE_DEFAULT 0
#define SPRITE_9_STATE_ATTACKRIGHT 0
#define SPRITE_9_STATE_ATTACKLEFT 0
#define SPRITE_9_STATE_HITSTUNRIGHT 0
#define SPRITE_9_STATE_HITSTUNLEFT 0
#define SPRITE_9_STATE_FIREBALLRIGHT 0
#define SPRITE_9_STATE_FIREBALLLEFT 0
#define SPRITE_9_STATE_DEATHRIGHT 0
#define SPRITE_9_STATE_DEATHLEFT 0

const metasprite_t spritesheet_9_metasprite_0[]  = {
    { 0, 8, 6, 0 }, { 0, -8, 8, 0 },
    {metasprite_end}
};

const metasprite_t spritesheet_9_metasprite_1[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t spritesheet_9_metasprite_2[]  = {
    { 0, 8, 4, 0 }, { 0, -8, 4, 32 },
    {metasprite_end}
};

const metasprite_t spritesheet_9_metasprite_3[]  = {
    { 0, 0, 0, 32 }, { 0, 8, 2, 32 },
    {metasprite_end}
};

const metasprite_t spritesheet_9_metasprite_4[]  = {
    { 0, 8, 16, 0 }, { 0, -8, 18, 0 },
    {metasprite_end}
};

const metasprite_t spritesheet_9_metasprite_5[]  = {
    { 0, 8, 10, 0 }, { 0, -8, 12, 0 },
    {metasprite_end}
};

const metasprite_t spritesheet_9_metasprite_6[]  = {
    { 0, 8, 14, 0 }, { 0, -8, 14, 32 },
    {metasprite_end}
};

const metasprite_t spritesheet_9_metasprite_7[]  = {
    { 0, 0, 10, 32 }, { 0, 8, 12, 32 },
    {metasprite_end}
};

const metasprite_t * const spritesheet_9_metasprites[] = {
    spritesheet_9_metasprite_0,
    spritesheet_9_metasprite_1,
    spritesheet_9_metasprite_2,
    spritesheet_9_metasprite_3,
    spritesheet_9_metasprite_4,
    spritesheet_9_metasprite_0,
    spritesheet_9_metasprite_5,
    spritesheet_9_metasprite_1,
    spritesheet_9_metasprite_6,
    spritesheet_9_metasprite_2,
    spritesheet_9_metasprite_7,
    spritesheet_9_metasprite_3
};

const struct animation_t spritesheet_9_animations[] = {
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 1,
        .end = 1
    },
    {
        .start = 2,
        .end = 2
    },
    {
        .start = 3,
        .end = 3
    },
    {
        .start = 4,
        .end = 5
    },
    {
        .start = 6,
        .end = 7
    },
    {
        .start = 8,
        .end = 9
    },
    {
        .start = 10,
        .end = 11
    }
};

const UWORD spritesheet_9_animations_lookup[] = {
    SPRITE_9_STATE_DEFAULT
};

const struct spritesheet_t spritesheet_9 = {
    .n_metasprites = 12,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = spritesheet_9_metasprites,
    .animations = spritesheet_9_animations,
    .animations_lookup = spritesheet_9_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = 0
    },
    .tileset = TO_FAR_PTR_T(tileset_12),
    .cgb_tileset = { NULL, NULL }
};
