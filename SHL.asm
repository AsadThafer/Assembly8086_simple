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

mov bl,80h ;1000 0000
shl bl,1

           ;bl will be 0000 0000

exit:
mov ah,4ch    
int 21h

main endp
end main