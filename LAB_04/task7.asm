.MODEL SMALL
.STACK 100H
.DATA
msg db "enter a number : $"
odd db "Number is Odd $"
even db "Number is Even $"

mun db 15

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

mov al,[num]  ; quotient thakbe AL eh ans reminder thakbe AH eh.
mov ah,0
mov bl,2
div bl
mov bl,ah 

cmp bl,0
jne oddNumber

lea dx,[even]
mov ah,9
int 21H
jmp END

oddNumber:

lea dx,[odd]
mov ah,9
int 21H


;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN