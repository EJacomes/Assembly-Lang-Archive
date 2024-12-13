section .data
; define constants
EXIT_SUCCESS	 equ	 0
SYS_exit 	equ	60

;loop count
lpCnt	dq	10
sum	dq	0

section .text
global start
_Start:
mov	rcx, qword [lpCnt]
mov	rax, 1

sumLoop:
add	qword [sum], rax
add	rax, 1
;dec	rcx
;cmp	rcx, 0
;jne	sumLoop
loop	sumLoop

last:
mov	rax,	 SYS_exit
mov	rdi,	 EXIT_SUCCESS
syscall
