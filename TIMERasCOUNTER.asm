ORG 0000H
MOV TMOD,#06H
SETB P3.4
MOV TL0,#00H
MOV TH0,#00H
HERE:SETB TR0
BACK:MOV P1,TL0
JNB TF0,BACK
CLR TR0
CLR TF0
SJMP HERE
END