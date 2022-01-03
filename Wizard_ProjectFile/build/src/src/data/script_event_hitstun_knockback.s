.module script_event_hitstun_knockback

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _plat_min_vel, _plat_walk_vel, _plat_run_vel, _plat_run_acc, _plat_dec, _plat_jump_vel, _plat_grav, _plat_hold_grav, _plat_max_fall_vel, _pl_vel_y, _pl_vel_x, b_wait_frames, _wait_frames, _plat_walk_acc, _fade_frames_per_step, ___bank_scene_2, _scene_2

.area _CODE_255

ACTOR = -4

___bank_script_event_hitstun_knockback = 255
.globl ___bank_script_event_hitstun_knockback

_script_event_hitstun_knockback::
        ; Local Actor
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0

        ; Input Script Attach
        VM_CONTEXT_PREPARE      3, ___bank_script_input_2, _script_input_2
        VM_INPUT_ATTACH         63, ^/(3 | .OVERRIDE_DEFAULT)/

        ; Engine Field Set To Value
        VM_SET_CONST_INT16      _plat_min_vel, 90

        ; Engine Field Set To Value
        VM_SET_CONST_INT16      _plat_walk_vel, 260

        ; Engine Field Set To Value
        VM_SET_CONST_INT16      _plat_run_vel, 260

        ; Engine Field Set To Value
        VM_SET_CONST_INT16      _plat_walk_vel, 100

        ; Engine Field Set To Value
        VM_SET_CONST_INT16      _plat_run_acc, 100

        ; Engine Field Set To Value
        VM_SET_CONST_INT16      _plat_dec, 768

        ; Engine Field Set To Value
        VM_SET_CONST_INT16      _plat_jump_vel, 21000

        ; Engine Field Set To Value
        VM_SET_CONST_INT16      _plat_grav, 899

        ; Engine Field Set To Value
        VM_SET_CONST_INT16      _plat_hold_grav, 899

        ; Engine Field Set To Value
        VM_SET_CONST_INT16      _plat_max_fall_vel, 18000

        ; Player Bounce
        VM_SET_CONST_INT16      _pl_vel_y, -16384

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; If Actor Facing Direction
        VM_PUSH_CONST           0
        VM_ACTOR_GET_DIR        ^/(ACTOR - 1)/, .ARG0
        VM_IF_CONST .NE         .ARG0, .DIR_RIGHT, 1$, 1
        ; Player Field Set To Value
        VM_SET_CONST_INT16      _pl_vel_x, -5000

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Tick
        VM_ACTOR_SET_ANIM_TICK  ACTOR, 3

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   ACTOR, STATE_HITSTUNRIGHT

        VM_JUMP                 2$
1$:
        ; Player Field Set To Value
        VM_SET_CONST_INT16      _pl_vel_x, 5000

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Tick
        VM_ACTOR_SET_ANIM_TICK  ACTOR, 3

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   ACTOR, STATE_HITSTUNLEFT

2$:

        ; Wait N Frames
        VM_PUSH_CONST           18
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Player Field Set To Value
        VM_SET_CONST_INT16      _pl_vel_x, 0

        ; Engine Field Set To Value
        VM_SET_CONST_INT16      _plat_jump_vel, 23000

        ; Engine Field Set To Value
        VM_SET_CONST_INT16      _plat_grav, 2100

        ; Engine Field Set To Value
        VM_SET_CONST_INT16      _plat_hold_grav, 2100

        ; Engine Field Set To Value
        VM_SET_CONST_INT16      _plat_max_fall_vel, 24560

        ; Engine Field Set To Value
        VM_SET_CONST_INT16      _plat_jump_vel, 12000

        ; Engine Field Set To Value
        VM_SET_CONST_INT16      _plat_grav, 2000

        ; Engine Field Set To Value
        VM_SET_CONST_INT16      _plat_hold_grav, 512

        ; Engine Field Set To Value
        VM_SET_CONST_INT16      _plat_max_fall_vel, 20000

        ; Engine Field Set To Value
        VM_SET_CONST_INT16      _plat_min_vel, 304

        ; Engine Field Set To Value
        VM_SET_CONST_INT16      _plat_walk_vel, 6400

        ; Engine Field Set To Value
        VM_SET_CONST_INT16      _plat_run_vel, 10496

        ; Engine Field Set To Value
        VM_SET_CONST_INT16      _plat_walk_acc, 152

        ; Engine Field Set To Value
        VM_SET_CONST_INT16      _plat_run_acc, 228

        ; Engine Field Set To Value
        VM_SET_CONST_INT16      _plat_dec, 208

        ; Input Script Remove
        VM_INPUT_DETACH         63

        ; If Variable True
        VM_PUSH_VALUE_IND       ^/(.ARG2 - 4)/
        VM_IF_CONST .GT         .ARG0, 0, 3$, 1
        VM_JUMP                 4$
3$:
4$:

        ; Call Script: Init: CustomInputs
        VM_PUSH_CONST           VAR_ISATTACKING ; Variable .ARG2
        VM_CALL_FAR             ___bank_script_init_custominputs, _script_init_custominputs
        VM_POP                  1

        ; If Variable .EQ Value
        VM_PUSH_VALUE_IND       ^/(.ARG3 - 4)/
        VM_IF_CONST .EQ         .ARG0, 0, 5$, 1
        VM_JUMP                 6$
5$:
        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; If Actor Facing Direction
        VM_PUSH_CONST           0
        VM_ACTOR_GET_DIR        ^/(ACTOR - 1)/, .ARG0
        VM_IF_CONST .NE         .ARG0, .DIR_RIGHT, 7$, 1
        ; Music Play
        VM_MUSIC_PLAY           ___bank_music_track_1__Data, _music_track_1__Data, .MUSIC_NO_LOOP

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   ACTOR, STATE_DEATHRIGHT

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Tick
        VM_ACTOR_SET_ANIM_TICK  ACTOR, 255

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(ACTOR + 1)/, 0
        VM_ACTOR_SET_ANIM_FRAME ACTOR

        ; Wait N Frames
        VM_PUSH_CONST           15
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME ACTOR

        ; Wait N Frames
        VM_PUSH_CONST           15
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(ACTOR + 1)/, 2
        VM_ACTOR_SET_ANIM_FRAME ACTOR

        ; Wait N Frames
        VM_PUSH_CONST           15
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SET_CONST            ACTOR, 0
        VM_SET_CONST            ^/(ACTOR + 1)/, 0
        VM_SET_CONST            ^/(ACTOR + 2)/, 0
        VM_ACTOR_SET_POS        ACTOR
        VM_ACTOR_SET_DIR        ACTOR, .DIR_DOWN
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_2

        VM_JUMP                 8$
7$:
        ; Music Play
        VM_MUSIC_PLAY           ___bank_music_track_1__Data, _music_track_1__Data, .MUSIC_NO_LOOP

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   ACTOR, STATE_DEATHLEFT

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Tick
        VM_ACTOR_SET_ANIM_TICK  ACTOR, 255

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(ACTOR + 1)/, 0
        VM_ACTOR_SET_ANIM_FRAME ACTOR

        ; Wait N Frames
        VM_PUSH_CONST           15
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME ACTOR

        ; Wait N Frames
        VM_PUSH_CONST           15
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(ACTOR + 1)/, 2
        VM_ACTOR_SET_ANIM_FRAME ACTOR

        ; Wait N Frames
        VM_PUSH_CONST           15
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 63
        VM_FADE_OUT             1
        VM_SET_CONST            ACTOR, 0
        VM_SET_CONST            ^/(ACTOR + 1)/, 0
        VM_SET_CONST            ^/(ACTOR + 2)/, 0
        VM_ACTOR_SET_POS        ACTOR
        VM_ACTOR_SET_DIR        ACTOR, .DIR_DOWN
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_2

8$:

6$:

        ; Wait N Frames
        VM_PUSH_CONST           30
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        VM_POP                  4
        VM_RET_FAR
