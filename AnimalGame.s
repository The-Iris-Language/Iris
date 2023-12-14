	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.globl	_Animal_setAnimal               ; -- Begin function Animal_setAnimal
	.p2align	2
_Animal_setAnimal:                      ; @Animal_setAnimal
	.cfi_startproc
; %bb.0:                                ; %entry
	.cfi_def_cfa_offset 16
	ldr	x8, [x0]
	stp	x1, x8, [sp, #-16]!
	str	x1, [x8, #16]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_Animal_setType                 ; -- Begin function Animal_setType
	.p2align	2
_Animal_setType:                        ; @Animal_setType
	.cfi_startproc
; %bb.0:                                ; %entry
	.cfi_def_cfa_offset 16
	ldr	x8, [x0]
	stp	x1, x8, [sp, #-16]!
	str	x1, [x8, #24]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_Animal_setLegs                 ; -- Begin function Animal_setLegs
	.p2align	2
_Animal_setLegs:                        ; @Animal_setLegs
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	ldr	x8, [x0]
	str	w1, [sp, #4]
	str	x8, [sp, #8]
	str	w1, [x8, #32]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_Animal_setFur                  ; -- Begin function Animal_setFur
	.p2align	2
_Animal_setFur:                         ; @Animal_setFur
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	ldr	x8, [x0]
	strb	w1, [sp, #7]
	str	x8, [sp, #8]
	strb	w1, [x8, #36]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_Animal_setFly                  ; -- Begin function Animal_setFly
	.p2align	2
_Animal_setFly:                         ; @Animal_setFly
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	ldr	x8, [x0]
	strb	w1, [sp, #7]
	str	x8, [sp, #8]
	strb	w1, [x8, #37]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_Animal_getClass                ; -- Begin function Animal_getClass
	.p2align	2
_Animal_getClass:                       ; @Animal_getClass
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	ldr	x8, [x0]
	ldr	x0, [x8, #16]
	str	x8, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_Animal_getType                 ; -- Begin function Animal_getType
	.p2align	2
_Animal_getType:                        ; @Animal_getType
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	ldr	x8, [x0]
	ldr	x0, [x8, #24]
	str	x8, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_Animal_numLegs                 ; -- Begin function Animal_numLegs
	.p2align	2
_Animal_numLegs:                        ; @Animal_numLegs
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	ldr	x8, [x0]
	ldr	w0, [x8, #32]
	str	x8, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_Animal_hasFur                  ; -- Begin function Animal_hasFur
	.p2align	2
_Animal_hasFur:                         ; @Animal_hasFur
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	ldr	x8, [x0]
	ldrb	w0, [x8, #36]
	str	x8, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_Animal_canFly                  ; -- Begin function Animal_canFly
	.p2align	2
_Animal_canFly:                         ; @Animal_canFly
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	ldr	x8, [x0]
	ldrb	w0, [x8, #37]
	str	x8, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_Animal_noise                   ; -- Begin function Animal_noise
	.p2align	2
_Animal_noise:                          ; @Animal_noise
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x9, [x0]
Lloh0:
	adrp	x0, l_fmt.31@PAGE
Lloh1:
	adrp	x8, l_Noise@PAGE
Lloh2:
	add	x0, x0, l_fmt.31@PAGEOFF
Lloh3:
	add	x8, x8, l_Noise@PAGEOFF
	stp	x8, x9, [sp]
	bl	_printf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh1, Lloh3
	.loh AdrpAdd	Lloh0, Lloh2
	.cfi_endproc
                                        ; -- End function
	.globl	_Animal_funFact                 ; -- Begin function Animal_funFact
	.p2align	2
_Animal_funFact:                        ; @Animal_funFact
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x9, [x0]
Lloh4:
	adrp	x0, l_fmt.34@PAGE
Lloh5:
	adrp	x8, "l_There are 5 different animal classes: Mammals, Birds, Insects, Amphibians, and Reptiles!"@PAGE
Lloh6:
	add	x0, x0, l_fmt.34@PAGEOFF
Lloh7:
	add	x8, x8, "l_There are 5 different animal classes: Mammals, Birds, Insects, Amphibians, and Reptiles!"@PAGEOFF
	stp	x8, x9, [sp]
	bl	_printf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh5, Lloh7
	.loh AdrpAdd	Lloh4, Lloh6
	.cfi_endproc
                                        ; -- End function
	.globl	_Cat_noise                      ; -- Begin function Cat_noise
	.p2align	2
_Cat_noise:                             ; @Cat_noise
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x9, [x0]
Lloh8:
	adrp	x0, l_fmt.37@PAGE
Lloh9:
	adrp	x8, "l_Meow!"@PAGE
Lloh10:
	add	x0, x0, l_fmt.37@PAGEOFF
Lloh11:
	add	x8, x8, "l_Meow!"@PAGEOFF
	stp	x8, x9, [sp]
	bl	_printf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh9, Lloh11
	.loh AdrpAdd	Lloh8, Lloh10
	.cfi_endproc
                                        ; -- End function
	.globl	_Cat_funFact                    ; -- Begin function Cat_funFact
	.p2align	2
_Cat_funFact:                           ; @Cat_funFact
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x9, [x0]
Lloh12:
	adrp	x0, l_fmt.40@PAGE
Lloh13:
	adrp	x8, "l_I can land on all fours!"@PAGE
Lloh14:
	add	x0, x0, l_fmt.40@PAGEOFF
Lloh15:
	add	x8, x8, "l_I can land on all fours!"@PAGEOFF
	stp	x8, x9, [sp]
	bl	_printf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh13, Lloh15
	.loh AdrpAdd	Lloh12, Lloh14
	.cfi_endproc
                                        ; -- End function
	.globl	_Dog_noise                      ; -- Begin function Dog_noise
	.p2align	2
_Dog_noise:                             ; @Dog_noise
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x9, [x0]
Lloh16:
	adrp	x0, l_fmt.43@PAGE
Lloh17:
	adrp	x8, "l_Bark!"@PAGE
Lloh18:
	add	x0, x0, l_fmt.43@PAGEOFF
Lloh19:
	add	x8, x8, "l_Bark!"@PAGEOFF
	stp	x8, x9, [sp]
	bl	_printf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh17, Lloh19
	.loh AdrpAdd	Lloh16, Lloh18
	.cfi_endproc
                                        ; -- End function
	.globl	_Dog_funFact                    ; -- Begin function Dog_funFact
	.p2align	2
_Dog_funFact:                           ; @Dog_funFact
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x9, [x0]
Lloh20:
	adrp	x0, l_fmt.46@PAGE
Lloh21:
	adrp	x8, "l_I have a great sense of smell!"@PAGE
Lloh22:
	add	x0, x0, l_fmt.46@PAGEOFF
Lloh23:
	add	x8, x8, "l_I have a great sense of smell!"@PAGEOFF
	stp	x8, x9, [sp]
	bl	_printf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh21, Lloh23
	.loh AdrpAdd	Lloh20, Lloh22
	.cfi_endproc
                                        ; -- End function
	.globl	_Chicken_noise                  ; -- Begin function Chicken_noise
	.p2align	2
_Chicken_noise:                         ; @Chicken_noise
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x9, [x0]
Lloh24:
	adrp	x0, l_fmt.49@PAGE
Lloh25:
	adrp	x8, "l_Cluck!"@PAGE
Lloh26:
	add	x0, x0, l_fmt.49@PAGEOFF
Lloh27:
	add	x8, x8, "l_Cluck!"@PAGEOFF
	stp	x8, x9, [sp]
	bl	_printf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh25, Lloh27
	.loh AdrpAdd	Lloh24, Lloh26
	.cfi_endproc
                                        ; -- End function
	.globl	_Chicken_funFact                ; -- Begin function Chicken_funFact
	.p2align	2
_Chicken_funFact:                       ; @Chicken_funFact
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x9, [x0]
Lloh28:
	adrp	x0, l_fmt.52@PAGE
Lloh29:
	adrp	x8, "l_I am one of the closest living descendants to dinosaurs!"@PAGE
Lloh30:
	add	x0, x0, l_fmt.52@PAGEOFF
Lloh31:
	add	x8, x8, "l_I am one of the closest living descendants to dinosaurs!"@PAGEOFF
	stp	x8, x9, [sp]
	bl	_printf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh29, Lloh31
	.loh AdrpAdd	Lloh28, Lloh30
	.cfi_endproc
                                        ; -- End function
	.globl	_Snake_noise                    ; -- Begin function Snake_noise
	.p2align	2
_Snake_noise:                           ; @Snake_noise
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x9, [x0]
Lloh32:
	adrp	x0, l_fmt.55@PAGE
Lloh33:
	adrp	x8, "l_Hiss!"@PAGE
Lloh34:
	add	x0, x0, l_fmt.55@PAGEOFF
Lloh35:
	add	x8, x8, "l_Hiss!"@PAGEOFF
	stp	x8, x9, [sp]
	bl	_printf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh33, Lloh35
	.loh AdrpAdd	Lloh32, Lloh34
	.cfi_endproc
                                        ; -- End function
	.globl	_Snake_funFact                  ; -- Begin function Snake_funFact
	.p2align	2
_Snake_funFact:                         ; @Snake_funFact
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x9, [x0]
Lloh36:
	adrp	x0, l_fmt.58@PAGE
Lloh37:
	adrp	x8, "l_I can be very venomous!"@PAGE
Lloh38:
	add	x0, x0, l_fmt.58@PAGEOFF
Lloh39:
	add	x8, x8, "l_I can be very venomous!"@PAGEOFF
	stp	x8, x9, [sp]
	bl	_printf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh37, Lloh39
	.loh AdrpAdd	Lloh36, Lloh38
	.cfi_endproc
                                        ; -- End function
	.globl	_Frog_noise                     ; -- Begin function Frog_noise
	.p2align	2
_Frog_noise:                            ; @Frog_noise
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x9, [x0]
Lloh40:
	adrp	x0, l_fmt.61@PAGE
Lloh41:
	adrp	x8, "l_Croak!"@PAGE
Lloh42:
	add	x0, x0, l_fmt.61@PAGEOFF
Lloh43:
	add	x8, x8, "l_Croak!"@PAGEOFF
	stp	x8, x9, [sp]
	bl	_printf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh41, Lloh43
	.loh AdrpAdd	Lloh40, Lloh42
	.cfi_endproc
                                        ; -- End function
	.globl	_Frog_funFact                   ; -- Begin function Frog_funFact
	.p2align	2
_Frog_funFact:                          ; @Frog_funFact
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x9, [x0]
Lloh44:
	adrp	x0, l_fmt.64@PAGE
Lloh45:
	adrp	x8, "l_I have excellent night vision"@PAGE
Lloh46:
	add	x0, x0, l_fmt.64@PAGEOFF
Lloh47:
	add	x8, x8, "l_I have excellent night vision"@PAGEOFF
	stp	x8, x9, [sp]
	bl	_printf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh45, Lloh47
	.loh AdrpAdd	Lloh44, Lloh46
	.cfi_endproc
                                        ; -- End function
	.globl	_Bee_noise                      ; -- Begin function Bee_noise
	.p2align	2
_Bee_noise:                             ; @Bee_noise
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x9, [x0]
Lloh48:
	adrp	x0, l_fmt.67@PAGE
Lloh49:
	adrp	x8, "l_Buzz!"@PAGE
Lloh50:
	add	x0, x0, l_fmt.67@PAGEOFF
Lloh51:
	add	x8, x8, "l_Buzz!"@PAGEOFF
	stp	x8, x9, [sp]
	bl	_printf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh49, Lloh51
	.loh AdrpAdd	Lloh48, Lloh50
	.cfi_endproc
                                        ; -- End function
	.globl	_Bee_funFact                    ; -- Begin function Bee_funFact
	.p2align	2
_Bee_funFact:                           ; @Bee_funFact
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x9, [x0]
Lloh52:
	adrp	x0, l_fmt.70@PAGE
Lloh53:
	adrp	x8, "l_They make something sweet "@PAGE
Lloh54:
	add	x0, x0, l_fmt.70@PAGEOFF
Lloh55:
	add	x8, x8, "l_They make something sweet "@PAGEOFF
	stp	x8, x9, [sp]
	bl	_printf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh53, Lloh55
	.loh AdrpAdd	Lloh52, Lloh54
	.cfi_endproc
                                        ; -- End function
	.globl	_Richard_noise                  ; -- Begin function Richard_noise
	.p2align	2
_Richard_noise:                         ; @Richard_noise
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x9, [x0]
Lloh56:
	adrp	x0, l_fmt.73@PAGE
Lloh57:
	adrp	x8, "l_Howdy folks!"@PAGE
Lloh58:
	add	x0, x0, l_fmt.73@PAGEOFF
Lloh59:
	add	x8, x8, "l_Howdy folks!"@PAGEOFF
	stp	x8, x9, [sp]
	bl	_printf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh57, Lloh59
	.loh AdrpAdd	Lloh56, Lloh58
	.cfi_endproc
                                        ; -- End function
	.globl	_Richard_funFact                ; -- Begin function Richard_funFact
	.p2align	2
_Richard_funFact:                       ; @Richard_funFact
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x9, [x0]
Lloh60:
	adrp	x0, l_fmt.76@PAGE
Lloh61:
	adrp	x8, "l_This is someone you know very well ;)"@PAGE
Lloh62:
	add	x0, x0, l_fmt.76@PAGEOFF
Lloh63:
	add	x8, x8, "l_This is someone you know very well ;)"@PAGEOFF
	stp	x8, x9, [sp]
	bl	_printf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh61, Lloh63
	.loh AdrpAdd	Lloh60, Lloh62
	.cfi_endproc
                                        ; -- End function
	.globl	_AnimalGame_run                 ; -- Begin function AnimalGame_run
	.p2align	2
_AnimalGame_run:                        ; @AnimalGame_run
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #128
	stp	x26, x25, [sp, #48]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	.cfi_def_cfa_offset 128
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
Lloh64:
	adrp	x8, l___unnamed_1@PAGE
Lloh65:
	adrp	x19, l_fmt.79@PAGE
Lloh66:
	add	x9, x8, l___unnamed_1@PAGEOFF
	ldr	x8, [x0]
Lloh67:
	add	x19, x19, l_fmt.79@PAGEOFF
	str	wzr, [sp, #28]
	mov	x0, x19
	stp	x9, x8, [sp, #32]
Lloh68:
	adrp	x8, "l_Hello and welcome to the animal guessing game!"@PAGE
Lloh69:
	add	x8, x8, "l_Hello and welcome to the animal guessing game!"@PAGEOFF
	str	x8, [sp]
	bl	_printf
Lloh70:
	adrp	x8, "l_You will have 3 tries to guess the animal, along with a number of hints."@PAGE
	mov	x0, x19
Lloh71:
	add	x8, x8, "l_You will have 3 tries to guess the animal, along with a number of hints."@PAGEOFF
	str	x8, [sp]
	bl	_printf
Lloh72:
	adrp	x8, "l_Please enter a number from 1-6"@PAGE
	mov	x0, x19
Lloh73:
	add	x8, x8, "l_Please enter a number from 1-6"@PAGEOFF
	str	x8, [sp]
	bl	_printf
	bl	_readaline
	ldr	x8, [sp, #40]
	ldr	x1, [x0]
	add	x0, sp, #40
	ldr	x8, [x8]
	str	x1, [sp, #32]
	ldr	x8, [x8, #8]
	blr	x8
Lloh74:
	adrp	x20, l_q.81@PAGE
Lloh75:
	adrp	x25, "l_Please enter g to make a guess, h for a hint, or q to quit: "@PAGE
Lloh76:
	adrp	x21, l_fmt.78@PAGE
Lloh77:
	adrp	x22, l_q@PAGE
Lloh78:
	adrp	x26, "l_Thank you for playing the game. We hope you had fun!!"@PAGE
Lloh79:
	adrp	x23, l_g@PAGE
Lloh80:
	adrp	x24, l_h@PAGE
Lloh81:
	add	x20, x20, l_q.81@PAGEOFF
Lloh82:
	add	x25, x25, "l_Please enter g to make a guess, h for a hint, or q to quit: "@PAGEOFF
Lloh83:
	add	x21, x21, l_fmt.78@PAGEOFF
	ldr	x8, [x0]
Lloh84:
	add	x22, x22, l_q@PAGEOFF
Lloh85:
	add	x26, x26, "l_Thank you for playing the game. We hope you had fun!!"@PAGEOFF
Lloh86:
	add	x23, x23, l_g@PAGEOFF
Lloh87:
	add	x24, x24, l_h@PAGEOFF
	str	x8, [sp, #16]
	b	LBB26_2
LBB26_1:                                ; %then
                                        ;   in Loop: Header=BB26_2 Depth=1
	mov	x0, x19
	str	x26, [sp]
	bl	_printf
LBB26_2:                                ; %while
                                        ; =>This Inner Loop Header: Depth=1
	ldr	x0, [sp, #32]
	mov	x1, x20
	bl	_streq
	tbnz	w0, #0, LBB26_9
; %bb.3:                                ; %while_body
                                        ;   in Loop: Header=BB26_2 Depth=1
	mov	x0, x21
	str	x25, [sp]
	bl	_printf
	bl	_readaline
	ldr	x0, [x0]
	mov	x1, x22
	str	x0, [sp, #32]
	bl	_streq
	tbnz	w0, #0, LBB26_1
; %bb.4:                                ; %else
                                        ;   in Loop: Header=BB26_2 Depth=1
	ldr	x0, [sp, #32]
	mov	x1, x23
	bl	_streq
	tbz	w0, #0, LBB26_7
; %bb.5:                                ; %then16
                                        ;   in Loop: Header=BB26_2 Depth=1
	ldr	x8, [sp, #40]
	add	x0, sp, #40
	ldr	w2, [sp, #28]
	add	x1, sp, #16
	ldr	x8, [x8]
	ldr	x8, [x8, #16]
	blr	x8
	tbnz	w0, #0, LBB26_2
; %bb.6:                                ; %then24
                                        ;   in Loop: Header=BB26_2 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	cmp	w8, #3
	str	w8, [sp, #28]
	b.ne	LBB26_2
	b	LBB26_9
LBB26_7:                                ; %else33
                                        ;   in Loop: Header=BB26_2 Depth=1
	ldr	x0, [sp, #32]
	mov	x1, x24
	bl	_streq
	tbz	w0, #0, LBB26_2
; %bb.8:                                ; %then37
                                        ;   in Loop: Header=BB26_2 Depth=1
	ldr	x8, [sp, #40]
	add	x0, sp, #40
	add	x1, sp, #16
	ldr	x8, [x8]
	ldr	x8, [x8, #24]
	blr	x8
	b	LBB26_2
LBB26_9:                                ; %common.ret
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.loh AdrpAdd	Lloh80, Lloh87
	.loh AdrpAdd	Lloh79, Lloh86
	.loh AdrpAdd	Lloh78, Lloh85
	.loh AdrpAdd	Lloh77, Lloh84
	.loh AdrpAdd	Lloh76, Lloh83
	.loh AdrpAdd	Lloh75, Lloh82
	.loh AdrpAdd	Lloh74, Lloh81
	.loh AdrpAdd	Lloh72, Lloh73
	.loh AdrpAdd	Lloh70, Lloh71
	.loh AdrpAdd	Lloh68, Lloh69
	.loh AdrpAdd	Lloh65, Lloh67
	.loh AdrpAdd	Lloh64, Lloh66
	.cfi_endproc
                                        ; -- End function
	.globl	_AnimalGame_getAnimal           ; -- Begin function AnimalGame_getAnimal
	.p2align	2
_AnimalGame_getAnimal:                  ; @AnimalGame_getAnimal
	.cfi_startproc
; %bb.0:                                ; %entry
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	sub	sp, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	ldr	x9, [x0]
	mov	x8, x1
	mov	x0, x8
	stp	x1, x9, [x29, #-32]
Lloh88:
	adrp	x1, l_1@PAGE
Lloh89:
	add	x1, x1, l_1@PAGEOFF
	bl	_streq
	tbz	w0, #0, LBB27_2
; %bb.1:                                ; %then
	mov	w0, #40
	bl	_malloc
Lloh90:
	adrp	x8, _Cat_vtable_data@PAGE
Lloh91:
	add	x8, x8, _Cat_vtable_data@PAGEOFF
	str	x8, [x0]
	mov	x8, sp
	sub	x9, x8, #16
	mov	sp, x9
	mov	x20, sp
	stur	x0, [x8, #-16]
	sub	x19, x20, #16
	mov	sp, x19
	mov	x8, x0
Lloh92:
	adrp	x1, l_Mammal@PAGE
Lloh93:
	add	x1, x1, l_Mammal@PAGEOFF
	mov	x0, x19
	stur	x8, [x20, #-16]
	ldr	x8, [x8]
	ldr	x8, [x8]
	blr	x8
	ldur	x8, [x20, #-16]
Lloh94:
	adrp	x1, l_Cat@PAGE
Lloh95:
	add	x1, x1, l_Cat@PAGEOFF
	b	LBB27_4
LBB27_2:                                ; %else
Lloh96:
	adrp	x1, l_2@PAGE
	ldur	x0, [x29, #-32]
Lloh97:
	add	x1, x1, l_2@PAGEOFF
	bl	_streq
	tbz	w0, #0, LBB27_7
; %bb.3:                                ; %then40
	mov	w0, #40
	bl	_malloc
Lloh98:
	adrp	x8, _Dog_vtable_data@PAGE
Lloh99:
	add	x8, x8, _Dog_vtable_data@PAGEOFF
	str	x8, [x0]
	mov	x8, sp
	sub	x9, x8, #16
	mov	sp, x9
	mov	x20, sp
	stur	x0, [x8, #-16]
	sub	x19, x20, #16
	mov	sp, x19
	mov	x8, x0
Lloh100:
	adrp	x1, l_Mammal.85@PAGE
Lloh101:
	add	x1, x1, l_Mammal.85@PAGEOFF
	mov	x0, x19
	stur	x8, [x20, #-16]
	ldr	x8, [x8]
	ldr	x8, [x8]
	blr	x8
	ldur	x8, [x20, #-16]
Lloh102:
	adrp	x1, l_Dog@PAGE
Lloh103:
	add	x1, x1, l_Dog@PAGEOFF
LBB27_4:                                ; %merge
	ldr	x8, [x8]
	ldr	x8, [x8, #8]
	mov	x0, x19
	blr	x8
	ldur	x8, [x20, #-16]
	mov	x0, x19
	mov	w1, #4
	ldr	x8, [x8]
	ldr	x8, [x8, #16]
	blr	x8
	ldur	x8, [x20, #-16]
	mov	x0, x19
	mov	w1, #1
LBB27_5:                                ; %merge
	ldr	x8, [x8]
	ldr	x8, [x8, #24]
	blr	x8
	ldur	x8, [x20, #-16]
	mov	x0, x19
	mov	w1, wzr
LBB27_6:                                ; %merge
	ldr	x8, [x8]
	ldr	x8, [x8, #32]
	blr	x8
	ldur	x8, [x20, #-16]
	sub	x0, x29, #40
	stur	x8, [x29, #-40]
	sub	sp, x29, #16
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB27_7:                                ; %else82
Lloh104:
	adrp	x1, l_3@PAGE
	ldur	x0, [x29, #-32]
Lloh105:
	add	x1, x1, l_3@PAGEOFF
	bl	_streq
	tbz	w0, #0, LBB27_10
; %bb.8:                                ; %then86
	mov	w0, #40
	bl	_malloc
Lloh106:
	adrp	x8, _Chicken_vtable_data@PAGE
Lloh107:
	add	x8, x8, _Chicken_vtable_data@PAGEOFF
	str	x8, [x0]
	mov	x8, sp
	sub	x9, x8, #16
	mov	sp, x9
	mov	x20, sp
	stur	x0, [x8, #-16]
	sub	x19, x20, #16
	mov	sp, x19
	mov	x8, x0
Lloh108:
	adrp	x1, l_Bird@PAGE
Lloh109:
	add	x1, x1, l_Bird@PAGEOFF
	mov	x0, x19
	stur	x8, [x20, #-16]
	ldr	x8, [x8]
	ldr	x8, [x8]
	blr	x8
	ldur	x8, [x20, #-16]
Lloh110:
	adrp	x1, l_Chicken@PAGE
Lloh111:
	add	x1, x1, l_Chicken@PAGEOFF
	mov	x0, x19
	ldr	x8, [x8]
	ldr	x8, [x8, #8]
	blr	x8
	ldur	x8, [x20, #-16]
	mov	x0, x19
	mov	w1, #2
LBB27_9:                                ; %merge
	ldr	x8, [x8]
	ldr	x8, [x8, #16]
	blr	x8
	ldur	x8, [x20, #-16]
	mov	x0, x19
	mov	w1, wzr
	ldr	x8, [x8]
	ldr	x8, [x8, #24]
	blr	x8
	ldur	x8, [x20, #-16]
	mov	x0, x19
	mov	w1, #1
	b	LBB27_6
LBB27_10:                               ; %else129
Lloh112:
	adrp	x1, l_4@PAGE
	ldur	x0, [x29, #-32]
Lloh113:
	add	x1, x1, l_4@PAGEOFF
	bl	_streq
	tbz	w0, #0, LBB27_12
; %bb.11:                               ; %then133
	mov	w0, #40
	bl	_malloc
Lloh114:
	adrp	x8, _Snake_vtable_data@PAGE
Lloh115:
	add	x8, x8, _Snake_vtable_data@PAGEOFF
	str	x8, [x0]
	mov	x8, sp
	sub	x9, x8, #16
	mov	sp, x9
	mov	x20, sp
	stur	x0, [x8, #-16]
	sub	x19, x20, #16
	mov	sp, x19
	mov	x8, x0
Lloh116:
	adrp	x1, l_Reptile@PAGE
Lloh117:
	add	x1, x1, l_Reptile@PAGEOFF
	mov	x0, x19
	stur	x8, [x20, #-16]
	ldr	x8, [x8]
	ldr	x8, [x8]
	blr	x8
	ldur	x8, [x20, #-16]
Lloh118:
	adrp	x1, l_Snake@PAGE
Lloh119:
	add	x1, x1, l_Snake@PAGEOFF
	mov	x0, x19
	ldr	x8, [x8]
	ldr	x8, [x8, #8]
	blr	x8
	ldur	x8, [x20, #-16]
	mov	x0, x19
	mov	w1, wzr
	b	LBB27_17
LBB27_12:                               ; %else175
Lloh120:
	adrp	x1, l_5@PAGE
	ldur	x0, [x29, #-32]
Lloh121:
	add	x1, x1, l_5@PAGEOFF
	bl	_streq
	tbz	w0, #0, LBB27_14
; %bb.13:                               ; %then179
	mov	w0, #40
	bl	_malloc
Lloh122:
	adrp	x8, _Frog_vtable_data@PAGE
Lloh123:
	add	x8, x8, _Frog_vtable_data@PAGEOFF
	str	x8, [x0]
	mov	x8, sp
	sub	x9, x8, #16
	mov	sp, x9
	mov	x20, sp
	stur	x0, [x8, #-16]
	sub	x19, x20, #16
	mov	sp, x19
	mov	x8, x0
Lloh124:
	adrp	x1, l_Amphibian@PAGE
Lloh125:
	add	x1, x1, l_Amphibian@PAGEOFF
	mov	x0, x19
	stur	x8, [x20, #-16]
	ldr	x8, [x8]
	ldr	x8, [x8]
	blr	x8
	ldur	x8, [x20, #-16]
Lloh126:
	adrp	x1, l_Frog@PAGE
Lloh127:
	add	x1, x1, l_Frog@PAGEOFF
	mov	x0, x19
	ldr	x8, [x8]
	ldr	x8, [x8, #8]
	blr	x8
	ldur	x8, [x20, #-16]
	mov	x0, x19
	mov	w1, #4
	b	LBB27_17
LBB27_14:                               ; %else221
Lloh128:
	adrp	x1, l_6@PAGE
	ldur	x0, [x29, #-32]
Lloh129:
	add	x1, x1, l_6@PAGEOFF
	bl	_streq
	tbz	w0, #0, LBB27_16
; %bb.15:                               ; %then225
	mov	w0, #40
	bl	_malloc
Lloh130:
	adrp	x8, _Bee_vtable_data@PAGE
Lloh131:
	add	x8, x8, _Bee_vtable_data@PAGEOFF
	str	x8, [x0]
	mov	x8, sp
	sub	x9, x8, #16
	mov	sp, x9
	mov	x20, sp
	stur	x0, [x8, #-16]
	sub	x19, x20, #16
	mov	sp, x19
	mov	x8, x0
Lloh132:
	adrp	x1, l_Insect@PAGE
Lloh133:
	add	x1, x1, l_Insect@PAGEOFF
	mov	x0, x19
	stur	x8, [x20, #-16]
	ldr	x8, [x8]
	ldr	x8, [x8]
	blr	x8
	ldur	x8, [x20, #-16]
Lloh134:
	adrp	x1, l_Bee@PAGE
Lloh135:
	add	x1, x1, l_Bee@PAGEOFF
	mov	x0, x19
	ldr	x8, [x8]
	ldr	x8, [x8, #8]
	blr	x8
	ldur	x8, [x20, #-16]
	mov	x0, x19
	mov	w1, #6
	b	LBB27_9
LBB27_16:                               ; %else267
	mov	w0, #40
	bl	_malloc
Lloh136:
	adrp	x8, _Richard_vtable_data@PAGE
Lloh137:
	add	x8, x8, _Richard_vtable_data@PAGEOFF
	str	x8, [x0]
	mov	x8, sp
	sub	x9, x8, #16
	mov	sp, x9
	mov	x20, sp
	stur	x0, [x8, #-16]
	sub	x19, x20, #16
	mov	sp, x19
	mov	x8, x0
Lloh138:
	adrp	x1, l_Mammal.86@PAGE
Lloh139:
	add	x1, x1, l_Mammal.86@PAGEOFF
	mov	x0, x19
	stur	x8, [x20, #-16]
	ldr	x8, [x8]
	ldr	x8, [x8]
	blr	x8
	ldur	x8, [x20, #-16]
Lloh140:
	adrp	x1, l_Richard@PAGE
Lloh141:
	add	x1, x1, l_Richard@PAGEOFF
	mov	x0, x19
	ldr	x8, [x8]
	ldr	x8, [x8, #8]
	blr	x8
	ldur	x8, [x20, #-16]
	mov	x0, x19
	mov	w1, #2
LBB27_17:                               ; %merge
	ldr	x8, [x8]
	ldr	x8, [x8, #16]
	blr	x8
	ldur	x8, [x20, #-16]
	mov	x0, x19
	mov	w1, wzr
	b	LBB27_5
	.loh AdrpAdd	Lloh88, Lloh89
	.loh AdrpAdd	Lloh94, Lloh95
	.loh AdrpAdd	Lloh92, Lloh93
	.loh AdrpAdd	Lloh90, Lloh91
	.loh AdrpAdd	Lloh96, Lloh97
	.loh AdrpAdd	Lloh102, Lloh103
	.loh AdrpAdd	Lloh100, Lloh101
	.loh AdrpAdd	Lloh98, Lloh99
	.loh AdrpAdd	Lloh104, Lloh105
	.loh AdrpAdd	Lloh110, Lloh111
	.loh AdrpAdd	Lloh108, Lloh109
	.loh AdrpAdd	Lloh106, Lloh107
	.loh AdrpAdd	Lloh112, Lloh113
	.loh AdrpAdd	Lloh118, Lloh119
	.loh AdrpAdd	Lloh116, Lloh117
	.loh AdrpAdd	Lloh114, Lloh115
	.loh AdrpAdd	Lloh120, Lloh121
	.loh AdrpAdd	Lloh126, Lloh127
	.loh AdrpAdd	Lloh124, Lloh125
	.loh AdrpAdd	Lloh122, Lloh123
	.loh AdrpAdd	Lloh128, Lloh129
	.loh AdrpAdd	Lloh134, Lloh135
	.loh AdrpAdd	Lloh132, Lloh133
	.loh AdrpAdd	Lloh130, Lloh131
	.loh AdrpAdd	Lloh140, Lloh141
	.loh AdrpAdd	Lloh138, Lloh139
	.loh AdrpAdd	Lloh136, Lloh137
	.cfi_endproc
                                        ; -- End function
	.globl	_AnimalGame_makeGuess           ; -- Begin function AnimalGame_makeGuess
	.p2align	2
_AnimalGame_makeGuess:                  ; @AnimalGame_makeGuess
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #80
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 80
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	ldr	x8, [x1]
	str	w2, [sp, #28]
	ldr	x9, [x0]
Lloh142:
	adrp	x0, l_fmt.87@PAGE
Lloh143:
	add	x0, x0, l_fmt.87@PAGEOFF
	stp	x8, x9, [sp, #32]
Lloh144:
	adrp	x8, "l_Please enter your guess: "@PAGE
Lloh145:
	add	x8, x8, "l_Please enter your guess: "@PAGEOFF
	str	x8, [sp]
	bl	_printf
	bl	_readaline
	ldr	x8, [sp, #32]
	ldr	x9, [x0]
	add	x0, sp, #32
	ldr	x8, [x8]
	str	x9, [sp, #16]
	ldr	x8, [x8, #48]
	blr	x8
	mov	x1, x0
	ldr	x0, [sp, #16]
	bl	_streq
	tbnz	w0, #0, LBB28_3
; %bb.1:                                ; %then
Lloh146:
	adrp	x0, l_fmt.88@PAGE
Lloh147:
	adrp	x8, "l_Wrong guess :("@PAGE
Lloh148:
	add	x0, x0, l_fmt.88@PAGEOFF
Lloh149:
	add	x8, x8, "l_Wrong guess :("@PAGEOFF
	str	x8, [sp]
	bl	_printf
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	cmp	w8, #3
	str	w8, [sp, #28]
	b.ne	LBB28_5
; %bb.2:                                ; %then13
Lloh150:
	adrp	x19, l_fmt.88@PAGE
Lloh151:
	adrp	x8, "l_You have used up all your guesses."@PAGE
Lloh152:
	add	x19, x19, l_fmt.88@PAGEOFF
Lloh153:
	add	x8, x8, "l_You have used up all your guesses."@PAGEOFF
	mov	x0, x19
	str	x8, [sp]
	bl	_printf
Lloh154:
	adrp	x8, "l_The correct animal is: "@PAGE
	mov	x0, x19
Lloh155:
	add	x8, x8, "l_The correct animal is: "@PAGEOFF
	str	x8, [sp]
	bl	_printf
	ldr	x8, [sp, #32]
	add	x0, sp, #32
	ldr	x8, [x8]
	ldr	x8, [x8, #48]
	blr	x8
	mov	x8, x0
	mov	x0, x19
	str	x8, [sp]
	bl	_printf
Lloh156:
	adrp	x8, "l_You'll get 'em next time :)!"@PAGE
	mov	w19, wzr
Lloh157:
	add	x8, x8, "l_You'll get 'em next time :)!"@PAGEOFF
	b	LBB28_4
LBB28_3:
Lloh158:
	adrp	x8, "l_Ding ding ding! You got it! Thank you for playing the game :D"@PAGE
	mov	w19, #1
Lloh159:
	add	x8, x8, "l_Ding ding ding! You got it! Thank you for playing the game :D"@PAGEOFF
LBB28_4:                                ; %common.ret.sink.split
Lloh160:
	adrp	x0, l_fmt.88@PAGE
	str	x8, [sp]
Lloh161:
	add	x0, x0, l_fmt.88@PAGEOFF
	bl	_printf
	b	LBB28_6
LBB28_5:
	mov	w19, wzr
LBB28_6:                                ; %common.ret
	mov	w0, w19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.loh AdrpAdd	Lloh144, Lloh145
	.loh AdrpAdd	Lloh142, Lloh143
	.loh AdrpAdd	Lloh147, Lloh149
	.loh AdrpAdd	Lloh146, Lloh148
	.loh AdrpAdd	Lloh156, Lloh157
	.loh AdrpAdd	Lloh154, Lloh155
	.loh AdrpAdd	Lloh151, Lloh153
	.loh AdrpAdd	Lloh150, Lloh152
	.loh AdrpAdd	Lloh158, Lloh159
	.loh AdrpAdd	Lloh160, Lloh161
	.cfi_endproc
                                        ; -- End function
	.globl	_AnimalGame_giveHint            ; -- Begin function AnimalGame_giveHint
	.p2align	2
_AnimalGame_giveHint:                   ; @AnimalGame_giveHint
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #64
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 64
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	ldr	x8, [x0]
Lloh162:
	adrp	x19, l_fmt.91@PAGE
	ldr	x9, [x1]
Lloh163:
	add	x19, x19, l_fmt.91@PAGEOFF
	mov	x0, x19
	stp	x9, x8, [sp, #16]
Lloh164:
	adrp	x8, "l_Select one of the options for a hint:"@PAGE
Lloh165:
	add	x8, x8, "l_Select one of the options for a hint:"@PAGEOFF
	str	x8, [sp]
	bl	_printf
Lloh166:
	adrp	x8, l_Class@PAGE
	mov	x0, x19
Lloh167:
	add	x8, x8, l_Class@PAGEOFF
	str	x8, [sp]
	bl	_printf
Lloh168:
	adrp	x8, l_Legs@PAGE
	mov	x0, x19
Lloh169:
	add	x8, x8, l_Legs@PAGEOFF
	str	x8, [sp]
	bl	_printf
Lloh170:
	adrp	x8, l_Fur@PAGE
	mov	x0, x19
Lloh171:
	add	x8, x8, l_Fur@PAGEOFF
	str	x8, [sp]
	bl	_printf
Lloh172:
	adrp	x8, l_Fly@PAGE
	mov	x0, x19
Lloh173:
	add	x8, x8, l_Fly@PAGEOFF
	str	x8, [sp]
	bl	_printf
Lloh174:
	adrp	x8, l_Noise.93@PAGE
	mov	x0, x19
Lloh175:
	add	x8, x8, l_Noise.93@PAGEOFF
	str	x8, [sp]
	bl	_printf
Lloh176:
	adrp	x8, "l_Fun fact"@PAGE
	mov	x0, x19
Lloh177:
	add	x8, x8, "l_Fun fact"@PAGEOFF
	str	x8, [sp]
	bl	_printf
	bl	_readaline
Lloh178:
	adrp	x1, l_Class.94@PAGE
	ldr	x0, [x0]
Lloh179:
	add	x1, x1, l_Class.94@PAGEOFF
	str	x0, [sp, #8]
	bl	_streq
	tbz	w0, #0, LBB29_2
; %bb.1:                                ; %then
Lloh180:
	adrp	x0, l_fmt.90@PAGE
Lloh181:
	adrp	x8, "l_The animal is part of the class: "@PAGE
Lloh182:
	add	x0, x0, l_fmt.90@PAGEOFF
Lloh183:
	add	x8, x8, "l_The animal is part of the class: "@PAGEOFF
	str	x8, [sp]
	bl	_printf
	ldr	x8, [sp, #16]
	add	x0, sp, #16
	ldr	x8, [x8]
	ldr	x8, [x8, #40]
	blr	x8
	mov	x8, x0
	b	LBB29_9
LBB29_2:                                ; %else
Lloh184:
	adrp	x1, l_Legs.95@PAGE
	ldr	x0, [sp, #8]
Lloh185:
	add	x1, x1, l_Legs.95@PAGEOFF
	bl	_streq
	tbz	w0, #0, LBB29_4
; %bb.3:                                ; %then18
Lloh186:
	adrp	x0, l_fmt.90@PAGE
Lloh187:
	adrp	x8, "l_The animal has "@PAGE
Lloh188:
	add	x0, x0, l_fmt.90@PAGEOFF
Lloh189:
	add	x8, x8, "l_The animal has "@PAGEOFF
	str	x8, [sp]
	bl	_printf
	ldr	x8, [sp, #16]
	add	x0, sp, #16
	ldr	x8, [x8]
	ldr	x8, [x8, #56]
	blr	x8
	mov	w8, w0
Lloh190:
	adrp	x0, l_fmt.92@PAGE
Lloh191:
	add	x0, x0, l_fmt.92@PAGEOFF
	str	x8, [sp]
	bl	_printf
Lloh192:
	adrp	x0, l_fmt.91@PAGE
Lloh193:
	adrp	x8, "l_ legs"@PAGE
Lloh194:
	add	x0, x0, l_fmt.91@PAGEOFF
Lloh195:
	add	x8, x8, "l_ legs"@PAGEOFF
	b	LBB29_10
LBB29_4:                                ; %else27
Lloh196:
	adrp	x1, l_Fur.96@PAGE
	ldr	x0, [sp, #8]
Lloh197:
	add	x1, x1, l_Fur.96@PAGEOFF
	bl	_streq
	tbz	w0, #0, LBB29_6
; %bb.5:                                ; %then31
	ldr	x8, [sp, #16]
	add	x0, sp, #16
	ldr	x8, [x8]
	ldr	x8, [x8, #64]
	blr	x8
Lloh198:
	adrp	x8, "l_The animal does not have fur"@PAGE
Lloh199:
	adrp	x9, "l_The animal does have fur"@PAGE
Lloh200:
	add	x8, x8, "l_The animal does not have fur"@PAGEOFF
Lloh201:
	add	x9, x9, "l_The animal does have fur"@PAGEOFF
	b	LBB29_8
LBB29_6:                                ; %else42
Lloh202:
	adrp	x1, l_Fly.97@PAGE
	ldr	x0, [sp, #8]
Lloh203:
	add	x1, x1, l_Fly.97@PAGEOFF
	bl	_streq
	tbz	w0, #0, LBB29_12
; %bb.7:                                ; %then46
	ldr	x8, [sp, #16]
	add	x0, sp, #16
	ldr	x8, [x8]
	ldr	x8, [x8, #72]
	blr	x8
Lloh204:
	adrp	x8, "l_The animal cannot fly"@PAGE
Lloh205:
	adrp	x9, "l_The animal can fly"@PAGE
Lloh206:
	add	x8, x8, "l_The animal cannot fly"@PAGEOFF
Lloh207:
	add	x9, x9, "l_The animal can fly"@PAGEOFF
LBB29_8:                                ; %merge
	tst	w0, #0x1
	csel	x8, x9, x8, ne
LBB29_9:                                ; %merge
Lloh208:
	adrp	x0, l_fmt.91@PAGE
Lloh209:
	add	x0, x0, l_fmt.91@PAGEOFF
LBB29_10:                               ; %merge
	str	x8, [sp]
	bl	_printf
LBB29_11:                               ; %merge
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB29_12:                               ; %else57
Lloh210:
	adrp	x1, l_Noise.98@PAGE
	ldr	x0, [sp, #8]
Lloh211:
	add	x1, x1, l_Noise.98@PAGEOFF
	bl	_streq
	tbz	w0, #0, LBB29_14
; %bb.13:                               ; %then61
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x8, [x8, #80]
	b	LBB29_16
LBB29_14:                               ; %else67
Lloh212:
	adrp	x1, "l_Fun fact.99"@PAGE
	ldr	x0, [sp, #8]
Lloh213:
	add	x1, x1, "l_Fun fact.99"@PAGEOFF
	bl	_streq
	tbz	w0, #0, LBB29_17
; %bb.15:                               ; %then71
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x8, [x8, #88]
LBB29_16:                               ; %merge
	add	x0, sp, #16
	blr	x8
	b	LBB29_11
LBB29_17:                               ; %else77
Lloh214:
	adrp	x0, l_fmt.91@PAGE
Lloh215:
	adrp	x8, "l_We don't have that type of hint :("@PAGE
Lloh216:
	add	x0, x0, l_fmt.91@PAGEOFF
Lloh217:
	add	x8, x8, "l_We don't have that type of hint :("@PAGEOFF
	b	LBB29_10
	.loh AdrpAdd	Lloh178, Lloh179
	.loh AdrpAdd	Lloh176, Lloh177
	.loh AdrpAdd	Lloh174, Lloh175
	.loh AdrpAdd	Lloh172, Lloh173
	.loh AdrpAdd	Lloh170, Lloh171
	.loh AdrpAdd	Lloh168, Lloh169
	.loh AdrpAdd	Lloh166, Lloh167
	.loh AdrpAdd	Lloh164, Lloh165
	.loh AdrpAdd	Lloh162, Lloh163
	.loh AdrpAdd	Lloh181, Lloh183
	.loh AdrpAdd	Lloh180, Lloh182
	.loh AdrpAdd	Lloh184, Lloh185
	.loh AdrpAdd	Lloh193, Lloh195
	.loh AdrpAdd	Lloh192, Lloh194
	.loh AdrpAdd	Lloh190, Lloh191
	.loh AdrpAdd	Lloh187, Lloh189
	.loh AdrpAdd	Lloh186, Lloh188
	.loh AdrpAdd	Lloh196, Lloh197
	.loh AdrpAdd	Lloh199, Lloh201
	.loh AdrpAdd	Lloh198, Lloh200
	.loh AdrpAdd	Lloh202, Lloh203
	.loh AdrpAdd	Lloh205, Lloh207
	.loh AdrpAdd	Lloh204, Lloh206
	.loh AdrpAdd	Lloh208, Lloh209
	.loh AdrpAdd	Lloh210, Lloh211
	.loh AdrpAdd	Lloh212, Lloh213
	.loh AdrpAdd	Lloh215, Lloh217
	.loh AdrpAdd	Lloh214, Lloh216
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #8
	bl	_malloc
Lloh218:
	adrp	x8, _AnimalGame_vtable_data@PAGE
	stp	x0, x0, [sp]
Lloh219:
	add	x8, x8, _AnimalGame_vtable_data@PAGEOFF
	str	x8, [x0]
	ldr	x8, [x0]
	mov	x0, sp
	ldr	x8, [x8]
	blr	x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	mov	w0, wzr
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh218, Lloh219
	.cfi_endproc
                                        ; -- End function
	.globl	_Object_vtable_data             ; @Object_vtable_data
.zerofill __DATA,__common,_Object_vtable_data,1,3
	.section	__TEXT,__cstring,cstring_literals
l_fmt:                                  ; @fmt
	.asciz	"%s"

l_fmt.1:                                ; @fmt.1
	.asciz	"%s\n"

l_fmt.2:                                ; @fmt.2
	.asciz	"%d"

l_fmt.3:                                ; @fmt.3
	.asciz	"%s"

l_fmt.4:                                ; @fmt.4
	.asciz	"%s\n"

l_fmt.5:                                ; @fmt.5
	.asciz	"%d"

l_fmt.6:                                ; @fmt.6
	.asciz	"%s"

l_fmt.7:                                ; @fmt.7
	.asciz	"%s\n"

l_fmt.8:                                ; @fmt.8
	.asciz	"%d"

l_fmt.9:                                ; @fmt.9
	.asciz	"%s"

l_fmt.10:                               ; @fmt.10
	.asciz	"%s\n"

l_fmt.11:                               ; @fmt.11
	.asciz	"%d"

l_fmt.12:                               ; @fmt.12
	.asciz	"%s"

l_fmt.13:                               ; @fmt.13
	.asciz	"%s\n"

l_fmt.14:                               ; @fmt.14
	.asciz	"%d"

l_fmt.15:                               ; @fmt.15
	.asciz	"%s"

l_fmt.16:                               ; @fmt.16
	.asciz	"%s\n"

l_fmt.17:                               ; @fmt.17
	.asciz	"%d"

l_fmt.18:                               ; @fmt.18
	.asciz	"%s"

l_fmt.19:                               ; @fmt.19
	.asciz	"%s\n"

l_fmt.20:                               ; @fmt.20
	.asciz	"%d"

l_fmt.21:                               ; @fmt.21
	.asciz	"%s"

l_fmt.22:                               ; @fmt.22
	.asciz	"%s\n"

l_fmt.23:                               ; @fmt.23
	.asciz	"%d"

l_fmt.24:                               ; @fmt.24
	.asciz	"%s"

l_fmt.25:                               ; @fmt.25
	.asciz	"%s\n"

l_fmt.26:                               ; @fmt.26
	.asciz	"%d"

l_fmt.27:                               ; @fmt.27
	.asciz	"%s"

l_fmt.28:                               ; @fmt.28
	.asciz	"%s\n"

l_fmt.29:                               ; @fmt.29
	.asciz	"%d"

l_fmt.30:                               ; @fmt.30
	.asciz	"%s"

l_fmt.31:                               ; @fmt.31
	.asciz	"%s\n"

l_fmt.32:                               ; @fmt.32
	.asciz	"%d"

l_Noise:                                ; @Noise
	.asciz	"Noise"

l_fmt.33:                               ; @fmt.33
	.asciz	"%s"

l_fmt.34:                               ; @fmt.34
	.asciz	"%s\n"

l_fmt.35:                               ; @fmt.35
	.asciz	"%d"

"l_There are 5 different animal classes: Mammals, Birds, Insects, Amphibians, and Reptiles!": ; @"There are 5 different animal classes: Mammals, Birds, Insects, Amphibians, and Reptiles!"
	.asciz	"There are 5 different animal classes: Mammals, Birds, Insects, Amphibians, and Reptiles!"

	.section	__DATA,__data
	.globl	_Animal_vtable_data             ; @Animal_vtable_data
	.p2align	4
_Animal_vtable_data:
	.quad	_Animal_setAnimal
	.quad	_Animal_setType
	.quad	_Animal_setLegs
	.quad	_Animal_setFur
	.quad	_Animal_setFly
	.quad	_Animal_getClass
	.quad	_Animal_getType
	.quad	_Animal_numLegs
	.quad	_Animal_hasFur
	.quad	_Animal_canFly
	.quad	_Animal_noise
	.quad	_Animal_funFact

	.section	__TEXT,__cstring,cstring_literals
l_fmt.36:                               ; @fmt.36
	.asciz	"%s"

l_fmt.37:                               ; @fmt.37
	.asciz	"%s\n"

l_fmt.38:                               ; @fmt.38
	.asciz	"%d"

"l_Meow!":                              ; @"Meow!"
	.asciz	"Meow!"

l_fmt.39:                               ; @fmt.39
	.asciz	"%s"

l_fmt.40:                               ; @fmt.40
	.asciz	"%s\n"

l_fmt.41:                               ; @fmt.41
	.asciz	"%d"

"l_I can land on all fours!":           ; @"I can land on all fours!"
	.asciz	"I can land on all fours!"

	.section	__DATA,__data
	.globl	_Cat_vtable_data                ; @Cat_vtable_data
	.p2align	4
_Cat_vtable_data:
	.quad	_Animal_setAnimal
	.quad	_Animal_setType
	.quad	_Animal_setLegs
	.quad	_Animal_setFur
	.quad	_Animal_setFly
	.quad	_Animal_getClass
	.quad	_Animal_getType
	.quad	_Animal_numLegs
	.quad	_Animal_hasFur
	.quad	_Animal_canFly
	.quad	_Cat_noise
	.quad	_Cat_funFact

	.section	__TEXT,__cstring,cstring_literals
l_fmt.42:                               ; @fmt.42
	.asciz	"%s"

l_fmt.43:                               ; @fmt.43
	.asciz	"%s\n"

l_fmt.44:                               ; @fmt.44
	.asciz	"%d"

"l_Bark!":                              ; @"Bark!"
	.asciz	"Bark!"

l_fmt.45:                               ; @fmt.45
	.asciz	"%s"

l_fmt.46:                               ; @fmt.46
	.asciz	"%s\n"

l_fmt.47:                               ; @fmt.47
	.asciz	"%d"

"l_I have a great sense of smell!":     ; @"I have a great sense of smell!"
	.asciz	"I have a great sense of smell!"

	.section	__DATA,__data
	.globl	_Dog_vtable_data                ; @Dog_vtable_data
	.p2align	4
_Dog_vtable_data:
	.quad	_Animal_setAnimal
	.quad	_Animal_setType
	.quad	_Animal_setLegs
	.quad	_Animal_setFur
	.quad	_Animal_setFly
	.quad	_Animal_getClass
	.quad	_Animal_getType
	.quad	_Animal_numLegs
	.quad	_Animal_hasFur
	.quad	_Animal_canFly
	.quad	_Dog_noise
	.quad	_Dog_funFact

	.section	__TEXT,__cstring,cstring_literals
l_fmt.48:                               ; @fmt.48
	.asciz	"%s"

l_fmt.49:                               ; @fmt.49
	.asciz	"%s\n"

l_fmt.50:                               ; @fmt.50
	.asciz	"%d"

"l_Cluck!":                             ; @"Cluck!"
	.asciz	"Cluck!"

l_fmt.51:                               ; @fmt.51
	.asciz	"%s"

l_fmt.52:                               ; @fmt.52
	.asciz	"%s\n"

l_fmt.53:                               ; @fmt.53
	.asciz	"%d"

"l_I am one of the closest living descendants to dinosaurs!": ; @"I am one of the closest living descendants to dinosaurs!"
	.asciz	"I am one of the closest living descendants to dinosaurs!"

	.section	__DATA,__data
	.globl	_Chicken_vtable_data            ; @Chicken_vtable_data
	.p2align	4
_Chicken_vtable_data:
	.quad	_Animal_setAnimal
	.quad	_Animal_setType
	.quad	_Animal_setLegs
	.quad	_Animal_setFur
	.quad	_Animal_setFly
	.quad	_Animal_getClass
	.quad	_Animal_getType
	.quad	_Animal_numLegs
	.quad	_Animal_hasFur
	.quad	_Animal_canFly
	.quad	_Chicken_noise
	.quad	_Chicken_funFact

	.section	__TEXT,__cstring,cstring_literals
l_fmt.54:                               ; @fmt.54
	.asciz	"%s"

l_fmt.55:                               ; @fmt.55
	.asciz	"%s\n"

l_fmt.56:                               ; @fmt.56
	.asciz	"%d"

"l_Hiss!":                              ; @"Hiss!"
	.asciz	"Hiss!"

l_fmt.57:                               ; @fmt.57
	.asciz	"%s"

l_fmt.58:                               ; @fmt.58
	.asciz	"%s\n"

l_fmt.59:                               ; @fmt.59
	.asciz	"%d"

"l_I can be very venomous!":            ; @"I can be very venomous!"
	.asciz	"I can be very venomous!"

	.section	__DATA,__data
	.globl	_Snake_vtable_data              ; @Snake_vtable_data
	.p2align	4
_Snake_vtable_data:
	.quad	_Animal_setAnimal
	.quad	_Animal_setType
	.quad	_Animal_setLegs
	.quad	_Animal_setFur
	.quad	_Animal_setFly
	.quad	_Animal_getClass
	.quad	_Animal_getType
	.quad	_Animal_numLegs
	.quad	_Animal_hasFur
	.quad	_Animal_canFly
	.quad	_Snake_noise
	.quad	_Snake_funFact

	.section	__TEXT,__cstring,cstring_literals
l_fmt.60:                               ; @fmt.60
	.asciz	"%s"

l_fmt.61:                               ; @fmt.61
	.asciz	"%s\n"

l_fmt.62:                               ; @fmt.62
	.asciz	"%d"

"l_Croak!":                             ; @"Croak!"
	.asciz	"Croak!"

l_fmt.63:                               ; @fmt.63
	.asciz	"%s"

l_fmt.64:                               ; @fmt.64
	.asciz	"%s\n"

l_fmt.65:                               ; @fmt.65
	.asciz	"%d"

"l_I have excellent night vision":      ; @"I have excellent night vision"
	.asciz	"I have excellent night vision"

	.section	__DATA,__data
	.globl	_Frog_vtable_data               ; @Frog_vtable_data
	.p2align	4
_Frog_vtable_data:
	.quad	_Animal_setAnimal
	.quad	_Animal_setType
	.quad	_Animal_setLegs
	.quad	_Animal_setFur
	.quad	_Animal_setFly
	.quad	_Animal_getClass
	.quad	_Animal_getType
	.quad	_Animal_numLegs
	.quad	_Animal_hasFur
	.quad	_Animal_canFly
	.quad	_Frog_noise
	.quad	_Frog_funFact

	.section	__TEXT,__cstring,cstring_literals
l_fmt.66:                               ; @fmt.66
	.asciz	"%s"

l_fmt.67:                               ; @fmt.67
	.asciz	"%s\n"

l_fmt.68:                               ; @fmt.68
	.asciz	"%d"

"l_Buzz!":                              ; @"Buzz!"
	.asciz	"Buzz!"

l_fmt.69:                               ; @fmt.69
	.asciz	"%s"

l_fmt.70:                               ; @fmt.70
	.asciz	"%s\n"

l_fmt.71:                               ; @fmt.71
	.asciz	"%d"

"l_They make something sweet ":         ; @"They make something sweet "
	.asciz	"They make something sweet "

	.section	__DATA,__data
	.globl	_Bee_vtable_data                ; @Bee_vtable_data
	.p2align	4
_Bee_vtable_data:
	.quad	_Animal_setAnimal
	.quad	_Animal_setType
	.quad	_Animal_setLegs
	.quad	_Animal_setFur
	.quad	_Animal_setFly
	.quad	_Animal_getClass
	.quad	_Animal_getType
	.quad	_Animal_numLegs
	.quad	_Animal_hasFur
	.quad	_Animal_canFly
	.quad	_Bee_noise
	.quad	_Bee_funFact

	.section	__TEXT,__cstring,cstring_literals
l_fmt.72:                               ; @fmt.72
	.asciz	"%s"

l_fmt.73:                               ; @fmt.73
	.asciz	"%s\n"

l_fmt.74:                               ; @fmt.74
	.asciz	"%d"

"l_Howdy folks!":                       ; @"Howdy folks!"
	.asciz	"Howdy folks!"

l_fmt.75:                               ; @fmt.75
	.asciz	"%s"

l_fmt.76:                               ; @fmt.76
	.asciz	"%s\n"

l_fmt.77:                               ; @fmt.77
	.asciz	"%d"

"l_This is someone you know very well ;)": ; @"This is someone you know very well ;)"
	.asciz	"This is someone you know very well ;)"

	.section	__DATA,__data
	.globl	_Richard_vtable_data            ; @Richard_vtable_data
	.p2align	4
_Richard_vtable_data:
	.quad	_Animal_setAnimal
	.quad	_Animal_setType
	.quad	_Animal_setLegs
	.quad	_Animal_setFur
	.quad	_Animal_setFly
	.quad	_Animal_getClass
	.quad	_Animal_getType
	.quad	_Animal_numLegs
	.quad	_Animal_hasFur
	.quad	_Animal_canFly
	.quad	_Richard_noise
	.quad	_Richard_funFact

	.section	__TEXT,__cstring,cstring_literals
l_fmt.78:                               ; @fmt.78
	.asciz	"%s"

l_fmt.79:                               ; @fmt.79
	.asciz	"%s\n"

l_fmt.80:                               ; @fmt.80
	.asciz	"%d"

l___unnamed_1:                          ; @0
	.space	1

"l_Hello and welcome to the animal guessing game!": ; @"Hello and welcome to the animal guessing game!"
	.asciz	"Hello and welcome to the animal guessing game!"

"l_You will have 3 tries to guess the animal, along with a number of hints.": ; @"You will have 3 tries to guess the animal, along with a number of hints."
	.asciz	"You will have 3 tries to guess the animal, along with a number of hints."

"l_Please enter a number from 1-6":     ; @"Please enter a number from 1-6"
	.asciz	"Please enter a number from 1-6"

"l_Please enter g to make a guess, h for a hint, or q to quit: ": ; @"Please enter g to make a guess, h for a hint, or q to quit: "
	.asciz	"Please enter g to make a guess, h for a hint, or q to quit: "

l_q:                                    ; @q
	.asciz	"q"

"l_Thank you for playing the game. We hope you had fun!!": ; @"Thank you for playing the game. We hope you had fun!!"
	.asciz	"Thank you for playing the game. We hope you had fun!!"

l_g:                                    ; @g
	.asciz	"g"

l_h:                                    ; @h
	.asciz	"h"

l_q.81:                                 ; @q.81
	.asciz	"q"

l_fmt.82:                               ; @fmt.82
	.asciz	"%s"

l_fmt.83:                               ; @fmt.83
	.asciz	"%s\n"

l_fmt.84:                               ; @fmt.84
	.asciz	"%d"

l_1:                                    ; @"1"
	.asciz	"1"

l_Mammal:                               ; @Mammal
	.asciz	"Mammal"

l_Cat:                                  ; @Cat
	.asciz	"Cat"

l_2:                                    ; @"2"
	.asciz	"2"

l_Mammal.85:                            ; @Mammal.85
	.asciz	"Mammal"

l_Dog:                                  ; @Dog
	.asciz	"Dog"

l_3:                                    ; @"3"
	.asciz	"3"

l_Bird:                                 ; @Bird
	.asciz	"Bird"

l_Chicken:                              ; @Chicken
	.asciz	"Chicken"

l_4:                                    ; @"4"
	.asciz	"4"

l_Reptile:                              ; @Reptile
	.asciz	"Reptile"

l_Snake:                                ; @Snake
	.asciz	"Snake"

l_5:                                    ; @"5"
	.asciz	"5"

l_Amphibian:                            ; @Amphibian
	.asciz	"Amphibian"

l_Frog:                                 ; @Frog
	.asciz	"Frog"

l_6:                                    ; @"6"
	.asciz	"6"

l_Insect:                               ; @Insect
	.asciz	"Insect"

l_Bee:                                  ; @Bee
	.asciz	"Bee"

l_Mammal.86:                            ; @Mammal.86
	.asciz	"Mammal"

l_Richard:                              ; @Richard
	.asciz	"Richard"

l_fmt.87:                               ; @fmt.87
	.asciz	"%s"

l_fmt.88:                               ; @fmt.88
	.asciz	"%s\n"

l_fmt.89:                               ; @fmt.89
	.asciz	"%d"

"l_Please enter your guess: ":          ; @"Please enter your guess: "
	.asciz	"Please enter your guess: "

"l_Wrong guess :(":                     ; @"Wrong guess :("
	.asciz	"Wrong guess :("

"l_You have used up all your guesses.": ; @"You have used up all your guesses."
	.asciz	"You have used up all your guesses."

"l_The correct animal is: ":            ; @"The correct animal is: "
	.asciz	"The correct animal is: "

"l_You'll get 'em next time :)!":       ; @"You'll get 'em next time :)!"
	.asciz	"You'll get 'em next time :)!"

"l_Ding ding ding! You got it! Thank you for playing the game :D": ; @"Ding ding ding! You got it! Thank you for playing the game :D"
	.asciz	"Ding ding ding! You got it! Thank you for playing the game :D"

l_fmt.90:                               ; @fmt.90
	.asciz	"%s"

l_fmt.91:                               ; @fmt.91
	.asciz	"%s\n"

l_fmt.92:                               ; @fmt.92
	.asciz	"%d"

"l_Select one of the options for a hint:": ; @"Select one of the options for a hint:"
	.asciz	"Select one of the options for a hint:"

l_Class:                                ; @Class
	.asciz	"Class"

l_Legs:                                 ; @Legs
	.asciz	"Legs"

l_Fur:                                  ; @Fur
	.asciz	"Fur"

l_Fly:                                  ; @Fly
	.asciz	"Fly"

l_Noise.93:                             ; @Noise.93
	.asciz	"Noise"

"l_Fun fact":                           ; @"Fun fact"
	.asciz	"Fun fact"

l_Class.94:                             ; @Class.94
	.asciz	"Class"

"l_The animal is part of the class: ":  ; @"The animal is part of the class: "
	.asciz	"The animal is part of the class: "

l_Legs.95:                              ; @Legs.95
	.asciz	"Legs"

"l_The animal has ":                    ; @"The animal has "
	.asciz	"The animal has "

"l_ legs":                              ; @" legs"
	.asciz	" legs"

l_Fur.96:                               ; @Fur.96
	.asciz	"Fur"

"l_The animal does have fur":           ; @"The animal does have fur"
	.asciz	"The animal does have fur"

"l_The animal does not have fur":       ; @"The animal does not have fur"
	.asciz	"The animal does not have fur"

l_Fly.97:                               ; @Fly.97
	.asciz	"Fly"

"l_The animal can fly":                 ; @"The animal can fly"
	.asciz	"The animal can fly"

"l_The animal cannot fly":              ; @"The animal cannot fly"
	.asciz	"The animal cannot fly"

l_Noise.98:                             ; @Noise.98
	.asciz	"Noise"

"l_Fun fact.99":                        ; @"Fun fact.99"
	.asciz	"Fun fact"

"l_We don't have that type of hint :(": ; @"We don't have that type of hint :("
	.asciz	"We don't have that type of hint :("

	.section	__DATA,__data
	.globl	_AnimalGame_vtable_data         ; @AnimalGame_vtable_data
	.p2align	4
_AnimalGame_vtable_data:
	.quad	_AnimalGame_run
	.quad	_AnimalGame_getAnimal
	.quad	_AnimalGame_makeGuess
	.quad	_AnimalGame_giveHint

	.section	__TEXT,__cstring,cstring_literals
l_fmt.100:                              ; @fmt.100
	.asciz	"%s"

l_fmt.101:                              ; @fmt.101
	.asciz	"%s\n"

l_fmt.102:                              ; @fmt.102
	.asciz	"%d"

	.section	__DATA,__data
	.globl	_Main_vtable_data               ; @Main_vtable_data
	.p2align	3
_Main_vtable_data:
	.quad	_main

	.globl	_big_vtable_data                ; @big_vtable_data
	.p2align	4
_big_vtable_data:
	.quad	_Object_vtable_data
	.quad	_Animal_vtable_data
	.quad	_Cat_vtable_data
	.quad	_Dog_vtable_data
	.quad	_Chicken_vtable_data
	.quad	_Snake_vtable_data
	.quad	_Frog_vtable_data
	.quad	_Bee_vtable_data
	.quad	_Richard_vtable_data
	.quad	_AnimalGame_vtable_data
	.quad	_Main_vtable_data

.subsections_via_symbols
