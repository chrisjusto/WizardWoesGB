#pragma bank 255

// Scene: Level 1-1
// Sprites

#include "gbs_types.h"
#include "data/spritesheet_6.h"
#include "data/spritesheet_7.h"
#include "data/spritesheet_0.h"
#include "data/spritesheet_1.h"
#include "data/spritesheet_2.h"
#include "data/spritesheet_3.h"

BANKREF(scene_0_sprites)

const far_ptr_t scene_0_sprites[] = {
    TO_FAR_PTR_T(spritesheet_6),
    TO_FAR_PTR_T(spritesheet_7),
    TO_FAR_PTR_T(spritesheet_0),
    TO_FAR_PTR_T(spritesheet_1),
    TO_FAR_PTR_T(spritesheet_2),
    TO_FAR_PTR_T(spritesheet_3)
};
