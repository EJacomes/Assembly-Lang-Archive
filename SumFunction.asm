section .data
; define constants
EXIT_SUCCESS	 equ	 0
SYS_exit 	equ	60

bVar1	db	17
bVar2	db	9
bResult	db	0

section .text

global sum
sum:
mov	al,	byte [bVar1]
add	al,	byte [bVar2]
ret

global _start
_Start:

call sum
mov	byte [bResult], al

last:
mov	rax,	 SYS_exit
mov	rdi,	 EXIT_SUCCESS
syscall
