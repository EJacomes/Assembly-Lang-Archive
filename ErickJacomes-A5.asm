section .data
; define constants

EXIT_SUCCESS	equ	0
SYS_exit	equ	60

a	db	0xA5
b	db	0xB3
wResult	dw	0

section	.text
global _start
_start:

mov	al,	byte [a]
or	al,	byte [b]

mov	bl,	byte [a]
and	bl, 	byte [b]
add	bl,	al
mov	al,	bl

mov	cl,	byte [a]
shr	cl,	1
sub	cl,	al
mov	al,	cl

mov	dl,	byte [b]
sar	dl,	2
add	dl,	al
mov	al,	dl
mul	al
mov	word [wResult], ax

last:
mov	rax,	SYS_exit
mov	rdi,	EXIT_SUCCESS
syscall


