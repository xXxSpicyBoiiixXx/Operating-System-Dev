;
; A simple boot sector program that demonstrates addressing. 
;

mov ah, 0x0e			; int 10/ah = Oeh -> scrolling teletype 
				; 		     BIOS routine 

; First attempt <----- Fails
; This attempt tries to load the immediate offset into al as the 
; character to print. We watned to print the character at the offset rather than
; the offset itself.  
mov al, the_secret
int 0x10			

; Second attempt <-------- Fails 
; The square brackets remedy the first issue, where we instruct the CPU 
; to store the contents of an address. This fails because the CPU
; treats the offset as it started from memory instead of the start 
; address of our loaded code.  
mov al, [the_secret] 
int 0x10 

; Third attempt <--------- Works
; In this we add the offset the_secret to the address that we believe 
; BIOS to have loaded out code, 0x7c00, using the CPU add instruction
; so we get that bx = bx + 0x7c00. We have calculated the correct 
; memory address of our 'X' and can store the contents of that address
; in al, ready for the BIOS print function, with the instruction 
; mov al, [bx] 
mov bx, the_secret
add bx, 0x7c00
mov al, [bx]
int 0x10 

; Fourth attempt <--------- Works
; A bit more clever, We can precalculate the address of the 'X' after
; the boot sector is loaded into memory by BIOS. We arrive at the address 
; 0x7c1e based on our eariler examination of the binary code. This showed
; 'X' was 0x1e (30) bytes from the start of our boot secort
mov al, [0x7c1e]
int 0x10 

jmp $ 			; Jumps forever

the_secret: 
	db "X"

; Padding and magic BIOS number. 
times 510-($-$$) db 0
dw 0xaa55
