	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0
	.globl	_IceCream_getFlavor             ; -- Begin function IceCream_getFlavor
	.p2align	2
_IceCream_getFlavor:                    ; @IceCream_getFlavor
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	ldr	x9, [x0]
Lloh0:
	adrp	x8, l_yum@PAGE
Lloh1:
	add	x8, x8, l_yum@PAGEOFF
	mov	x0, x8
	str	x9, [sp, #8]
	add	sp, sp, #16
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_IceCream_setFlavor             ; -- Begin function IceCream_setFlavor
	.p2align	2
_IceCream_setFlavor:                    ; @IceCream_setFlavor
	.cfi_startproc
; %bb.0:                                ; %entry
	.cfi_def_cfa_offset 16
	ldr	x8, [x0]
	stp	x1, x8, [sp, #-16]!
	str	x1, [x8, #32]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_IceCream_getTemp               ; -- Begin function IceCream_getTemp
	.p2align	2
_IceCream_getTemp:                      ; @IceCream_getTemp
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x9, [x0]
Lloh2:
	adrp	x0, l_fmt.7@PAGE
Lloh3:
	adrp	x8, "l_got temp!"@PAGE
Lloh4:
	add	x0, x0, l_fmt.7@PAGEOFF
Lloh5:
	add	x8, x8, "l_got temp!"@PAGEOFF
	stp	x8, x9, [sp]
	bl	_printf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	mov	x8, #4629700416936869888
	fmov	d0, x8
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh3, Lloh5
	.loh AdrpAdd	Lloh2, Lloh4
	.cfi_endproc
                                        ; -- End function
	.globl	_IceCream_yay                   ; -- Begin function IceCream_yay
	.p2align	2
_IceCream_yay:                          ; @IceCream_yay
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x8, [x0]
	add	x0, sp, #8
	str	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x8, [x8, #32]
	blr	x8
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #24]
	cmp	w8, #1
	b.ne	LBB3_2
; %bb.1:                                ; %then
Lloh6:
	adrp	x0, l_fmt.10@PAGE
Lloh7:
	adrp	x8, l_bruh@PAGE
Lloh8:
	add	x0, x0, l_fmt.10@PAGEOFF
Lloh9:
	add	x8, x8, l_bruh@PAGEOFF
	str	x8, [sp]
	bl	_printf
LBB3_2:                                 ; %merge
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh7, Lloh9
	.loh AdrpAdd	Lloh6, Lloh8
	.cfi_endproc
                                        ; -- End function
	.globl	_IceCream_printyay              ; -- Begin function IceCream_printyay
	.p2align	2
_IceCream_printyay:                     ; @IceCream_printyay
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #1
	ldr	x9, [x0]
Lloh10:
	adrp	x0, l_fmt.13@PAGE
Lloh11:
	add	x0, x0, l_fmt.13@PAGEOFF
	str	w8, [x9, #24]
Lloh12:
	adrp	x8, l_yay@PAGE
Lloh13:
	add	x8, x8, l_yay@PAGEOFF
	stp	x8, x9, [sp]
	bl	_printf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.cfi_endproc
                                        ; -- End function
	.globl	_Gelato_getFlavor               ; -- Begin function Gelato_getFlavor
	.p2align	2
_Gelato_getFlavor:                      ; @Gelato_getFlavor
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	ldr	x9, [x0]
Lloh14:
	adrp	x8, l_tasty@PAGE
Lloh15:
	add	x8, x8, l_tasty@PAGEOFF
	mov	x0, x8
	str	x9, [sp, #8]
	add	sp, sp, #16
	ret
	.loh AdrpAdd	Lloh14, Lloh15
	.cfi_endproc
                                        ; -- End function
	.globl	_Gelato_price                   ; -- Begin function Gelato_price
	.p2align	2
_Gelato_price:                          ; @Gelato_price
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	x8, x0
	mov	w0, #1
	str	w1, [sp, #4]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
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
Lloh16:
	adrp	x19, l_fmt.22@PAGE
Lloh17:
	adrp	x8, "l_josh is da goat"@PAGE
Lloh18:
	add	x19, x19, l_fmt.22@PAGEOFF
Lloh19:
	add	x8, x8, "l_josh is da goat"@PAGEOFF
	mov	x0, x19
	str	x8, [sp]
	bl	_printf
	mov	w0, #40
	bl	_malloc
Lloh20:
	adrp	x8, _IceCream_vtable_data@PAGE
Lloh21:
	adrp	x9, l_IceCream@PAGE
	mov	w20, #1
Lloh22:
	add	x8, x8, _IceCream_vtable_data@PAGEOFF
Lloh23:
	add	x9, x9, l_IceCream@PAGEOFF
	stp	x0, x0, [sp, #32]
	str	x8, [x0]
	str	w20, [x0, #8]
	str	x9, [x0, #16]
	mov	w0, #40
	bl	_malloc
Lloh24:
	adrp	x9, _Gelato_vtable_data@PAGE
Lloh25:
	adrp	x10, l_Gelato@PAGE
Lloh26:
	add	x9, x9, _Gelato_vtable_data@PAGEOFF
Lloh27:
	add	x10, x10, l_Gelato@PAGEOFF
	ldr	x8, [sp, #32]
	str	w20, [x0, #8]
	stp	x0, x0, [sp, #16]
	str	x9, [x0]
	str	x10, [x0, #16]
	add	x0, sp, #32
	ldr	x8, [x8]
	ldr	x8, [x8, #16]
	blr	x8
	ldr	x8, [sp, #16]
	add	x0, sp, #16
	ldr	x8, [x8]
	ldr	x8, [x8, #16]
	blr	x8
	ldr	x8, [sp, #32]
Lloh28:
	adrp	x1, "l_cookies and cream"@PAGE
Lloh29:
	add	x1, x1, "l_cookies and cream"@PAGEOFF
	add	x0, sp, #32
	ldr	x8, [x8]
	ldr	x8, [x8, #8]
	blr	x8
	ldr	x8, [sp, #32]
	mov	x0, x19
	ldr	x8, [x8, #32]
	str	x8, [sp]
	bl	_printf
	ldr	x8, [sp, #16]
Lloh30:
	adrp	x1, l_chocolate@PAGE
Lloh31:
	add	x1, x1, l_chocolate@PAGEOFF
	add	x0, sp, #16
	ldr	x8, [x8]
	ldr	x8, [x8, #8]
	blr	x8
	ldr	x8, [sp, #16]
	mov	x0, x19
	ldr	x8, [x8, #32]
	str	x8, [sp]
	bl	_printf
	ldr	x8, [sp, #32]
	add	x0, sp, #32
	ldr	x8, [x8]
	ldr	x8, [x8, #24]
	blr	x8
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	mov	w0, wzr
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.loh AdrpAdd	Lloh30, Lloh31
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpAdd	Lloh25, Lloh27
	.loh AdrpAdd	Lloh24, Lloh26
	.loh AdrpAdd	Lloh21, Lloh23
	.loh AdrpAdd	Lloh20, Lloh22
	.loh AdrpAdd	Lloh17, Lloh19
	.loh AdrpAdd	Lloh16, Lloh18
	.cfi_endproc
                                        ; -- End function
	.globl	_Main_getOne                    ; -- Begin function Main_getOne
	.p2align	2
_Main_getOne:                           ; @Main_getOne
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	x8, x0
	mov	w0, #1
	ldr	x8, [x8]
	str	x8, [sp, #8]
	add	sp, sp, #16
	ret
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

l_yum:                                  ; @yum
	.asciz	"yum"

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

"l_got temp!":                          ; @"got temp!"
	.asciz	"got temp!"

l_fmt.9:                                ; @fmt.9
	.asciz	"%s"

l_fmt.10:                               ; @fmt.10
	.asciz	"%s\n"

l_fmt.11:                               ; @fmt.11
	.asciz	"%d"

l_bruh:                                 ; @bruh
	.asciz	"bruh"

l_fmt.12:                               ; @fmt.12
	.asciz	"%s"

l_fmt.13:                               ; @fmt.13
	.asciz	"%s\n"

l_fmt.14:                               ; @fmt.14
	.asciz	"%d"

l_yay:                                  ; @yay
	.asciz	"yay"

	.section	__DATA,__data
	.globl	_IceCream_vtable_data           ; @IceCream_vtable_data
	.p2align	4
_IceCream_vtable_data:
	.quad	_IceCream_getFlavor
	.quad	_IceCream_setFlavor
	.quad	_IceCream_getTemp
	.quad	_IceCream_yay
	.quad	_IceCream_printyay

	.section	__TEXT,__cstring,cstring_literals
l_fmt.15:                               ; @fmt.15
	.asciz	"%s"

l_fmt.16:                               ; @fmt.16
	.asciz	"%s\n"

l_fmt.17:                               ; @fmt.17
	.asciz	"%d"

l_tasty:                                ; @tasty
	.asciz	"tasty"

l_fmt.18:                               ; @fmt.18
	.asciz	"%s"

l_fmt.19:                               ; @fmt.19
	.asciz	"%s\n"

l_fmt.20:                               ; @fmt.20
	.asciz	"%d"

	.section	__DATA,__data
	.globl	_Gelato_vtable_data             ; @Gelato_vtable_data
	.p2align	4
_Gelato_vtable_data:
	.quad	_Gelato_getFlavor
	.quad	_IceCream_setFlavor
	.quad	_IceCream_getTemp
	.quad	_IceCream_yay
	.quad	_IceCream_printyay
	.quad	_Gelato_price

	.section	__TEXT,__cstring,cstring_literals
l_fmt.21:                               ; @fmt.21
	.asciz	"%s"

l_fmt.22:                               ; @fmt.22
	.asciz	"%s\n"

l_fmt.23:                               ; @fmt.23
	.asciz	"%d"

"l_josh is da goat":                    ; @"josh is da goat"
	.asciz	"josh is da goat"

l_IceCream:                             ; @IceCream
	.asciz	"IceCream"

l_Gelato:                               ; @Gelato
	.asciz	"Gelato"

"l_cookies and cream":                  ; @"cookies and cream"
	.asciz	"cookies and cream"

l_chocolate:                            ; @chocolate
	.asciz	"chocolate"

l_fmt.24:                               ; @fmt.24
	.asciz	"%s"

l_fmt.25:                               ; @fmt.25
	.asciz	"%s\n"

l_fmt.26:                               ; @fmt.26
	.asciz	"%d"

	.section	__DATA,__data
	.globl	_Main_vtable_data               ; @Main_vtable_data
	.p2align	3
_Main_vtable_data:
	.quad	_main
	.quad	_Main_getOne

.subsections_via_symbols
