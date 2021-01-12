	   LXI H,2000 ; Loading starting souce destination
	   LXI D,3000 ; Loading starting destination location
	   MVI C,05	 ; Counter Register for looping 5 times

LOOP1:	   MOV A,M	; move source destination's data to A
	   STAX D	; write the data on destination mem location
	   
	   ; update for next iteration
	   INX H	
	   INX D	
	   DCR C	
	   JNZ LOOP1

	   HLT
