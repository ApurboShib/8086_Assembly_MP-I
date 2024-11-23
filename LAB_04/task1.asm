;Take a number in AX, and if it’s a negative number, replace it by 5.

.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC

MOV AX,@DATA
MOV DS,AX
;enter your code here

mov ax, 4
neg ax  ; value take neg kore nilam

cmp ax,0
jl answer
jmp END

answer:
mov ax,5


;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN