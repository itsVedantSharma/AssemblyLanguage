ORG 0000H
AGAIN:MOV A,#00H
UP:MOV P1,A
INC A
CJNE A,#0FFH,UP
MOV P1,#00H
SJMP AGAIN
END