.module script_s3t0_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_s3t0_interact = 255
.globl ___bank_script_s3t0_interact

_script_s3t0_interact::
        VM_LOCK

        ; Call Script: Event: Hitstun
        VM_PUSH_CONST           1 ; Actor .ARG5
        VM_PUSH_CONST           VAR_ISATTACKING ; Variable .ARG4
        VM_PUSH_CONST           VAR_PLAYERHEALTH ; Variable .ARG3
        VM_PUSH_CONST           VAR_PLAYERHITSTUN ; Variable .ARG2
        VM_CALL_FAR             ___bank_script_event_hitstun_0, _script_event_hitstun_0
        VM_POP                  4

        ; Stop Script
        VM_STOP
