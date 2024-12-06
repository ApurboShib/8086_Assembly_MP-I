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



mov ax, 0  ; product

mov cx, 2  ; m
mov bx, 3  ; n


start:  


add ax, bx
dec cx

cmp cx, 0
jne start




add al, '0'

mov dl, al
mov ah, 2
int 21h











exit:
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN