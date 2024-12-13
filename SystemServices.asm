section .data
EXIT_SUCCESS	equ	0
SYS_exit	equ	60


; Read one Character
STDIN	equ	0
SYS_read	equ	0
InChar	db	0

; Write char
STDOUT	equ	1
SYS_write	equ	1

section .text
global	_Start
_Start:
mov rax, SYS_read
mov rdi, STDIN
mov rsi, InChar
mov rdx, 1
syscall

add byte [InChar], 5
mov byte [InChar+1], 10

mov rax, SYS_write
mov rdi, STDOUT
mov rsi, InChar
mov rdi, 2
syscall

last:
	mov rax, SYS_exit
	mov rdi, EXIT_SUCCESS
	syscall
