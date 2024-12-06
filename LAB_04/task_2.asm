.MODEL SMALL
.STACK 100H
.DATA


.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here  

mov ah, 1 
int 21h
mov bl, al


mov ah, 1
int 21h


cmp bl, al
jl print_bl

cmp al, bl
jl print_al


print_bl: 
mov dl, bl
mov ah, 2
int 21h
jmp ext

print_al:
mov dl, al
mov ah, 2
int 21h

ext:
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN