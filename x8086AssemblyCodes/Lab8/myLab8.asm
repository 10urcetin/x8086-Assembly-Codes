
org 100h




Lea DX,MSG1
Mov AH,09H
INT 21H 


LEA SI, STR1
mov BX,SI
lea DI,STR1
Mov AH,01h  

;DI string uzunlugunu tutuyor.

Next: 

Int 21h
cmp AL,0DH
Je TERMINATE 
MOV [DI],AL     
INC DI
JMP NEXT

Terminate:

Pusher:
PUSH [SI]
INC SI
CMP SI,DI
JL Pusher
MOV SI,BX

Popper:
POP [BX]
INC BX
CMP BX,DI
JL Popper 
MOV AL,'$'
MOV [BX],AL
MOV DL,10;NEW LINE
MOV AH,02H
INT 21H
LEA DX,STR1
MOV AH,09H
INT 21H






ret 

MSG1 DB 10,'ENTER THE STRING:$'  
STR1 DB 50 DUP(0)




