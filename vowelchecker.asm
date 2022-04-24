.model small
.stack 100h 

.data
start db 'please enter your letter : $'

vowel db 'This is a Vowel $'
notvowel db 'This is not a Vowel $'
notchar db 'This is not a char $'   

newline db 0dh,0ah,'$'

.code
main proc
    mov ax,@data             
    mov ds,ax
    mov ax,0000h

lea dx,start
mov ah,09h    ;print start
int 21h 


mov ah,01h   ;enter your char
int 21h 


mov bl,al

cmp bl,40h
jbe notcharacter        ;not characters

cmp bl,7Bh
jae notcharacter     ;not characters

cmp bl,41h          ;A
JE vowelchar

cmp bl,45h          ;E
JE vowelchar
                    
cmp bl,49h          ;I
JE vowelchar

cmp bl,4Fh         ;O
JE vowelchar

cmp bl,55h        ;U
JE vowelchar


cmp bl,61h      ;a
JE vowelchar

cmp bl,65h      ;e
JE vowelchar

cmp bl,69h      ;i
JE vowelchar

cmp bl,6Fh      ;o
JE vowelchar

cmp bl,75h     ;u
JE vowelchar


JMP notvowelchar     ;else characters



notvowelchar: 
lea dx,newline
mov ah,09h
int 21h

lea dx,notvowel
mov ah,09h
int 21h
jmp exit


vowelchar:
lea dx,newline
mov ah,09h
int 21h

lea dx,vowel
mov ah,09h
int 21h
jmp exit



notcharacter:
lea dx,newline
mov ah,09h
int 21h

lea dx,notchar
mov ah,09h
int 21h
jmp exit


exit:
mov ah,4Ch
int 21h

main endp
end main
