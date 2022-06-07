.model small
.stack 100h
.data
str1 db 'AsadThafer','$'    
newline db 0dh,0ah,'$'


.code                               
main proc
    mov ax,@data
    mov ds,ax  
    mov ax,0000h 

    lea si,str1
    mov cx,15
    
    print:
    mov ax,[si]
    push ax  
    inc si 
    loop print 
    
    
    mov cx,15
    inpu:
    pop dx 
    mov ah,02h
    int 21h
    
    loop inpu
    
    main endp
end main