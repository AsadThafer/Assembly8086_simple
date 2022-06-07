.model small
.stack 100h
.data
str1 db 'enter character : ','$' 
str1o db  'lowercase output is : ','$'
str2o db  'uppercase output is : ','$'  
newline db 0dh,0ah,'$'


.code                               
main proc
    mov ax,@data
    mov ds,ax  
    mov ax,0000h 

    lea dx,str1
    mov ah,09h
    int 21h
    
    
    mov ah,01h
    int 21h
    cmp al,60h
    jg toupper
    jl tolower
    
    
    tolower:
    mov bl,al
    lea dx,newline
    mov ah,09h
    int 21h
    lea dx,str1o
    mov ah,09h
    int 21h
    mov dl,bl
    or dl,20h      ;tolower
    mov ah,02h
    int 21h
    jmp exit
    
    toupper:
    mov bl,al
    lea dx,newline
    mov ah,09h
    int 21h
    lea dx,str2o
    mov ah,09h
    int 21h
    mov dl,bl
    and dl,0dfh   ;toupper
    mov ah,02h
    int 21h
    jmp exit
    
    
    
    exit:
    mov ah,4ch
    int 21h
    
    main endp
end main