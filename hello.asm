	section .data
msg	db	"Hello world!", 0	; Assign msg var with message
len dw	13

	section	.text
	global	_start

_start:
	mov	rax, 1			; write op = 1
	mov	rdi, 1			; fd 1 = stdout
	mov	rsi, msg		; put msg addr to buffer
	mov	rdx, [len]		; msg length
	syscall

	mov 	rax, 0x3c	; exit op = 60
	mov	rdi, 0			; 0 status code
	syscall
