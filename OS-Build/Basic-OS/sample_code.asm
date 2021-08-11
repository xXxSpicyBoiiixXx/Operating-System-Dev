mov ax, 1234			; store the decimal number 1234 in ax 
mov cx, 0x234			; store the hex number 0x234 in cx
mov dx, 't'			; store the ASCII code for letter 't' in dx
mov bx, ax			; copy the balue of ax into bx, making bx == 1234

mov ax, 0 			; ax -> 0x0000 (in hex) 
mov ah, 0x56			; ax -> 0x5600 
mov al, 0x23			; ax -> 0x5623
mov ah, 0x16			; ax -> 0x1623

