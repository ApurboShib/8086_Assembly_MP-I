.MODEL SMALL
.STACK 100H
.DATA

a db ?
b db ?
c db ?

space db " $"

msg_Y db "Y$"
msg_N db "N$"

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here


mov ah,1
int 21h
sub al,48
mov [a],al

lea dx,[space]
mov ah,9
int 21h

mov ah,1
int 21h
sub al,48
mov [b],al

lea dx,[space]
mov ah,9
int 21h

mov ah,1
int 21h
sub al,48
mov [c],al

mov dl,0ah
mov ah,2
int 21h
mov dl,0dh
mov ah,2
int 21h

; (a+b)>c && (a+c)>b && (b+c)>a then "Y" else "N" 

;(a+b)>c
mov bl,[a]
add bl,[b]
cmp bl,[c]
jle print_N

;(a+c)>b
mov bl,[a]
add bl,[c]
cmp bl,[b]
jle print_N           

;(b+c)>a
mov bl,[b]
add bl,[c]
cmp bl,[a]
jle print_N

lea dx,[msg_Y]
mov ah,9
int 21h

jmp end

print_N:
lea dx,[msg_N]
mov ah,9
int 21h

end:

;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN