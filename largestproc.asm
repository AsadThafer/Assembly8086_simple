.model small
.stack 100h
.data
number1 db 5h,8h,2h,6h,2h,7h
number2 db 1h,8h,9h,5h
largest_msg1 db 'the largest number in first array ','$'
largest_msg2 db 'the largest number in second array ','$'  
newline db 0dh,0ah,'$'

.code 

largestproc proc
    mov al,[si] ; si references to array
    dec cx
    inc si
    compare:
    mov ah,[si]
    cmp al,ah
    jg large
    mov al,ah
    
    large:
    inc si
    loop compare
    ret
    ;largest number stored in al
    largestproc endp                              

main proc
    mov ax,@data
    mov ds,ax
    mov ax,0000h 
   
    
    lea si,number1
    mov cx,6d
    call largestproc
    mov bl,al
    mov ah,09h
    lea dx,largest_msg1
    int 21h
    mov ah,02h
    mov dl,bl
    add dl,30h
    int 21h
    
    lea si,number2
    mov cx,4d
    call largestproc
    mov bl,al
    mov ah,09h
    lea dx,newline
    int 21h
    lea dx,largest_msg1
    int 21h
    
    mov ah,02h
    mov dl,bl
    add dl,30h
    int 21h

      

exit:
mov ah,04ch    
int 21h

main endp
end main