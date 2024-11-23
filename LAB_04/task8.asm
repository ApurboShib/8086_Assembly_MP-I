.MODEL SMALL
.STACK 100H
.DATA
msg db "enter ant alphabet : $"
v db "This is vowel $"
c db "This is consonent $"
i db "this is invalid $ "
.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

lea dx,[msg]
mov ah,9
int 21H

mov ah,1
int 21H
mov bl,al

mov dl,odh
mov ah,2
int 21H
mov dl,0dh
mov ah,2
int 21H

cmp bl,'A'
jl invalid  ; bl<65

cmp bl,'2'
jg check_small  ; bl>90

cmp bl,'A'
je vowel
cmp bl,'E'
je vowel
cmp bl,'I'
je vowel
cmp bl,'O'
je vowel
cmp bl,'U'
je vowel

jmp consonent

consonant:
lea dx,[c]
mov ah,9
int 21h
jmp end

vowel:
lea dx,[v]
mov ah,9
int 21h
jmp end

invalid:
lea dx,[i]
mov ah,9
int 21h

end:


;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN