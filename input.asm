	%include    'functions.asm'

	section	.data
prompt	db	"Enter your name: ", 0
output	db	"Hello, ", 0

	section .bss
buffer	resb	0xff		; Reserve 255 bytes for user input

	section	.text
	global	_start

_start:
	mov	rax, prompt
	call	sprint

	mov	rax, 0		; opcode 0 = read
	mov	rdi, 0		; 0 = stdin
	mov	rsi, buffer	; buffer to write to
	mov	rdx, 0xff	; # of bytes to read
	syscall

	mov	rax, output
	call	sprint

	mov	rax, buffer
	call	sprintln

	call 	exit
