#pragma bank 255
// SpriteSheet: MageGame_HealthUI
  
#include "gbs_types.h"
#include "data/tileset_10.h"

BANKREF(spritesheet_7)

#define SPRITE_7_STATE_DEFAULT 0
#define SPRITE_7_STATE_ATTACKRIGHT 0
#define SPRITE_7_STATE_ATTACKLEFT 0
#define SPRITE_7_STATE_HITSTUNRIGHT 0
#define SPRITE_7_STATE_HITSTUNLEFT 0
#define SPRITE_7_STATE_FIREBALLRIGHT 0
#define SPRITE_7_STATE_FIREBALLLEFT 0
#define SPRITE_7_STATE_DEATHRIGHT 0
#define SPRITE_7_STATE_DEATHLEFT 0

const metasprite_t spritesheet_7_metasprite_0[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 0, 32 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t spritesheet_7_metasprite_1[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 4, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t spritesheet_7_metasprite_2[]  = {
    { 0, 8, 6, 0 }, { 0, -8, 8, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t spritesheet_7_metasprite_3[]  = {
    { 0, 8, 8, 32 }, { 0, -8, 8, 0 }, { 0, -8, 2, 0 },
    {metasprite_end}
};

const metasprite_t * const spritesheet_7_metasprites[] = {
    spritesheet_7_metasprite_0,
    spritesheet_7_metasprite_1,
    spritesheet_7_metasprite_2,
    spritesheet_7_metasprite_3
};

const struct animation_t spritesheet_7_animations[] = {
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    },
    {
        .start = 0,
        .end = 3
    }
};

const UWORD spritesheet_7_animations_lookup[] = {
    SPRITE_7_STATE_DEFAULT
};

const struct spritesheet_t spritesheet_7 = {
    .n_metasprites = 4,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = spritesheet_7_metasprites,
    .animations = spritesheet_7_animations,
    .animations_lookup = spritesheet_7_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(tileset_10),
    .cgb_tileset = { NULL, NULL }
};
