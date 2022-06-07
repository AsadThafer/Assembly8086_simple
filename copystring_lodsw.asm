.model small
.stack 100h
.data
s1 dw 'hello$'
s2 dw ?
.code                               
main proc
mov ax,@data
mov ds,ax 
mov es,ax          ;new for movsb 
mov ax,0000h 

mov cx,3d
lea si,s1
lea di,s2

cld

copy: 
lodsw

stosw

loop copy   
 
lea dx,s2 
mov ah,09
int 21h

main endp
end main    

