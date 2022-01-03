#pragma bank 255

// Scene: Level 1-1

#include "gbs_types.h"
#include "data/background_1.h"
#include "data/scene_0_collisions.h"
#include "data/palette_0.h"
#include "data/palette_1.h"
#include "data/spritesheet_4.h"
#include "data/scene_0_actors.h"
#include "data/scene_0_triggers.h"
#include "data/scene_0_sprites.h"
#include "data/scene_0_projectiles.h"
#include "data/script_s0_init.h"
#include "data/script_s0_p_hit1.h"

BANKREF(scene_0)

const struct scene_t scene_0 = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_PLATFORM,
    .background = TO_FAR_PTR_T(background_1),
    .collisions = TO_FAR_PTR_T(scene_0_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_0),
    .sprite_palette = TO_FAR_PTR_T(palette_1),
    .player_sprite = TO_FAR_PTR_T(spritesheet_4),
    .n_actors = 2,
    .n_triggers = 2,
    .n_sprites = 6,
    .n_projectiles = 4,
    .actors = TO_FAR_PTR_T(scene_0_actors),
    .triggers = TO_FAR_PTR_T(scene_0_triggers),
    .sprites = TO_FAR_PTR_T(scene_0_sprites),
    .projectiles = TO_FAR_PTR_T(scene_0_projectiles),
    .script_init = TO_FAR_PTR_T(script_s0_init),
    .script_p_hit1 = TO_FAR_PTR_T(script_s0_p_hit1)
};
