.module script_enemyhitsun

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames

.area _CODE_255

ACTOR = -4

___bank_script_enemyhitsun = 255
.globl ___bank_script_enemyhitsun

_script_enemyhitsun::
        ; Local Actor
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0

        ; Variable Decrement By 1
        VM_RPN
            .R_REF_IND  ^/(.ARG2 - 4)/
            .R_INT8     1
            .R_OPERATOR .SUB
            .R_STOP
        VM_SET_INDIRECT         ^/(.ARG2 - 5)/, .ARG0
        VM_POP                  1

        ; If Variable .EQ Value
        VM_PUSH_VALUE_IND       ^/(.ARG2 - 4)/
        VM_IF_CONST .EQ         .ARG0, 0, 1$, 1
        ; Actor Set Active
        VM_SET_CONST            ACTOR, 1

        ; Actor Push
        VM_SET_CONST            ACTOR, 0
        VM_PUSH_CONST           0
        VM_ACTOR_GET_DIR        ^/(ACTOR - 1)/, .ARG0
        VM_SET_CONST            ^/(ACTOR - 1)/, 1
        VM_ACTOR_GET_POS        ^/(ACTOR - 1)/
        VM_IF_CONST .EQ         .ARG0, .DIR_UP, 3$, 0
        VM_IF_CONST .EQ         .ARG0, .DIR_LEFT, 4$, 0
        VM_IF_CONST .EQ         .ARG0, .DIR_RIGHT, 5$, 0
        VM_RPN
            .R_REF      ^/(ACTOR + 2 - 1)/
            .R_INT16    12800
            .R_OPERATOR .ADD
            .R_STOP
        VM_SET                  ^/(ACTOR + 2 - 2)/, .ARG0
        VM_POP                  1
        VM_JUMP                 6$
3$:
        VM_RPN
            .R_REF      ^/(ACTOR + 2 - 1)/
            .R_INT16    12800
            .R_OPERATOR .SUB
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  ^/(ACTOR + 2 - 2)/, .ARG0
        VM_POP                  1
        VM_JUMP                 6$
4$:
        VM_RPN
            .R_REF      ^/(ACTOR + 1 - 1)/
            .R_INT16    12800
            .R_OPERATOR .SUB
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  ^/(ACTOR + 1 - 2)/, .ARG0
        VM_POP                  1
        VM_JUMP                 6$
5$:
        VM_RPN
            .R_REF      ^/(ACTOR + 1 - 1)/
            .R_INT16    12800
            .R_OPERATOR .ADD
            .R_STOP
        VM_SET                  ^/(ACTOR + 1 - 2)/, .ARG0
        VM_POP                  1
6$:
        VM_POP                  1
        VM_SET_CONST            ^/(ACTOR + 3)/, .ACTOR_ATTR_CHECK_COLL
        VM_ACTOR_MOVE_TO        ACTOR

        VM_JUMP                 2$
1$:
        ; Actor Hide
        VM_SET                  ACTOR, ^/(.ARG3 - 4)/
        VM_ACTOR_SET_HIDDEN     ACTOR, 1
        VM_ACTOR_DEACTIVATE     ACTOR

        ; Actor Set Active
        VM_SET                  ACTOR, ^/(.ARG3 - 4)/

        ; Actor Set Collisions
        VM_ACTOR_SET_COLL_ENABLED ACTOR, 0

        ; Sound Play Crash
        VM_SOUND_PLAY           30, 4, 0x01, 0xF2, 0x13, 0x80, 0x00
        ; Wait N Frames
        VM_PUSH_CONST           15
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

2$:

        VM_POP                  4
        VM_RET_FAR
