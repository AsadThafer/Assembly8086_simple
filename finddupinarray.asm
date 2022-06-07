.stack 100h
.data
arr db 1,2,3,4,5,6,7
str db 'enter a number : $'
ex db 'Exist $'
notex db 'Not Exist $'
newline db 0dh,0ah,'$' 
.code                               
main proc
    mov ax,@data
    mov ds,ax 
    mov ax,0000h 
    
    lea dx,str
    mov ah,09h
    int 21h
    mov ah,01h
    int 21h
    sub al,30h
    
    mov si,offset arr
    mov cx,7d
    check:
    cmp al,[si]
    je l1
    inc si
    loop check
    
    mov ah,09h
    lea dx,newline
    int 21h
    mov ah,09h
    lea dx,notex
    int 21h
    jmp exit
    
    
    l1: 
    mov ah,09h
    lea dx,newline
    int 21h
    
    mov ah,09h
    lea dx,ex
    int 21h
    jmp exit
    
    
    exit:
    mov ah,4ch
    int 21h
    
main endp
end main    

ret