.model small
.stack 100h
.data
newline db 0dh,0ah,'$'

.code                               
main proc
    mov ax,@data
    mov ds,ax
    mov ax,0000h 

mov ah,01h  ; enter first number
int 21h

mov bl,al   ; save the number

mov dx,'+'     ; print +
mov ah,02h
int 21h


mov ah,01h  ; enter second number
int 21h

mov cl,al   ;save the number

mov dx,'='     ; print =
mov ah,02h
int 21h


add cl,bl     ; add operation
sub cl,30h    ; convert to number

mov dl,cl      
mov ah,02h     ; print the answer
int 21h

main endp
end main

;Simple calculator
