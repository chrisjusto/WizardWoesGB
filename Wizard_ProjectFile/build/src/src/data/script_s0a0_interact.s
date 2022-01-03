.module script_s0a0_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_s0a0_interact = 255
.globl ___bank_script_s0a0_interact

_script_s0a0_interact::
        ; If Parameter 0 Equals 8
        VM_PUSH_CONST           0
        VM_GET_TLOCAL           .ARG0, 0
        VM_IF_CONST .EQ         .ARG0, 8, 1$, 1
        VM_JUMP                 2$
1$:
        ; Call Script: EnemyHitsun
        VM_PUSH_CONST           1 ; Actor .ARG3
        VM_PUSH_CONST           VAR_ENEMY_HEALTH_1 ; Variable .ARG2
        VM_CALL_FAR             ___bank_script_enemyhitsun, _script_enemyhitsun
        VM_POP                  2

        ; Stop Script
        VM_STOP
2$:

        ; Stop Script
        VM_STOP
