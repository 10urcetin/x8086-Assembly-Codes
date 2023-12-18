
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV BL,number1
MOV BH,number2
CMP BL,BH

JG GREATER
JL LOWER
JE EQUAL


GREATER:
    MOV AL,number1
    MOV DL,number2
    JMP MYLOOP
    
LOWER:
    MOV AL,number2
    MOV DL,number1
    JMP MYLOOP
    
EQUAL:
    JMP EXITEQUAL    
    
    MYLOOP:
        MOV AH,0
        DIV DL
        CMP AH,0
        JE EXIT
        COUNTUINE:
            MOV AL,number2
            MOV DL,AH;
            
    JMP MYLOOP
        
    EXIT:
        MOV GCD,DL
        JMP FINALEXIT
        

EXITEQUAL:
    MOV AL,number1
    MOV GCD,AL
    
FINALEXIT:    
ret

number1 DB 12;
number2 DB 28;
GCD DB 0;


