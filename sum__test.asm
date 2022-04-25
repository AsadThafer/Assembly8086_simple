.model small
.stack 100h
.data

.code
main proc
    mov ax,@data                 ; 5 - 2 + 3 * 6 / 2 = 12
    mov ds,ax
    mov ax,0000h

mov al,3            ;3
mov cx,0000h
mov cl,6               
mul cl              ;3*6=18 

mov bl,2
div bl              ;18/2 =9 

mov bl,5
add al,bl           ;9+5=14  

sub al,2            ; 14-2=12 
aaa
mov bx,ax
add bx,3030h

mov dl,bh
mov ah,2h
int 21h

mov dl,bl
mov ah,2h
int 21h


main endp
end main

;What is the result of this expression? 5 - 2 + 3 * 6 / 2  Write an assembly instructions for computing the result
