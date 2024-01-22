	section	.data
msg	db	"Hello world number 2!", 0

	section	.text
	global	_start

_start:
	mov	rax, msg	; arg0 = msg
	call	strlen		; strlen(msg)
	mov 	rcx, rax	; rcx = return val

	mov	rax, 1		; Write str to output
	mov	rdi, 1
	mov	rsi, msg
	mov	rdx, rcx
	syscall

	mov	rax, 0x3c	; Exit
	mov	rdi, 0
	syscall

; =========== strlen(*char rax) -> len rax ===========

strlen:
	dec	rax		; msg addr--
	mov	rcx, -1		; count = -1

count_loop:
	inc	rax		; msg addr++
	inc	rcx		; count++
	cmp	byte [rax], 0	; if *rax == 0 set flag
	jne	count_loop

	mov	rax, rcx	; rax = count
	ret
