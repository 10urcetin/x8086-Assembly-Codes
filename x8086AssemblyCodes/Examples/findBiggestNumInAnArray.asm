ORG 100h

main:
    mov si, 0
    mov al, arr[si]
    mov big, al
    mov cx, length

repeat:
    mov al, arr[si]
    cmp big, al
    jg swap
    jmp continue

swap:
    mov big, al

continue:
    inc si
    loop repeat

    ; Program sonlandýrma talimatlarý
    mov ah, 4ch
    int 21h
    RET

arr db 0, 9, 12, 23, 8, 10, 3, 7, 1, 2
big db ?
length dw $-arr
