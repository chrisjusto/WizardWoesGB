.module script_init_resetvariables

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_init_resetvariables = 255
.globl ___bank_script_init_resetvariables

_script_init_resetvariables::
        ; Variable Set To False
        VM_PUSH_CONST           0
        VM_SET_INDIRECT         ^/(.ARG2 - 1)/, .ARG0
        VM_POP                  1

        ; Variable Set To False
        VM_PUSH_CONST           0
        VM_SET_INDIRECT         ^/(.ARG3 - 1)/, .ARG0
        VM_POP                  1

        VM_RET_FAR
