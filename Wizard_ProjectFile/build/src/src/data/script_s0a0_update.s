.module script_s0a0_update

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames

.area _CODE_255

ACTOR = -4

___bank_script_s0a0_update = 255
.globl ___bank_script_s0a0_update

_script_s0a0_update::
        ; Local Actor
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0

2$:
        ; If Variable True
        VM_IF_CONST .GT         VAR_ENEMY_ATTACKRANGE_1, 0, 3$, 0
        VM_JUMP                 4$
3$:
        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Store Position In Variables
        VM_ACTOR_GET_POS        ACTOR
        VM_RPN
            .R_REF      ^/(ACTOR + 1)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_REF      ^/(ACTOR + 2)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_STOP
        VM_SET                  VAR_S0A0_LOCAL_0, .ARG1
        VM_SET                  VAR_S0A0_LOCAL_1, .ARG0
        VM_POP                  2

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 1

        ; Store Position In Variables
        VM_ACTOR_GET_POS        ACTOR
        VM_RPN
            .R_REF      ^/(ACTOR + 1)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_REF      ^/(ACTOR + 2)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_STOP
        VM_SET                  VAR_S0A0_LOCAL_2, .ARG1
        VM_SET                  VAR_S0A0_LOCAL_3, .ARG0
        VM_POP                  2

        ; If VAR_S0A0_LOCAL_0<=VAR_S0A0_LOCAL_2
        VM_RPN
            .R_REF      VAR_S0A0_LOCAL_0
            .R_REF      VAR_S0A0_LOCAL_2
            .R_OPERATOR .LTE
            .R_STOP
        VM_IF_CONST .GT         .ARG0, 0, 5$, 1
        ; Actor Set Active
        VM_SET_CONST            ACTOR, 1

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   ACTOR, STATE_DEFAULT

        VM_JUMP                 6$
5$:
        ; Actor Set Active
        VM_SET_CONST            ACTOR, 1

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   ACTOR, STATE_ATTACKLEFT

6$:

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 1

        ; Actor Move To Variables
        VM_RPN
            .R_REF      VAR_S0A0_LOCAL_0
            .R_INT16    128
            .R_OPERATOR .MUL
            .R_REF      VAR_S0A0_LOCAL_1
            .R_INT16    128
            .R_OPERATOR .MUL
            .R_STOP
        VM_SET                  ^/(ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_SET_CONST            ^/(ACTOR + 3)/, .ACTOR_ATTR_DIAGONAL
        VM_ACTOR_MOVE_TO        ACTOR

        ; Wait N Frames
        VM_PUSH_CONST           60
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Wait N Frames
        VM_PUSH_CONST           30
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

4$:

        ; Wait 1 Frame
        VM_PUSH_CONST           1
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        VM_JUMP                 2$
        ; Stop Script
        VM_STOP
