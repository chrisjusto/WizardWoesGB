.module script_s0t1_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_s0t1_interact = 255
.globl ___bank_script_s0t1_interact

_script_s0t1_interact::
        VM_LOCK

        ; Variable Set To True
        VM_SET_CONST            VAR_ENEMY_ATTACKRANGE_1, 1

        ; Stop Script
        VM_STOP
