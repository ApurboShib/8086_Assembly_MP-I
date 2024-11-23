.MODEL SMALL
.STACK 100H
.DATA

is_div db " The number is divisible by 5 and 11$"
is_not_div db " The number is not divisible by 5 and 11$"

n db 25

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

mov al,[n]
mov ah,0
mov bl,5
div bl

cmp ah,0  
jne not_divisible

mov al,[n]
mov ah,0
mov bl,11
div bl

cmp ah,0
jne not_divisible

lea dx,[is_div]
mov ah,9
int 21h
jmp end

not_divisible:
lea dx,[is_not_div]
mov ah,9
int 21h

end:

;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN