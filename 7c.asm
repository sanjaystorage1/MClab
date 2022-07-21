ORG 000H
REPEAT: CPL P1.5
ACALL TIMERDELAY
SJMP REPEAT
TIMERDELAY: MOV TMOD, #01H ; timer zero mode1
MOV TL0, #034H ;value loaded to upcounter to generate appropriate delay.
MOV TH0, #076H
SETB TR0 ; start timer
L1: JNB TF0, L1 ; monitor for timer overflow
CLR TR0 ; stop timer
CLR TF0 ; clear overflow flag of the timer.
RET
LAST: SJMP $
END
