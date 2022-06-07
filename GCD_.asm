.model small
.stack 100h
.data
a dw 9
b dw 96
.code

main proc
    mov ax,@data
    mov ds,ax
    mov ax,0000h
    
    mov cx,0
    x:
    inc cx
    cmp cx,a
    ja exit
    cmp cx,b
    ja exit
    
    mov dx,0
    mov ax,a
    div cx
    cmp dx,0
    je next
    jmp x
    
    
    next:
    mov dx,0
    mov ax,b
    div cx
    cmp dx,0
    jne x
    mov bx,cx
    jmp x
    
    exit:
    mov dx,bx
    
    
    call print
    
    mov ah,4ch
    int 21h
    
    print proc
        push dx
        shr dl,4
        call hexa2asci
        mov ah,02h
        int 21h
        pop dx
        and dl,0fh
        
        call hexa2asci
        mov ah,02h
        int 21h
        print endp
    
    hexa2asci proc
        cmp dl,9
        ja abcdef
        add dl,30h
        ret
        abcdef:
        add dl,37h
        ret
        hexa2asci endp
    
end main

