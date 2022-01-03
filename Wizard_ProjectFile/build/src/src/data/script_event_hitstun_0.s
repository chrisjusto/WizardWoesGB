.module script_event_hitstun_0

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

ACTOR = -4

___bank_script_event_hitstun_0 = 255
.globl ___bank_script_event_hitstun_0

_script_event_hitstun_0::
        ; Local Actor
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0

        ; If Variable True
        VM_PUSH_VALUE_IND       ^/(.ARG2 - 4)/
        VM_IF_CONST .GT         .ARG0, 0, 1$, 1
        ; Variable Set To True
        VM_PUSH_CONST           1
        VM_SET_INDIRECT         ^/(.ARG2 - 5)/, .ARG0
        VM_POP                  1

        ; Variable Decrement By 1
        VM_RPN
            .R_REF_IND  ^/(.ARG3 - 4)/
            .R_INT8     1
            .R_OPERATOR .SUB
            .R_STOP
        VM_SET_INDIRECT         ^/(.ARG3 - 5)/, .ARG0
        VM_POP                  1

        ; Sound Play Crash
        VM_SOUND_PLAY           30, 4, 0x01, 0xF2, 0x13, 0x80, 0x00
        ; If Variable .EQ Value
        VM_PUSH_VALUE_IND       ^/(.ARG3 - 4)/
        VM_IF_CONST .EQ         .ARG0, 0, 3$, 1
        ; If Variable .EQ Value
        VM_PUSH_VALUE_IND       ^/(.ARG3 - 4)/
        VM_IF_CONST .EQ         .ARG0, 1, 5$, 1
        ; If Variable .EQ Value
        VM_PUSH_VALUE_IND       ^/(.ARG3 - 4)/
        VM_IF_CONST .EQ         .ARG0, 2, 7$, 1
        VM_JUMP                 8$
7$:
        ; Actor Set Active
        VM_SET                  ACTOR, ^/(.ARG5 - 4)/

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(ACTOR + 1)/, 2
        VM_ACTOR_SET_ANIM_FRAME ACTOR

8$:

        VM_JUMP                 6$
5$:
        ; Actor Set Active
        VM_SET                  ACTOR, ^/(.ARG5 - 4)/

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME ACTOR

6$:

        VM_JUMP                 4$
3$:
        ; Actor Set Active
        VM_SET                  ACTOR, ^/(.ARG5 - 4)/

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(ACTOR + 1)/, 0
        VM_ACTOR_SET_ANIM_FRAME ACTOR

4$:

        ; If Variable True
        VM_PUSH_VALUE_IND       ^/(.ARG4 - 4)/
        VM_IF_CONST .GT         .ARG0, 0, 9$, 1
        VM_JUMP                 10$
9$:
10$:

        ; Call Script: Event: Hitstun Knockback
        VM_PUSH_CONST           VAR_PLAYERHEALTH ; Variable .ARG3
        VM_PUSH_CONST           VAR_PLAYERHITSTUN ; Variable .ARG2
        VM_CALL_FAR             ___bank_script_event_hitstun_knockback, _script_event_hitstun_knockback
        VM_POP                  2

        ; Variable Set To False
        VM_PUSH_CONST           0
        VM_SET_INDIRECT         ^/(.ARG2 - 5)/, .ARG0
        VM_POP                  1

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation Tick
        VM_ACTOR_SET_ANIM_TICK  ACTOR, 15

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Animation State
        VM_ACTOR_SET_ANIM_SET   ACTOR, STATE_DEFAULT

        VM_JUMP                 2$
1$:
2$:

        VM_POP                  4
        VM_RET_FAR
