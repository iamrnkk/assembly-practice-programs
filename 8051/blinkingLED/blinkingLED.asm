	    ORG 0000H
LOOP:	CPL P1.0    ; complement data of port 1 bit 0
	    LCALL DELAY ; generate delay
	    SJMP LOOP   ; complement(ON/OFF) P1.0 infinitely till power supply is ON 


	    ORG 0100H
DELAY:	MOV R0, #02H     ; R0 <- 02H
REPEAT:	MOV R1, #250D    ; R1 <- 250D
D1:	    DJNZ R1, D1      ; R1 <- R1-1 250(R1) times
	    DJNZ R0, REPEAT  ; Repeat the whole process 2(R0) times
	    RET
	    END