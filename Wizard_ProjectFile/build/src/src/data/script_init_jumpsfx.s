.module script_init_jumpsfx

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_init_jumpsfx = 255
.globl ___bank_script_init_jumpsfx

_script_init_jumpsfx::
        ; Input Script Attach
        VM_CONTEXT_PREPARE      4, ___bank_script_input_1, _script_input_1
        VM_INPUT_ATTACH         16, 4

        VM_RET_FAR
