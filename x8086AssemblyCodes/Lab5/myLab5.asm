org 100h

#start=Emulation_Kit.exe# 

      MOV DI, 0
      
MAINLOOP:
      MOV DX, 2000h  ;first DOT matrix digit
      ADD DX, DI
      
      MOV BX,0
      
PRINT:

      MOV SI, 0
      MOV CX,5
      
      CMP DX, 2027H
      JLE NEXT
      MOV DX,2000H
      
NEXT:
      MOV AL, Dots[BX][SI]
      OUT DX, AL ;matrixe output vermek 
      INC SI
      INC DX
      
      CMP SI, 5
      LOOPNE NEXT
     
      
      ADD BX, 5
      CMP BX, 40
      JL PRINT
      
      
      MOV CX,0FFH
      WAIT:
      LOOP WAIT
      
      ADD DI, 5 
      CMP DI,35
      JLE MAINLOOP
      MOV DI, 0
      JMP MAINLOOP


ret
dots DB	00011000b, 00111100b, 01111000b, 00111100b, 00011000b  ;      
     DB	00111110b, 01000001b, 01000001b, 01000001b, 00100010b  ; C 
     DB 01111110b, 00001001b, 00001001b, 00001001b, 01111110b  ; O
     DB 01111111b, 00001001b, 00001001b, 00001001b, 01110110b  ; R
     DB	01111110b, 00001001b, 00001001b, 00001001b, 01111110b  ; U
     DB	01111111b, 00001001b, 00001001b, 00001001b, 01110110b  ; M  
     DB	00011000b, 00111100b, 01111000b, 00111100b, 00011000b  ;