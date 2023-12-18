
org 100h
cmp number,1
je end
cmp number,2  
je primenumber 
    
mov cx,number
sub cx,2
mov bh,2

loop1: 
    cmp cx, 1     
    je end
    mov ax,number   
    div bh    
    cmp ah,0
    je end
    inc bh
    loop loop1  
    primenumber:
    mov isprime,1
    end:
       

ret 

isprime db 0
number dw 5



