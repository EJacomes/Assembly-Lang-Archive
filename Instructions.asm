section .data
; define constants
EXIT_SUCCESS	 equ	 0
SYS_exit 	equ	60

bVar1	db	17
bVar2	db	9
bResult	db	0

dVar	dd	1700
dVar2	dd	9000
dResult	dd	0

bnum1	db	5
wnum2	dw	-2000
dnum3	dd	100000

qnum	dq	1234567890
class 	db	"Assembly",0
twopi	dd	6.28
list1	dd	100001, -10002

section .text
global start
_Start:

; Addition
mov	al,	byte [bVar1]
add	al,	byte [bVar2]
mov	byte [bResult], al

mov	rax, bResult
mov	bl, byte [bResult]


last:
mov	rax,	 SYS_exit
mov	rdi,	 EXIT_SUCCESS
syscall
