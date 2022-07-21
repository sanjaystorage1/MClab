ORG 0000H ; program start location
MOV TMOD, #20H ; timer 1, mode 2(auto-reload)
MOV TH1, #0FDh ; 9600 baud rate
MOV SCON, #50H ; 8-bit, 1 stop, REN enabled
SETB TR1 ; start timer 1
MOV DPTR, #MYDATA ; DPTR points to message
BACK: CLR A ; clear Accumulator
MOVC A,@A+DPTR ; get the character
JZ last ; if last character gets out of this loop
ACALL SEND ; otherwise call transfer
LCALL DELAY ; call delay
INC DPTR ; next character
LJMP BACK ; keep sending characters 
last: LJMP $
SEND: MOV SBUF, A ; load the data, serial data transfer. ACC has the data 
HERE: JNB TI, HERE ; stay here until last bit of single character
CLR TI ; clear TI, to send next char
RET ; return to caller
ORG 0100H ; delay subroutine start location
DELAY: MOV R2, #0FFH
L2: MOV R3, #0FFH
L1: DJNZ R3, L1
DJNZ R2, L2
RET
ORG 0200H ; message start location 
MYDATA: DB "RNSIT BANGALORE ", 0
END
