	   LDA 2301 	 ; load 1st number from mem
	   
	   ; move the 1st Number to D-E pair
	   MOV E,A       ; transfer 8 bit data
	   MVI D,00      ; reset D, D <- 00

	   LDA 2302      ; Load 2nd Number to A
	   MOV C,A       ; Move 2nd Number to C

LOOP1: DAD D         ; H-L <- H-L + D-E 
	   DCR C 		 ; update 
	   JNZ LOOP1     ; Add 1st Number , C(2nd Number) times

	   SHLD 2304     ; store the multiplication in mem

	   HLT
