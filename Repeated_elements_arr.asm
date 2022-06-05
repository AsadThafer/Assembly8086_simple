.model small
.stack 100h
.data

str1 db 'enter array of length 6   ','$'
str2 db 'enter character to search :  ','$'
newline db 0dh,0ah,'$'
yourarray db 6 dup(?)
char db ?
repeatss db 'numberofrepeats =  ','$'


.code                               

main proc
    mov ax,@data
    mov ds,ax
    mov ax,0000h 
    
lea dx,str1
mov ah,09h
int 21h


mov cx,6d   
lea si,yourarray

input: 
mov ah,01h
int 21h
mov [si],al
inc si
loop input
           
lea dx,newline
mov ah,09h
int 21h           
           
lea dx,str2
mov ah,09h
int 21h

mov ah,01h
int 21h
mov char,al


mov cx,6d
mov bl,0d   
lea si,yourarray

compare: 
mov al,[si]
inc si
cmp al,char
jne skip

pluss:
inc bl 
skip:
loop compare


repeatssnum:

lea dx,newline
mov ah,09h
int 21h 
  
lea dx,repeatss
mov ah,09h
int 21h   

mov dl,bl
add dl,30h
mov ah,02h
int 21h 
       
exit:
mov ah,4ch    
int 21h

main endp
end main