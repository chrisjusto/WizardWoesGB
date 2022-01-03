#pragma bank 255
// SpriteSheet: MageGame_HitBox
  
#include "gbs_types.h"
#include "data/tileset_6.h"

BANKREF(spritesheet_3)

#define SPRITE_3_STATE_DEFAULT 0
#define SPRITE_3_STATE_ATTACKRIGHT 0
#define SPRITE_3_STATE_ATTACKLEFT 0
#define SPRITE_3_STATE_HITSTUNRIGHT 0
#define SPRITE_3_STATE_HITSTUNLEFT 0
#define SPRITE_3_STATE_FIREBALLRIGHT 0
#define SPRITE_3_STATE_FIREBALLLEFT 0
#define SPRITE_3_STATE_DEATHRIGHT 0
#define SPRITE_3_STATE_DEATHLEFT 0

const metasprite_t spritesheet_3_metasprite_0[]  = {
    { -8, 8, 0, 0 }, { 0, -8, 2, 0 }, { 8, 8, 4, 0 }, { 0, -8, 6, 0 },
    {metasprite_end}
};

const metasprite_t * const spritesheet_3_metasprites[] = {
    spritesheet_3_metasprite_0
};

const struct animation_t spritesheet_3_animations[] = {
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

const UWORD spritesheet_3_animations_lookup[] = {
    SPRITE_3_STATE_DEFAULT
};

const struct spritesheet_t spritesheet_3 = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -24
    },
    .metasprites = spritesheet_3_metasprites,
    .animations = spritesheet_3_animations,
    .animations_lookup = spritesheet_3_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 6,
        .right = 15,
        .top = -12
    },
    .tileset = TO_FAR_PTR_T(tileset_6),
    .cgb_tileset = { NULL, NULL }
};
