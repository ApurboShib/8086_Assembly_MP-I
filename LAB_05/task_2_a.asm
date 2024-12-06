.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

mov cx, 1
mov ax, 0

start:  

cmp cx, 10
jg exit

add ax, cx

add cx, 3


jmp start


exit:
;exit to DOS
;MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN