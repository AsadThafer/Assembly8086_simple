.model small
.stack 100h
.data
str1 db 'assembly language ','$'     
newline db 0dh,0ah,'$'


.code                               
main proc
mov ax,@data
mov ds,ax  
mov ax,0000h 

lea si,str1
add si,17
mov cx,18
inc cx

std 
mov ah,02h
copy:
lodsb
mov dl,al
int 21h
loop copy



main endp
end main