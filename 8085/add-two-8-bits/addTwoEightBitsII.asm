	   MVI B,45  ; B <- 45

	   LDA 7980 ; A <-  7980's data
	   ADD B       ; A <- A+B 

	   STA 7980 ; 7980 <- A

	   HLT
