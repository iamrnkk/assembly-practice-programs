	   LXI H,2150 ; store adress in H-L
	   MVI C,0A ; counter for looping 10 times
	   XRA A

LOOP1:	   CMP M ; compare memory location's data with A's data
	   JNC LOOP2 ; if no borrow is needed, then A is bigger
	   MOV A,M ; if borrow was needed then M is bigger so move it to A

LOOP2:	   ; update for next iteration
	   INX H
	   DCR C
	   JNZ LOOP1

	   MOV M,A ; store the largest number in next memory location
	   
  	   HLT
