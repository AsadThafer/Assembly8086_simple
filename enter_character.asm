.model small
.stack 100h
.data
 
str1 db 'Enter a character : ','$'
str2 db 'Your Character is : ' , '$'
newline db 0dh,0ah,'$'

.code                               

main proc
    mov ax,@data
    mov ds,ax
    mov ax,0000h 
    
lea dx,str1
mov ah,09h      ;print str1
int 21h

mov ah,01h  ; enter char
int 21h

mov bl,al   ;save the char

lea dx,newline   ; new line
mov ah,09h      
int 21h

lea dx,str2   ;print str2
mov ah,09h
int 21h 

mov dl,bl
mov ah,02h   ; print char
int 21h   


main endp
end main