.module script_s0_p_hit1

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_s0_p_hit1 = 255
.globl ___bank_script_s0_p_hit1

_script_s0_p_hit1::
        ; If Parameter 0 Equals 2
        VM_PUSH_CONST           0
        VM_GET_TLOCAL           .ARG0, 0
        VM_IF_CONST .EQ         .ARG0, 2, 1$, 1
        VM_JUMP                 2$
1$:
        ; Call Script: Event: Hitstun
        VM_PUSH_CONST           2 ; Actor .ARG5
        VM_PUSH_CONST           VAR_S0_ISPLAYER ; Variable .ARG4
        VM_PUSH_CONST           VAR_PLAYERHEALTH ; Variable .ARG3
        VM_PUSH_CONST           VAR_PLAYERHITSTUN ; Variable .ARG2
        VM_CALL_FAR             ___bank_script_event_hitstun, _script_event_hitstun
        VM_POP                  4

        ; Stop Script
        VM_STOP
2$:

        ; Stop Script
        VM_STOP
