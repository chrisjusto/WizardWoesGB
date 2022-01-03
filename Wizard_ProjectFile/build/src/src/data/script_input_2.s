.module script_input_2

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_2 = 255
.globl ___bank_script_input_2

_script_input_2::
        ; Stop Script
        VM_STOP
