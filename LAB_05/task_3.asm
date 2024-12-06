.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

mov cx, 5

pass_write:  

mov ah, 1
int 21h

loop pass_write


mov ah, 2     ; carraige return
mov dl, 0dh
int 21h 
       
       
mov cx, 5
start:  


mov dl, '*'
mov ah, 2
int 21h

loop start







exit:
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN