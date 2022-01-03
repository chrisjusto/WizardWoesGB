#pragma bank 255
// SpriteSheet: press-start
  
#include "gbs_types.h"
#include "data/tileset_11.h"

BANKREF(spritesheet_8)

#define SPRITE_8_STATE_DEFAULT 0
#define SPRITE_8_STATE_ATTACKRIGHT 0
#define SPRITE_8_STATE_ATTACKLEFT 0
#define SPRITE_8_STATE_HITSTUNRIGHT 0
#define SPRITE_8_STATE_HITSTUNLEFT 0
#define SPRITE_8_STATE_FIREBALLRIGHT 0
#define SPRITE_8_STATE_FIREBALLLEFT 0
#define SPRITE_8_STATE_DEATHRIGHT 0
#define SPRITE_8_STATE_DEATHLEFT 0

const metasprite_t spritesheet_8_metasprite_0[]  = {
    { 0, 24, 0, 1 }, { 0, -8, 2, 1 }, { 0, -8, 4, 1 }, { 0, -8, 6, 1 }, { 0, -8, 8, 1 }, { 0, -8, 10, 1 },
    {metasprite_end}
};

const metasprite_t * const spritesheet_8_metasprites[] = {
    spritesheet_8_metasprite_0
};

const struct animation_t spritesheet_8_animations[] = {
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
    },
    {
        .start = 0,
        .end = 0
    }
};

const UWORD spritesheet_8_animations_lookup[] = {
    SPRITE_8_STATE_DEFAULT
};

const struct spritesheet_t spritesheet_8 = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = spritesheet_8_metasprites,
    .animations = spritesheet_8_animations,
    .animations_lookup = spritesheet_8_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(tileset_11),
    .cgb_tileset = { NULL, NULL }
};
