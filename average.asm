ORG 0000h
LJMP main
ORG 0040h
main: MOV R0,#40H            
MOV R1,#4             
MOV R2,#00h
MOV A,R1                 
MOV R3,A
loop: MOV A,@ R0       
ADD A,R2
MOV R2,A         
INC R0
DJNZ R1, loop
MOV B,R3                 
MOV A,R2                 
DIV AB                   
MOV 50H,A                 
END