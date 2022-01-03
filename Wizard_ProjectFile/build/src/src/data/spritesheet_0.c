#pragma bank 255
// SpriteSheet: MageGame_FireBallRight
  
#include "gbs_types.h"
#include "data/tileset_3.h"

BANKREF(spritesheet_0)

#define SPRITE_0_STATE_DEFAULT 0
#define SPRITE_0_STATE_ATTACKRIGHT 0
#define SPRITE_0_STATE_ATTACKLEFT 0
#define SPRITE_0_STATE_HITSTUNRIGHT 0
#define SPRITE_0_STATE_HITSTUNLEFT 0
#define SPRITE_0_STATE_FIREBALLRIGHT 0
#define SPRITE_0_STATE_FIREBALLLEFT 0
#define SPRITE_0_STATE_DEATHRIGHT 0
#define SPRITE_0_STATE_DEATHLEFT 0

const metasprite_t spritesheet_0_metasprite_0[]  = {
    { 0, 8, 0, 0 },
    {metasprite_end}
};

const metasprite_t spritesheet_0_metasprite_1[]  = {
    { 0, 8, 2, 0 },
    {metasprite_end}
};

const metasprite_t * const spritesheet_0_metasprites[] = {
    spritesheet_0_metasprite_0,
    spritesheet_0_metasprite_1
};

const struct animation_t spritesheet_0_animations[] = {
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
    },
    {
        .start = 0,
        .end = 1
    }
};

const UWORD spritesheet_0_animations_lookup[] = {
    SPRITE_0_STATE_DEFAULT
};

const struct spritesheet_t spritesheet_0 = {
    .n_metasprites = 2,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = spritesheet_0_metasprites,
    .animations = spritesheet_0_animations,
    .animations_lookup = spritesheet_0_animations_lookup,
    .bounds = {
        .left = 8,
        .bottom = 4,
        .right = 15,
        .top = -5
    },
    .tileset = TO_FAR_PTR_T(tileset_3),
    .cgb_tileset = { NULL, NULL }
};
