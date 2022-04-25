;Write a program to print the numbers from 1 to 9 using Loop instruction.

.model small
.data
newline db 0dh,0ah,'$'
.code
main proc
    mov ax,@data
    mov ds,ax
    mov ax,0000h
    
mov cx,9d        ; number of repeats in decimal
mov bl,31h       ; my start number (31h) (1d)

print:          ;my label 
mov dl,bl
mov ah,02h      ; start printing
int 21h
inc bl
lea dx,newline  ;print newline
mov ah,9h
int 21h
loop print      ;loop of printing
   
main endp
end main 

;  max of 9 decimal can be done because it prints from 31h to 39h only can be modified in another method
