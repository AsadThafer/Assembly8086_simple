.model small
.stack 100h
.data

enter_msg db 'enter a string : $'
newline db 0dh,0ah,'$'
inputstr db 14 dup(?) ,'$'
outputstr db 14 dup(?),'$'

.code                               

main proc
    mov ax,@data
    mov ds,ax
    mov ax,0000h 

lea dx,enter_msg
mov ah,09h
int 21h

lea si,inputstr
mov cx,14d
mov ah,01h
readaninputstring:
int 21h
mov [si],al
inc si
loop readaninputstring 

lea dx,newline
mov ah,09h
int 21h 


lea si,inputstr
mov cx,14d
lea di,outputstr

copytoutputstring:
mov bl,[si]
mov [di],bl
inc si
inc di
loop copytoutputstring 

print:lea dx,outputstr
mov ah,09h
int 21h



exit:
mov ah,4ch    
int 21h

main endp
end main