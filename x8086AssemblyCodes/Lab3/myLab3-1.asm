; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov bx,2
mov cx,2
mov ax,number


loop2:
;if counter's square < number, then increment he counter
;if counter's square == number, then isSquare1
;if counter's square > number , then exit.
mul cx      ;ax registerindaki degeri cx registerindaki degerle carpar ve sonucu ax'e kaydeder.
            ; Bu, ax'in cx'e gore karesini bulmaya calisir.
cmp ax,bx   ;ax ve bx register'larini karsilastirir.
jz exit     ; Eger ax ve bx esitse (jz - jump if zero), program exit etiketine atlar
inc bx
inc cx 

loop loop2    ;cx registerindaki deger 0 olana kadar loop2 etiketine geri doner.



square:
mov issquare,1    ;Eger program jz exit durumuna dusmezse, issquare degiskenine 1 degerini atar.

exit:
ret

number dw 26
issquare db 0


ret

