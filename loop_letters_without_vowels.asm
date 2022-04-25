;Write a program to print the characters from a to z except ( a, e, i, o, u ) using Loop instruction.

.model small
.data 
newline db 0dh,0ah,'$'
.code
main proc
    mov ax,@data
    mov ds,ax
    mov ax,0000h

mov cx ,21D        ; number of letters without vowels
mov bl,'b'         ; first letter to start with
 
start:
 
cmp bl,'e'         ;compare with e (vowel)
je move
 
cmp bl,'i'         ;compare with i (vowel)
je move
 
cmp bl,'o'         ;compare with o (vowel)
je move

cmp bl,'u'         ;compare with u (vowel)
je move 
 
mov dl,bl  
mov ah,02h   ;print letter
int 21h
 
inc bl
 
lea dx,newline   ;new line
mov ah,09h
int 21h
 
 
loop start
 
mov ah,4ch ;exit
int 21h
 
move:
inc bl
jmp start  

main endp
end main 
