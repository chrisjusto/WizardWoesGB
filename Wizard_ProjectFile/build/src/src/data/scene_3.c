#pragma bank 255

// Scene: Level 1-2

#include "gbs_types.h"
#include "data/background_2.h"
#include "data/scene_3_collisions.h"
#include "data/palette_0.h"
#include "data/palette_1.h"
#include "data/spritesheet_4.h"
#include "data/scene_3_actors.h"
#include "data/scene_3_triggers.h"
#include "data/scene_3_sprites.h"
#include "data/scene_3_projectiles.h"
#include "data/script_s3_init.h"
#include "data/script_s3_p_hit1.h"

BANKREF(scene_3)

const struct scene_t scene_3 = {
    .width = 20,
    .height = 36,
    .type = SCENE_TYPE_PLATFORM,
    .background = TO_FAR_PTR_T(background_2),
    .collisions = TO_FAR_PTR_T(scene_3_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_0),
    .sprite_palette = TO_FAR_PTR_T(palette_1),
    .player_sprite = TO_FAR_PTR_T(spritesheet_4),
    .n_actors = 1,
    .n_triggers = 2,
    .n_sprites = 5,
    .n_projectiles = 4,
    .actors = TO_FAR_PTR_T(scene_3_actors),
    .triggers = TO_FAR_PTR_T(scene_3_triggers),
    .sprites = TO_FAR_PTR_T(scene_3_sprites),
    .projectiles = TO_FAR_PTR_T(scene_3_projectiles),
    .script_init = TO_FAR_PTR_T(script_s3_init),
    .script_p_hit1 = TO_FAR_PTR_T(script_s3_p_hit1)
};
