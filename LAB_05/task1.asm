.MODEL SMALL
.STACK 100H
.DATA

newline db 0dh, 0ah, '$'

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here  

mov cx, 85

start:



mov dl, '*'
mov ah, 2
int 21h

lea dx, newline
mov ah, 9
int 21h

loop start



exit:
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN