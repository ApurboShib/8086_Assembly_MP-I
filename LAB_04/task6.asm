.MODEL SMALL
.STACK 100H
.DATA
msg db "enter the character : $"

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

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

cmp bl,'y'
je answer

cmp bl,"Y"
je answer

answer:

mov ah,2
mov dl,bl
int 21h



;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN