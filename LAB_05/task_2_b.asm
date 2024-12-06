.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

mov cx, 10
mov ax, 0

start:  

cmp cx, 0
je exit

add ax, cx

sub cx, 5


jmp start


exit:
;exit to DOS
;MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN