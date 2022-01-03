.module script_init_custominputs

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_init_custominputs = 255
.globl ___bank_script_init_custominputs

_script_init_custominputs::
        ; If Variable True
        VM_PUSH_VALUE_IND       ^/(.ARG2)/
        VM_IF_CONST .GT         .ARG0, 0, 1$, 1
        VM_JUMP                 2$
1$:
2$:

        ; Call Script: Init: Attack
        VM_PUSH_CONST           VAR_ISATTACKING ; Variable .ARG2
        VM_CALL_FAR             ___bank_script_init_attack, _script_init_attack
        VM_POP                  1

        ; Call Script: Init: JumpSFX
        VM_CALL_FAR             ___bank_script_init_jumpsfx, _script_init_jumpsfx

        VM_RET_FAR
