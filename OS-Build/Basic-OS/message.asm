;
; A simple boot sector that print a message to the screen using a BIOS routine
;

mov ah, 0x0e			; int 10/ah = 0eh -> scrolling teletype BIOS routine

mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10 
mov al, 'l'
int 0x10
mov al, 'o'
int 0x10

jmp $				; Jump to the current address (e.g. forever) 

;
; Padding and magic BIOS number
;

times 510-($-$$) db 0		; Pad the boot sector out with zeros

dw 0xaa55			; Last two bytes form the magic number,
				; this allows the BIOS knows that this is the boot sector
