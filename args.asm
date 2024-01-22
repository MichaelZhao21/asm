	%include    'functions.asm'

	section	.text
	global	_start

_start:
	pop	rbx		; # of arguments

loop_args:
	cmp	rbx, 0		; counter == 0
	jz	done		; if so, exit
	pop	rax		; Load the next arg to rax
	call	sprintln	; Print
	dec	rbx		; rcx--
	jmp	loop_args	; loop

done:
	call	exit
