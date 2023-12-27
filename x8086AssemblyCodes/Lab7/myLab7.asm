
;Palindrome example

org 100h

START:

lea dx,MES
mov ah,09h
int 21h 
lea dx,MES2
mov ah,09h
int 21h
lea si,palindrome
lea di,palindrome  
mov ah,01h
TAKEINPUT:
int 21h
cmp al,0Dh
je INPUTEND
mov [di],al
inc di
jmp TAKEINPUT




INPUTEND:  
mov al,'$'
mov [di],al 


PALCAL:
dec di
mov al,[si]
cmp [di],al
jne NOTPAL
inc si
cmp si,di
jl PALCAL



PAL:
lea dx,PALMES
mov ah,09h
int 21h
jmp END



NOTPAL:
lea dx,NOTPALMES
mov ah,09h
int 21h




END:

ret 
MES DB 'Enter the string:$'
    NOTPALMES DB 10,13,'Not a palindrome:$'
    palindrome db 50 dup(0)                         



