.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

mov ax,3
mov ax,0

jl negative
je zero

mov bx,ax
jmp END

negative:
mov bx,-1
jmp END

zero:
mov bx,0
END


;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN