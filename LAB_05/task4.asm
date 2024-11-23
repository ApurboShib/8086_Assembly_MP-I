.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

mov ax,5
mov bx,4
mov cx,0

start:
add cx,ax
dec bx
cmp bx,0
jg start


;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN