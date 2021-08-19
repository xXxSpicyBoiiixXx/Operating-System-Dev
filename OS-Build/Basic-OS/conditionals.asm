cmp ax, 4			; compare the value in ax to 4 
je then_block 			; jump to then_block if they were equal
mov bx, 45			; otherwise, execute this code.... 
jmp the_end 			; jump over the then block so we don't also execute that code 

then_block:
	mov bx, 23
the end: 


; Condtionals 
je target			; jump if equal 
jne target			; jump if not equal 
jl target 			; jump if less than 
jle target 			; jump if less than or equal to
jg target 			; jump if great than 
jge target 			; jump if greater than or equal to 
