ORG 0000h           ; program start location 
BEGIN: MOV A, #00h  ; minimum value 
LCALL DELAY         ; call delay  
MOV A, #0FFh        ; maximum value 
LCALL DELAY         ; call delay  
LJMP BEGIN          ; do it continuously  
DELAY: MOV P1, A    ; 1 m/c  
MOV R0, #0FFH       ; 1 m/c 
HERE: DJNZ R0, HERE ; 2 m/c 
RET                 ; 2 m/c 
END                 ; end of program
