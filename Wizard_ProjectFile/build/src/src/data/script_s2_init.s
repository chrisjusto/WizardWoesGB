.module script_s2_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255


___bank_script_s2_init = 255
.globl ___bank_script_s2_init

_script_s2_init::
        VM_LOCK

        ; Wait 1 Frame
        VM_PUSH_CONST           1
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Input Script Attach
        VM_CONTEXT_PREPARE      4, ___bank_script_input_4, _script_input_4
        VM_INPUT_ATTACH         16, ^/(4 | .OVERRIDE_DEFAULT)/

        ; Call Script: Init: ResetVariables
        VM_PUSH_CONST           VAR_PLAYERHITSTUN ; Variable .ARG3
        VM_PUSH_CONST           VAR_ISATTACKING ; Variable .ARG2
        VM_CALL_FAR             ___bank_script_init_resetvariables, _script_init_resetvariables
        VM_POP                  2

        ; Stop Script
        VM_STOP
