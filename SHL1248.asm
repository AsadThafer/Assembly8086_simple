.model small
.stack 100h
.data
 
newline db 0dh,0ah,'$'

.code                               

main proc
    mov ax,@data
    mov ds,ax
    mov ax,0000h 

mov cx,4d
mov bl,1d

print:
mov dl,bl
add dl,30h
mov ah,02h
int 21h
shl bl,1
loop print
      

exit:
mov ah,04ch    
int 21h

main endp
end main