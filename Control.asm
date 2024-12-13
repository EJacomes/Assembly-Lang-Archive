section .data
; define constants
EXIT_SUCCESS	 equ	 0
SYS_exit 	equ	60

section .text
global start
_Start:

mov	al,	-1
mov	bl,	1
cmp	al,	bl
ja	control
mov	cl,	1

control:
mov	bl,	255

cmp	al,	bl
ja	control
mov	cl,	3

jmp	control
 
last:
mov	rax,	 SYS_exit
mov	rdi,	 EXIT_SUCCESS
syscall
