.model small
.stack 100h
.data

str1 dw '','$' 
newline db 0dh,0ah,'$'

.code                               

main proc
    mov ax,@data
    mov ds,ax
    mov ax,0000h 

mov ax,10d
mov bl,5d 

div bl


add ax,30h
mov dx,ax
mov ah,02h
int 21h







main endp
end main