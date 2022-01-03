.module script_s3_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255

ACTOR = -4

___bank_script_s3_init = 255
.globl ___bank_script_s3_init

_script_s3_init::
        VM_LOCK

        ; Local Actor
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 1

        ; Actor Set Animation Tick
        VM_ACTOR_SET_ANIM_TICK  ACTOR, 255

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 1

        ; Actor Set Animation Frame To Variable
        VM_SET                  ^/(ACTOR + 1)/, VAR_PLAYERHEALTH
        VM_ACTOR_SET_ANIM_FRAME ACTOR

        ; Call Script: Init: CustomInputs
        VM_PUSH_CONST           VAR_VARIABLE_5 ; Variable .ARG2
        VM_CALL_FAR             ___bank_script_init_custominputs, _script_init_custominputs
        VM_POP                  1

        ; Wait 1 Frame
        VM_PUSH_CONST           1
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Stop Script
        VM_STOP
