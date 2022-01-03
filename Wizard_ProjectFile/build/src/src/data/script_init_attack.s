.module script_init_attack

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_init_attack = 255
.globl ___bank_script_init_attack

_script_init_attack::
        ; Input Script Attach
        VM_CONTEXT_PREPARE      3, ___bank_script_input_0, _script_input_0
        VM_INPUT_ATTACH         32, ^/(3 | .OVERRIDE_DEFAULT)/

        VM_RET_FAR
