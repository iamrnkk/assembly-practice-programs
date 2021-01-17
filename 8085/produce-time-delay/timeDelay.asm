	   LXI B,003E  ; counter

LOOP1:	   DCX B          ; B-C <-  B-C -1 
	   MOV A,C      ; A <- C
	   ORA B          ;  A <- A OR B
	   JNZ LOOP1  ;  loop 003EH times

	   HLT
