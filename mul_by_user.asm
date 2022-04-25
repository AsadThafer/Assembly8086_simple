.model small
.stack 100h
.data

.code
main proc
    mov ax,@data                
    mov ds,ax
    mov ax,0000h

mov ah,01h        ;enter first number
int 21h

mov bl,al        ;save the number
sub bl,30h

mov dl,'*'      ;print *
mov ah,02h
int 21h

mov ah,01h  ;enter second number
int 21h         

mov cl,al        ;save the number
sub cl,30h

mov dl,'='      ;print =
mov ah,02h
int 21h  

mov ax,0000h

mov al,cl      ;moved second number to al
mul bl         ;multiplied al by bl
aam            ;aam method 
mov bx,ax      ;moved ax to bx to assure no problem in code
add bx,3030h   ;add 30 30 h to bx to print real numbers
mov dl,bh      ;print bh
mov ah,02h
int 21h

mov dl,bl      ;print bl
mov ah,02h
int 21h                    ;note : the full answer saved in bx

main endp
end main

;Write a program allow user to enter two number and print Multiplication
