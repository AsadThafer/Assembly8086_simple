.model small
.data 
newline db 0dh,0ah,'$'
.code
main proc
    mov ax,@data
    mov ds,ax
    mov ax,0000h

mov cx,5d        ; number of outputs in loop in decimal
mov bl,0d         ; number to start with start in decimal

 
start:
mov ax,0000h
mov dx,0000h
mov dl,2d             
mov al,bl
div dl

cmp ah,01h  ;check if odd
jne even
je odd 
 
 

 
mov ah,4ch ;exit
int 21h
 
odd:
inc bl
jmp start 
 
even: 
mov dl,bl
add dl,30h  
mov ah,02h   ;print number          
int 21h 
inc bl
 
lea dx,newline   ;new line
mov ah,09h
int 21h
 

 
loop start  ;start of the loop
  

main endp
end main 

;Write a program to print the even numbers 
;from 0 to 9 using Loop instruction 
