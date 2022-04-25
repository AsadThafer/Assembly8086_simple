;Write a program that check number even or odd 

.model small
.data
start db 'please enter your number : $'
evennum db 'This is an even number $'
oddnum db 'This is an odd number $'
notnum db 'This is not a number $'
newline db 0dh,0ah,'$'
.code
main proc
    mov ax,@data             
    mov ds,ax
    mov ax,0000h

lea dx,start
mov ah,09h         ;start string
int 21h 


mov ah,01h   ;enter number
int 21h 

sub al,30h

cmp al,09h        ;check if it's above 9h (not number)
JA  notnumber

cmp al,00h        ;check if it's below 0h (not number)
JB  notnumber

mov ah,00h         ; make ah =0h
mov bl,2d  ; bl = 2 decimal
div bl             
cmp ah,01h         ;cmp ah with 1 to check if it is an odd
JE oddnumber       ;if ah=1 then odd
JNE evennumber     ;if ah=0 then even
       
notnumber:           ;not a number
lea dx,newline
mov ah,09h
int 21h
 
lea dx,notnum
mov ah,09h
int 21h
jmp exit

oddnumber:
lea dx,newline      ; odd number
mov ah,09h
int 21h
 
lea dx,oddnum
mov ah,09h
int 21h
jmp exit

evennumber:
lea dx,newline
mov ah,09h          ; even number
int 21h
 
lea dx,evennum
mov ah,09h
int 21h
jmp exit


exit:
mov ah,4Ch          ;exit
int 21h
   
main endp
end main
