.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

mov al,4
cmp al,1 ; check korbo je 1 kina?
je printZero

cmp al,3
je printZero   ;al zero kina?

cmp al,2
je printEven

cmp al,4
je printEven
jmp END

; printing 

printZero:
mov dl,'0'
mov ah,2
int 21H

printEven:
mov dl,'E'
mov ah,2
int 21H


;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN