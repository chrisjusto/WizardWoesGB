#pragma bank 255

// Scene: Title
// Sprites

#include "gbs_types.h"
#include "data/spritesheet_8.h"
#include "data/spritesheet_0.h"
#include "data/spritesheet_1.h"

BANKREF(scene_1_sprites)

const far_ptr_t scene_1_sprites[] = {
    TO_FAR_PTR_T(spritesheet_8),
    TO_FAR_PTR_T(spritesheet_0),
    TO_FAR_PTR_T(spritesheet_1)
};
