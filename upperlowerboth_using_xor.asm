; Write a program that get a character and Convert from upper to lower if it upper or convert form lower to upper if it lower using xor

.model small
.data
str1 db 'Enter Your Character : ' , '$'
str2 db 'Your character is in LowerCase'  , '$'
str3 db 'its UpperCase is  : ' ,'$'
str4 db 'Your character is in UpperCase','$'
str5 db 'its LowerCase is  : ' , '$'  
newline db 0dh,0ah,'$'

.code                               

main proc
    mov ax,@data
    mov ds,ax
    mov ax,0000h 

lea dx,str1    ;welcome string
mov ah,09h
int 21h

mov ah,01h  ; enter your char
int 21h

mov cl,al   ; save the number

lea dx,newline   ;newline
mov ah,09h
int 21h 
lea dx,newline   ;newline
mov ah,09h
int 21h

cmp cl,60h  ;compare character
ja lowerin
jb upperin


lowerin:                       ;entered is in lowercase 

xor cl,20h    ; convert to upper 

lea dx,str2
mov ah,09h
int 21h

lea dx,newline   ;newline
mov ah,09h
int 21h

lea dx,str3        ; string
mov ah,09h
int 21h

mov dl,cl
mov ah,02h      ;print it
int 21h

jmp end

upperin:    ;entered is in uppercase
 
xor cl,20h    ; convert to lower 

lea dx,str4
mov ah,09h
int 21h

lea dx,newline   ;newline
mov ah,09h
int 21h

lea dx,str5        ; string
mov ah,09h
int 21h

mov dl,cl
mov ah,02h      ;print it
int 21h

jmp end

end:
mov ax,4ch
int 21h

main endp
end main
