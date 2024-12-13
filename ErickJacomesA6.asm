section .data
; define constants
EXIT_SUCCESS	 equ	 0
SYS_exit 	equ	60

;loop count
lpCnt	dq	20
qSum	dq	0

;makes the array
qArray times 20 dq 0

section .text
global start
_Start:
mov	rcx, qword [lpCnt]
mov	rax, 5
mov	r12,	0
mov	rbx,	0
mov	rbp,	qArray
sumLoop:
push	rax
add	qword [qSum], rax
add	rax, 5
loop	sumLoop

popLoop:
pop	rbx
mov	qword [rbp+r12*8], rbx
inc	r12
cmp	rbx, 0
jne	popLoop

last:
mov	rax,	 SYS_exit
mov	rdi,	 EXIT_SUCCESS
syscall
