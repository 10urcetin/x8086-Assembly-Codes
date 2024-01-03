ORG 100h

MOV AL,number
MOV BL,1 ;multiplication start
MOV CL,AL ; Counter

facto:
MUL BL  ;AL*BL =AX
INC BL  ;BL++
loop facto  ;Repeat the loop until CL becomes 0

MOV factorial,AL

RET
number DB 5 
factorial DW 0