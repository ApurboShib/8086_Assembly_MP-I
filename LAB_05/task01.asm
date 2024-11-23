.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

mov cx,80

mov bl,'*'

start:
mov dl,bl
mov ah,2
int 21h 

mov dl,0ah
mov ah,2
int 21h
mov dl,0dh
mov ah,2
int 21h

loop start

;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN