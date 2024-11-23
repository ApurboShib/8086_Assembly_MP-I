.MODEL SMALL
.STACK 100H
.DATA

enter db "ENTER A HEX DIGIT: $"
again db "DO YOU WANT TO DO IT AGAIN? $"
res db "IN DECIMAL IT IS $"
invalid db "ILLEGAL CHARACTER - ENTER 0...9 OR A...F: $"  

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here


start:
; enter
lea dx,[enter]
mov ah,9
int 21h

mov ah,1
int 21h
mov bl,al

comp:
mov dl,0ah
mov ah,2
int 21h
mov dl,0dh
mov ah,2
int 21h

cmp bl,48 ;0
jl invalid_hex
cmp bl,57 ;9
jg comp2

lea dx,[res]
mov ah,9
int 21h

mov dl,bl
mov ah,2
int 21h

jmp valid_hex

comp2:
cmp bl,'A'
jl  invalid_hex
cmp bl,'F'
jg  invalid_hex
sub bl,17

lea dx,[res]
mov ah,9
int 21h

mov dl,49
mov ah,2
int 21h

mov dl,bl
mov ah,2
int 21h

jmp valid_hex  

invalid_hex:
lea dx,[invalid]
mov ah,9
int 21h
mov ah,1
int 21h
mov bl,al
jmp comp


valid_hex:
mov dl,0ah
mov ah,2
int 21h
mov dl,0dh
mov ah,2
int 21h

; again
lea dx,[again]
mov ah,9
int 21h

mov ah,1
int 21h

cmp al,'y'
jne check_Y
jmp endl
check_Y:
cmp al,'Y'
jne end

endl:
mov dl,0ah
mov ah,2
int 21h
mov dl,0dh
mov ah,2
int 21h

jmp start

end:


;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN