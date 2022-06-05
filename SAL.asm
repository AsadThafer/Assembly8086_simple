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

mov bl,-8d ;F8h = 1111 1000
sal bl,1   ;      1111 0000

           

exit:
mov ah,4ch    
int 21h

main endp
end main