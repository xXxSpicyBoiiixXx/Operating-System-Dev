;
; A simple boot sector program that demonstartes the stack
;

mov ah, 0x0e			; int 10/ah = 0eh 
				; -> Scrolling teletype BIOS routine 

mov bp, 0x8000			; Set the base of the stack a little 
mov sp, bp 			; above where BIOS loads our boot 
				; sector, hence we won't overwrite us.

push 'A' 			; Push some chars on the stack for later
push 'B'			; retrevial. These are push on as 16-bit
push 'C' 			; values, so the most significany byte 
				; will be added by our assembler as 0x00

pop bx				; We can only pop 16-bits, so pop to bx 
mov al, bl			; then copy bl to al 
int 0x10			; print(al) 

pop bx				; Pop the next value 
mov al, bl
int 0x10 			; print(al) 

mov al, [0x7ffe]		; To prove our stack grows downwards from
				; bp, fetch the char at 0x8000
int 0x10 			; print(al)

jmp $ 				; jmp forever 

; Padding and magic BIOS number 

times 510-($-$$) db 0 
dw 0xaa55
