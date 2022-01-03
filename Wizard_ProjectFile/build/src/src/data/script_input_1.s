.module script_input_1

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames

.area _CODE_255


___bank_script_input_1 = 255
.globl ___bank_script_input_1

_script_input_1::
        ; Sound Play Tone
        VM_SOUND_PLAY           6, 1, 0x00, 0x01, 0xF0, 0x58, 0x83
        ; Wait N Frames
        VM_PUSH_CONST           6
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Sound Play Tone
        VM_SOUND_PLAY           6, 1, 0x00, 0x01, 0xF0, 0x16, 0x84
        ; Wait N Frames
        VM_PUSH_CONST           6
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Stop Script
        VM_STOP
