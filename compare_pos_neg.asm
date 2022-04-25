;Write a program that allow user to enter a number and print positive, negative or Zero ?

.model small 
.data
start db 'please enter your integer : $'
newline db 0dh,0ah,'$'
numpos db 'positive$'
numnega db 'negative$'
zero db 'Zero$'

.code
main proc
    mov ax,@data             
    mov ds,ax
    mov ax,0000h

lea dx,start
mov ah,09h
int 21h 

mov ah,01h   ;enter number
int 21h 

mov bl,al
sub bl,30h 
cmp bl,00h  ;cmp with zero
lea dx,newline
mov ah,09h
int 21h
JG positivenum
cmp bl,00h
jL negativenum

mov ah,09h
lea dx,zero
int 21h

exit:
mov ah,4Ch
int 21h

positivenum: 
lea dx,numpos
mov ah,09h
int 21h
jmp exit        
        
negativenum: 
lea dx,numnega
mov ah,09h
int 21h
jmp exit

main endp
end main
