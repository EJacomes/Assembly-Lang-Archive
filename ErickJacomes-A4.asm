section .data
; define constants
EXIT_SUCCESS	equ	0
SYS_exit	equ	60

List	dw	100, 102, 104, 106

section .text
global_start
_start:

mov	rbx, List
mov	rsi, 0
mov	rcx, qword [rbx+rsi*4]
;ax is used to represent the value of the arrays stored in the register because the 64 bit one doesn't want to
mov	ax, word [rbx+rsi*4]

mov	rsi, 1
mov	rcx, qword [rbx+rsi*4]
mov	ax, word [rbx+rsi*4]

mov	rsi, 2
mov	rcx, qword [rbx+rsi*4]
mov	ax, word [rbx+rsi*4]

mov	rsi, 3
mov	rcx, qword [rbx+rsi*4]
mov	ax, word [rbx+rsi*4]

last:
mov	rax,	SYS_exit
mov	rdi,	EXIT_SUCCESS
syscall


