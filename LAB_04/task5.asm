.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

msg db "enter a character : $"
A db "this is UpperCase latter"

lea dx,msg
mov ah,9
int 21H

mov ah,1
int 21H
mov bl,al

mov ah,2
mov dl,odh
int 21H
mov dl,odh
int 21H

cmp bl,'A'
jl not_upper

cmp bl,'Z'
jg not_upper

mov ah,2
mov dl,bl
int 21H
jmp END

not_upper:
lea dx,A
mov ah,9
int 21h



;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN