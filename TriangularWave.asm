ORG 0000H
AGAIN:MOV A,#00H
UP:MOV P1,A
INC A
CJNE A,#0FFH,UP
DOWN:MOV P1,A
DEC A
CJNE A,#00H,DOWN
SJMP AGAIN
END