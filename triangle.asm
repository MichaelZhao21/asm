	global	_start

	section	.text
_start:
	mov	rdx, output     ; ptr to output array
        mov     r8, 1           ; row length
        mov     r9, 0           ; current row length

line:
        mov     byte [rdx], '*'
        inc     rdx             ; arr addr++
        inc     r9              ; current row length++
        cmp     r9, r8          ; See if line is full
        jne     line            ; Loop if not

lineDone:
        mov     byte [rdx], 10  ; Newline char (LF)
        inc     rdx             ; addr++
        inc     r8              ; Next line has 1 more char
        mov     r9, 0           ; Reset curr row count
        cmp     r8, maxlines    ; See if we are on last line
        jne     line            ; Loop if not

done:
        mov     rax, 1          ; Write opcode
        mov     rdi, 1          ; Write to stdout
        mov     rsi, output     ; Move output to rsi
        syscall

        ; exit
        mov     rax, 60
        xor     rdi, rdi
        syscall

	section .bss
maxlines	equ	8 
dataSize	equ	44
output:		resb	dataSize

