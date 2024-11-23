.MODEL SMALL
.STACK 100H
.DATA

space db " $"

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here
 
mov bl,128 ;80h
mov cl,255 ;FFh
mov bh,0 

start: 
mov dl,bl
mov ah,2
int 21h
lea dx,[space]
mov ah,9
int 21h
inc bh

cmp bh,10
je newline
jmp not_newline

newline:
mov dl,0ah
mov ah,2
int 21h
mov dl,0dh
mov ah,2
int 21h
mov bh,0

not_newline:
inc bl
cmp bl,cl
jle start


;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN