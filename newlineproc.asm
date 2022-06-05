.model small
.stack 100h
.data
str1 db 'String1 ','$'
str2 db 'String2 ','$' 
str3 db 'String3 ','$'  
newline db 0dh,0ah,'$'

.code 

print_newline proc
    mov ah,02h
    mov dl,0ah
    int 21h 
    mov dl,0dh
    int 21h
    ret
    print_newline endp                              

main proc
    mov ax,@data
    mov ds,ax
    mov ax,0000h 
    mov ah,09h
    lea dx,str1
    int 21h 
       
    call print_newline 
    
    mov ah,09h
    lea dx,str2
    int 21h     
    
    call print_newline
    mov ah,09h
    lea dx,str3
    int 21h     
    
    call print_newline

      

exit:
mov ah,04ch    
int 21h

main endp
end main