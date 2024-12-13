section .data
; define constants
EXIT_SUCCESS	 equ	 0
SYS_exit 	equ	60

;loop count
lpCnt	dq	20
qSum	dq	0

section .text
global start
_Start:
mov	rcx, qword [lpCnt]
mov	rax, 5

sumLoop:
push	rbx
add	qword [qSum], rax
add	rax, 5
loop	sumLoop

last:
mov	rax,	 SYS_exit
mov	rdi,	 EXIT_SUCCESS
syscall
