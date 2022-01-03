#pragma bank 255
// SpriteSheet: MageGame_AttackParticle_Left
  
#include "gbs_types.h"
#include "data/tileset_5.h"

BANKREF(spritesheet_2)

#define SPRITE_2_STATE_DEFAULT 0
#define SPRITE_2_STATE_ATTACKRIGHT 0
#define SPRITE_2_STATE_ATTACKLEFT 0
#define SPRITE_2_STATE_HITSTUNRIGHT 0
#define SPRITE_2_STATE_HITSTUNLEFT 0
#define SPRITE_2_STATE_FIREBALLRIGHT 0
#define SPRITE_2_STATE_FIREBALLLEFT 0
#define SPRITE_2_STATE_DEATHRIGHT 0
#define SPRITE_2_STATE_DEATHLEFT 0

const metasprite_t spritesheet_2_metasprite_0[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 }, { -8, 8, 4, 0 }, { 0, -8, 6, 0 },
    {metasprite_end}
};

const metasprite_t * const spritesheet_2_metasprites[] = {
    spritesheet_2_metasprite_0
};

const struct animation_t spritesheet_2_animations[] = {
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

const UWORD spritesheet_2_animations_lookup[] = {
    SPRITE_2_STATE_DEFAULT
};

const struct spritesheet_t spritesheet_2 = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -24
    },
    .metasprites = spritesheet_2_metasprites,
    .animations = spritesheet_2_animations,
    .animations_lookup = spritesheet_2_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(tileset_5),
    .cgb_tileset = { NULL, NULL }
};
