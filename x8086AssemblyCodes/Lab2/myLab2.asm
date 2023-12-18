; Kodun amaci, 1'den 255'e kadar olan sayilari hafizada saklayarak toplamak ve sonucu AX kaydinda tutmaktir. 
ORG 100h 
  
MOV CL,N    ;N degiskenini CL kaydina yukler. 
;DI, bellekte islem yapmak icin kullanilan bir indeks kaydidir.    
MOV DI,2000H ;DI (Destination Index) kaydini 2000H bellek adresine ayarlar.
MOV DS,DI    ;Let data segment 2000H. DS (Data Segment) kaydini DI kaydina ayarlar.

MOV DL,01H   ;we will start counting with 01h.Bu, sayilari 1'den baslatmak icin kullanilir.
MOV AX,0     ;donguden sonra cevabimiz ax'te gerceklesecek. Answer will be = {n.(n+1)/2}decimal.
             ;AX toplam gibi dusun.sonuc olarak toplami (SUM) tutar.
             
;bu etiket donguyu isaret eder.
MYLOOP:          
    ;in this loop we want to store all numbers(1,2,3,4...254,255) in the memory.
    ;After the storing data, last memory adress will be 20FE, value will be-> 255 in decimal = FF in hexadecimal.
    MOV [DI],DL   ; it will add our numbers one-by-one to memory.
    ;DL'deki degeri DI'nin isaret ettigi bellek adresine kopyalar.
    ;Bu, sayilari bellekte saklamak icin kullanilir.                               
    ADD AX,DX     ;SUM++.Bu, toplami hesaplar.AX kaydindaki degere DX (DL'nin kopyasi) ekler. 
    INC DL        ;i++
    INC DI        ;memoryAdress++
    
   
LOOP MYLOOP    ; Donguyu tekrarlamak icin kullanilir. 

MOV [2100h],AX  ;result = SUM
RET

N DB 255  ;DB harici DW var o 16 bit DB 8 bit.DBde AX,BX,CX,DX,AH,BH,AL,BL var.