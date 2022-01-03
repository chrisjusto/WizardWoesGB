.module script_input_3

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step, ___bank_scene_0, _scene_0

.area _CODE_255

ACTOR = -4

___bank_script_input_3 = 255
.globl ___bank_script_input_3

_script_input_3::
        ; Local Actor
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0

        ; If Variable True
        VM_IF_CONST .GT         VAR_ISATTACKING, 0, 1$, 0
        ; Variable Set To True
        VM_SET_CONST            VAR_ISATTACKING, 1

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; If Actor Facing Direction
        VM_PUSH_CONST           0
        VM_ACTOR_GET_DIR        ^/(ACTOR - 1)/, .ARG0
        VM_IF_CONST .NE         .ARG0, .DIR_RIGHT, 3$, 1
        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   ACTOR, STATE_FIREBALLRIGHT

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Tick
        VM_ACTOR_SET_ANIM_TICK  ACTOR, 255

        ; Wait N Frames
        VM_PUSH_CONST           6
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME ACTOR

        ; Wait N Frames
        VM_PUSH_CONST           6
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(ACTOR + 1)/, 2
        VM_ACTOR_SET_ANIM_FRAME ACTOR

        ; Wait N Frames
        VM_PUSH_CONST           6
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(ACTOR + 1)/, 3
        VM_ACTOR_SET_ANIM_FRAME ACTOR

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Launch Projectile In Source Actor Direction
        VM_ACTOR_GET_POS        ACTOR
        VM_RPN
            .R_REF      ^/(ACTOR + 1)/
            .R_INT16    128
            .R_OPERATOR .ADD
            .R_REF      ^/(ACTOR + 2)/
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_STOP
        VM_PUSH_CONST           0
        VM_ACTOR_GET_ANGLE      ^/(ACTOR - 3)/, .ARG0
        VM_PROJECTILE_LAUNCH    0, .ARG2
        VM_POP                  3
        VM_JUMP                 4$
3$:
        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   ACTOR, STATE_FIREBALLLEFT

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Tick
        VM_ACTOR_SET_ANIM_TICK  ACTOR, 255

        ; Wait N Frames
        VM_PUSH_CONST           6
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME ACTOR

        ; Wait N Frames
        VM_PUSH_CONST           6
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(ACTOR + 1)/, 2
        VM_ACTOR_SET_ANIM_FRAME ACTOR

        ; Wait N Frames
        VM_PUSH_CONST           6
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(ACTOR + 1)/, 3
        VM_ACTOR_SET_ANIM_FRAME ACTOR

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Launch Projectile In Source Actor Direction
        VM_ACTOR_GET_POS        ACTOR
        VM_RPN
            .R_REF      ^/(ACTOR + 1)/
            .R_INT16    -128
            .R_OPERATOR .ADD
            .R_REF      ^/(ACTOR + 2)/
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_STOP
        VM_PUSH_CONST           0
        VM_ACTOR_GET_ANGLE      ^/(ACTOR - 3)/, .ARG0
        VM_PROJECTILE_LAUNCH    1, .ARG2
        VM_POP                  3
4$:

        ; Wait N Frames
        VM_PUSH_CONST           6
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   ACTOR, STATE_DEFAULT

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Tick
        VM_ACTOR_SET_ANIM_TICK  ACTOR, 15

        ; Variable Set To False
        VM_SET_CONST            VAR_ISATTACKING, 0

        VM_JUMP                 2$
1$:
2$:

        ; Actor Hide
        VM_SET_CONST            ACTOR, 1
        VM_ACTOR_SET_HIDDEN     ACTOR, 1
        VM_ACTOR_DEACTIVATE     ACTOR

        ; Wait N Frames
        VM_PUSH_CONST           60
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SET_CONST            ACTOR, 0
        VM_SET_CONST            ^/(ACTOR + 1)/, 384
        VM_SET_CONST            ^/(ACTOR + 2)/, 768
        VM_ACTOR_SET_POS        ACTOR
        VM_ACTOR_SET_DIR        ACTOR, .DIR_RIGHT
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_0

        ; Stop Script
        VM_STOP
