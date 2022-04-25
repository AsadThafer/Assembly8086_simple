;print a square of stars 5*4

.model small
.data
l dw 5
w dw 4
newline db 0dh,0ah,'$'
.code
main proc
    mov ax,@data
    mov ds,ax
    mov ax,0000h
    
loop1:
mov cx,l    ;outer loop  (number of stars)
loop2:
mov dl,'*'    ;inner loop 
mov ah,02h
int 21h

loop loop2

lea dx,newline
mov ah,09h
int 21h
mov cx,w
dec w

loop loop1
    
main endp
end main 
