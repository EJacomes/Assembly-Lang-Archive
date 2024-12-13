section .data
; define constants
EXIT_SUCCESS	 equ	 0
SYS_exit 	equ	60

bVar1	db	42
bVar2	db	73
wAns	dw	0
wAns1	dw	0

wVar1	dd	4321
wVar2	dd	1234
dAns2	dd	0

section .text
global start
_Start:

mov	al, byte [bVar1]
mul	al
mov	word [wAns],	ax

mov	al, byte [bVar1]
mul	byte [bVar2]
mov	word [wAns1],	ax

mov	ax, word [wVar1]
mul 	word [wVar2]
mov	word [dAns2],	ax
mov	word [dAns2+2],	dx

last:
mov	rax,	 SYS_exit
mov	rdi,	 EXIT_SUCCESS
syscall
