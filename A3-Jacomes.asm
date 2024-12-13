section .data
; define constants
EXIT_SUCCESS	 equ	 0
SYS_exit 	equ	60


dVar1	dd	100000
dVar2	dd	200000
dResult	dd	0

section .text
global start
_Start:

; Addition
mov	eax,	dword [dVar1]
add	eax,	dword [dVar2]
mov	dword [dResult], eax

last:
mov	rax,	 SYS_exit
mov	rdi,	 EXIT_SUCCESS
syscall
