.model small
.stack 100h
.data
str1 db 'assembly language $'     
str2 db ?
newline db 0dh,0ah,'$'


.code                               
main proc
mov ax,@data
mov ds,ax 
mov es,ax          ;new for movsb 
mov ax,0000h 

lea si,str1
lea di,str2
mov cx,18

copy:
lodsb    ; copy from si to al
stosb    ; copy from al to di
loop copy

mov al,'$'
stosb

lea dx,str2
mov ah,09h
int 21h



main endp
end main