.MODEL SMALL
.STACK 100H
.DATA

pass db "XXXXX$"

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

mov cx,5

start:
mov ah,1
int 21h
loop start

mov dl,0ah
mov ah,2
int 21h
mov dl,0dh
mov ah,2
int 21h

lea dx,[pass]
mov ah,9
int 21h

;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN