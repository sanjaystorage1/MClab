ORG 0000h  
CLR C 
MOV A, 40h 
CJNE A, #40h, NOT_EQ  
NOT_EQ: JNC LESS37  
CLR C 
SUBB A, #30h 
LJMP STORE  
LESS37: SUBB A, #37h 
STORE: MOV 42h, A 
END 
