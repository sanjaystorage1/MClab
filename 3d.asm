ORG 000H
MOV A, #00
BACK: ACALL DELAY
ADD A, #01H
DA A 
JNZ BACK
HERE: SJMP HERE
DELAY: MOV R1, #0FFH
DECR1: MOV R2, #0FFH
DECR: MOV R3, #0FFH
DJNZ R3, $
DJNZ R2, DECR
DJNZ R1, DECR1
RET
END