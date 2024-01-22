; ========== strlen(char* rax) -> len rax ==========
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

; ========== sprint(char* rax) -> void ==========
sprint:
	push	rax		; save rax
	call	strlen		; call the strlen function
	mov	rdx, rax	; rdx = len of str
	pop	rsi		; rsi = str addr
	
	mov 	rax, 1		; rax = 1 (write)
	mov	rdi, 1		; rdi = 1 (stdout)
	syscall			; WRITE STRING

	ret
	
; ========== exit() -> void ==========
exit:
	mov	rax, 0x3c	; rax = 60 (exit)
	mov	rdi, 0		; rdi = 0 (normal)
	syscall			; EXIT

	ret
