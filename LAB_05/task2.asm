.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

mov ax,0
mov bx,1

start:
add ax,bx
add bx,3
cmp bx,148
jle start



;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN