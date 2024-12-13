section .data
; define constants
EXIT_SUCCESS	 equ	 0
SYS_exit 	equ	60

lst	dd	101, 103, 105, 107

section .text
global start
_Start:

mov	rbx, lst
mov	rsi, 0
;mov	dword [lst], 0xabcdef65
mov	eax, dword [rbx+rsi*4]

mov	rsi, 1
mov	eax, dword [rbx+rsi*4]

mov	rsi, 2
mov	eax, dword [rbx+rsi*4]
;mov	byte [lst+rsi*4+0], 0x78
;mov	byte [lst+rsi*4+1], 0x56
;mov	byte [lst+rsi*4+2], 0x34
;mov	byte [lst+rsi*4+3], 0x12

mov	rsi, 3
mov	eax, dword [rbx+rsi*4]
;mov	byte [lst+rsi*4+0], 0xab
;mov	byte [lst+rsi*4+1], 0xcd
;mov	byte [lst+rsi*4+2], 0xef
;mov	byte [lst+rsi*4+3], 0x10

;mov	byte [lst+1], 0xef
;mov	byte [lst+2], 0xcd
;mov	byte [lst+3], 0xab

 
last:
mov	rax,	 SYS_exit
mov	rdi,	 EXIT_SUCCESS
syscall
