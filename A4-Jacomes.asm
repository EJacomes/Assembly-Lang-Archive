section .data
; define constants
EXIT_SUCCESS	 equ	 0
SYS_exit 	equ	60

lst	dw	100, 102, 104, 106

section .text
global start
_Start:

mov	rbx, lst
mov	rsi, 0
mov	ax, word [rbx+rsi*2]

mov	rsi, 1
mov	ax, word [rbx+rsi*2]

mov	rsi, 2
mov	ax, word [rbx+rsi*2]
;mov	byte [lst+rsi*4+0], 0x78
;mov	byte [lst+rsi*4+1], 0x56
;mov	byte [lst+rsi*4+2], 0x34
;mov	byte [lst+rsi*4+3], 0x12

mov	rsi, 3
mov	ax, word [rbx+rsi*2]
lea	rax, [rbx+rsi*2]
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
