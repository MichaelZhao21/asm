	%include    'functions.asm'

	section .data
msg	db	"Hello world!", 0xA, 0
msg2	db	"I can do rly cool things!!", 0xA, 0

	section	.text
	global	_start

_start:
	mov	rax, msg
	call	sprint

	mov	rax, msg2
	call	sprint

	call	exit
