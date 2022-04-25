;assembly code to use aaa(Adjust After Addition),aas(Adjust After subtraction),aam(Adjust After multiplication),aad(Adjust before division) .. inputs in code
.model small
.data
str1 db 'this is the summation answer : ' ,'$'
str2 db 'this is the subtraction answer : ' ,'$'
str3 db 'this is the Multiplication answer : ' ,'$'
str4 db 'this is the Division answer : ' ,'$' 
newline db 0dh,0ah,'$'

.code                               

main proc
    mov ax,@data
    mov ds,ax
    mov ax,0000h 

summation :

mov al,7
add al,8
aaa

mov cx,ax
add cx,3030h 

lea dx,str1
mov ah,09h
int 21h

mov dl,ch
mov ah,02h
int 21h 

mov dl,cl
mov ah,02h
int 21h

subtraction :

lea dx,newline
mov ah,09h
int 21h

mov ax,0000h
mov bx,0000h
mov al,8
sub al,2
aas

mov bx,ax
add bx,3030h

lea dx,str2
mov ah,09h
int 21h


mov dl,bh
mov ah,02h
int 21h



mov dl,bl
mov ah,02h
int 21h

multiplication:

lea dx,newline
mov ah,09h
int 21h

lea dx,str3
mov ah,09h
int 21h

mov ax,0000h

mov al,6
mov bl,3
mul bl
aam

mov bx,0000h

mov bx,ax

add bx,3030h

mov dl,bh
mov ah,02h
int 21h

mov dl,bl
mov ah,02h
int 21h


division :

lea dx,newline
mov ah,09h
int 21h

lea dx,str4
mov ah,09h
int 21h

mov ax,0000h

mov al,5
mov bl,1 
div bl
aad
mov bx,0000h
mov bx,ax
add bx,3030h

mov dl,bh
mov ah,02h
int 21h

mov dl,bl
mov ah,02h
int 21h

main endp
end main
