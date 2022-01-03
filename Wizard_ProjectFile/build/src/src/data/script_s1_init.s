.module script_s1_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255


___bank_script_s1_init = 255
.globl ___bank_script_s1_init

_script_s1_init::
        VM_LOCK

        ; Wait 1 Frame
        VM_PUSH_CONST           1
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Input Script Attach
        VM_CONTEXT_PREPARE      5, ___bank_script_input_2, _script_input_2
        VM_INPUT_ATTACH         15, ^/(5 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      1, ___bank_script_input_3, _script_input_3
        VM_INPUT_ATTACH         240, ^/(1 | .OVERRIDE_DEFAULT)/

        ; Music Play
        VM_MUSIC_PLAY           ___bank_music_track_1__Data, _music_track_1__Data, .MUSIC_LOOP

        ; Variable Set To Value
        VM_SET_CONST            VAR_PLAYERHEALTH, 3

        ; Stop Script
        VM_STOP
