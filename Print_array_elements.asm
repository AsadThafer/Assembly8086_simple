.model small
.stack 100h
.data

numbers db 1,2,3,4,5   
newline db 0dh,0ah,'$'

.code                               

main proc
    mov ax,@data
    mov ds,ax
    mov ax,0000h 

mov cx,5d    ;numbers long
lea si,numbers
mov ah,02h
print:
mov dl,[si]
add dl,30h
int 21h
inc si
loop print

exit:
mov ah,4ch    
int 21h

main endp
end main