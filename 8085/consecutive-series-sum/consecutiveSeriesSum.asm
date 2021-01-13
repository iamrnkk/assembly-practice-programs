; writing data from C000 to C00E
; (you can do this directly/manually, no need to write this)
	   LXI D,C000
	   MVI A,01
	   MVI C,0F

LOOP:	   STAX D
	   INX D
	   INR A
	   DCR C
	   JNZ LOOP

; main program starts from here
	   LXI H,C000; load data from first mem location 
	   MVI C,00; C will store all the carry generated (if any) or you can say if addition results in more than 8 bit number
	   MVI B,0F 
	   XRA A

LOOP1:	   ADD M 
	   JNC LOOP2 ; if no carry generated then skip INR C
	   INR C

LOOP2:	   ; update for next iteration
	   INX H
	   DCR B
	   JNZ LOOP1

	   STA C100 ; store result
	   MOV A,B
	   STA C101; store no of carry generated

	   HLT