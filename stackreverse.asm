.model small
.stack 100h
.data
str1 db 'enter your String : ','$' 
newline db 0dh,0ah,'$'

.code                               

main proc
    mov ax,@data
    mov ds,ax
    mov ax,0000h 

mov cx,0d

lea dx,str1
mov ah,09h
int 21h

read:
mov ah,01h
int 21h
cmp al,0dh  ;stop when press enter
je stop
mov ah,00h
push ax        ;source is ax push it to stack
inc cx
jmp read

stop:
mov ah,09h
lea dx,newline
int 21h

mov ah,02h
print:
pop dx          ;source is stack pop to dx
int 21h
loop print
      

exit:
mov ah,04ch    
int 21h

main endp
end main