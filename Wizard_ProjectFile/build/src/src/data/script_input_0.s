.module script_input_0

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames

.area _CODE_255

ACTOR = -4

___bank_script_input_0 = 255
.globl ___bank_script_input_0

_script_input_0::
        ; Local Actor
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0

        ; If Input
        VM_PUSH_CONST           0
        VM_GET_INT8             .ARG0, ^/(_joypads + 1)/
        VM_RPN
            .R_REF      .ARG0
            .R_INT8     4
            .R_OPERATOR .B_AND
            .R_STOP
        VM_IF_CONST .NE         .ARG0, 0, 1$, 2
        ; If Variable True
        VM_PUSH_VALUE_IND       ^/(.ARG2 - 4)/
        VM_IF_CONST .GT         .ARG0, 0, 3$, 1
        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; If Actor Facing Direction
        VM_PUSH_CONST           0
        VM_ACTOR_GET_DIR        ^/(ACTOR - 1)/, .ARG0
        VM_IF_CONST .NE         .ARG0, .DIR_LEFT, 5$, 1
        ; Variable Set To True
        VM_PUSH_CONST           1
        VM_SET_INDIRECT         ^/(.ARG2 - 5)/, .ARG0
        VM_POP                  1

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   ACTOR, STATE_ATTACKLEFT

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Tick
        VM_ACTOR_SET_ANIM_TICK  ACTOR, 255

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(ACTOR + 1)/, 0
        VM_ACTOR_SET_ANIM_FRAME ACTOR

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Launch Projectile In Direction
        VM_ACTOR_GET_POS        ACTOR
        VM_RPN
            .R_REF      ^/(ACTOR + 1)/
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_REF      ^/(ACTOR + 2)/
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_STOP
        VM_PUSH_CONST           192
        VM_PROJECTILE_LAUNCH    2, .ARG2
        VM_POP                  3
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

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   ACTOR, STATE_DEFAULT

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Tick
        VM_ACTOR_SET_ANIM_TICK  ACTOR, 15

        ; Variable Set To False
        VM_PUSH_CONST           0
        VM_SET_INDIRECT         ^/(.ARG2 - 5)/, .ARG0
        VM_POP                  1

        VM_JUMP                 6$
5$:
        ; Variable Set To True
        VM_PUSH_CONST           1
        VM_SET_INDIRECT         ^/(.ARG2 - 5)/, .ARG0
        VM_POP                  1

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   ACTOR, STATE_ATTACKRIGHT

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Tick
        VM_ACTOR_SET_ANIM_TICK  ACTOR, 255

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(ACTOR + 1)/, 0
        VM_ACTOR_SET_ANIM_FRAME ACTOR

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Launch Projectile In Direction
        VM_ACTOR_GET_POS        ACTOR
        VM_RPN
            .R_REF      ^/(ACTOR + 1)/
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_REF      ^/(ACTOR + 2)/
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_STOP
        VM_PUSH_CONST           64
        VM_PROJECTILE_LAUNCH    3, .ARG2
        VM_POP                  3
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

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   ACTOR, STATE_DEFAULT

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Tick
        VM_ACTOR_SET_ANIM_TICK  ACTOR, 15

        ; Variable Set To False
        VM_PUSH_CONST           0
        VM_SET_INDIRECT         ^/(.ARG2 - 5)/, .ARG0
        VM_POP                  1

6$:

        VM_JUMP                 4$
3$:
4$:

        VM_JUMP                 2$
1$:
        ; If Variable True
        VM_PUSH_VALUE_IND       ^/(.ARG2 - 4)/
        VM_IF_CONST .GT         .ARG0, 0, 7$, 1
        ; Variable Set To True
        VM_PUSH_CONST           1
        VM_SET_INDIRECT         ^/(.ARG2 - 5)/, .ARG0
        VM_POP                  1

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; If Actor Facing Direction
        VM_PUSH_CONST           0
        VM_ACTOR_GET_DIR        ^/(ACTOR - 1)/, .ARG0
        VM_IF_CONST .NE         .ARG0, .DIR_RIGHT, 9$, 1
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
        VM_JUMP                 10$
9$:
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
10$:

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
        VM_PUSH_CONST           0
        VM_SET_INDIRECT         ^/(.ARG2 - 5)/, .ARG0
        VM_POP                  1

        VM_JUMP                 8$
7$:
8$:

2$:

        ; Stop Script
        VM_STOP
