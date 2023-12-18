

; (F-32) *5 / 9
org 100h 

Mov CL,F
SUB CL,32 ;(F-32)   

MOV AL,5
MUL CL   ; (F-32)*5  AX=AL*CL 

MOV CL,9
DIV CL   ; AX'i CL'ye boldu.Bolum AL, kalan AH  

MOV C,AL
MOV BL,C


ret 

F DB 77
C DB ?



