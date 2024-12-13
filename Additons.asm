section .data
; define constants

EXIT_SUCCESS	equ	0
SYS_exit	equ	60

bVar1	db	17
bVar2	db	9
bResult	db	0

; Addition
mov	al,	byte [bVar1]
add	al,	byte [bVar2]
mov	byte [bResults], al

last:
mov	rax,	SYS_exit
mov	rdl,	EXIT_SUCCESS
syscall
