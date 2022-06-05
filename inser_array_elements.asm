.model small
.stack 100h
.data

char db 6 dup(?) 
newline db 0dh,0ah,'$'

.code                               

main proc
    mov ax,@data
    mov ds,ax
    mov ax,0000h 


mov cx,6d    ;counter
lea si,char 
input:
mov ah,01h
int 21h
mov [si],al
inc si
loop input


lea dx,newline      ;new line
mov ah,09h
int 21h

mov cx,6d  

mov ah,02h
lea si,char
print:                       ;print loop
mov dl,[si]
int 21h
inc si
loop print

exit:
mov ah,4ch    
int 21h

main endp
end main