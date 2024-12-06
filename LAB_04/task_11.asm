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
sub al,30h 
mov bl, al  ;in bl

mov ah, 1
int 21h 
sub al,30h   
mov bh, al  ; in bh

mov ah, 1
int 21h 
sub al, 30h 
mov cl, al  ; in cl



mov al, bl
add al, bh
cmp al, cl
jl not_valid

mov al, bh
add al, cl
cmp al, bl
jl not_valid

mov al, cl
add al, bl
cmp al, bh
jl not_valid

jmp valid


valid:
mov dl,'y'
mov ah, 2
int 21h
jmp ext


not_valid: 
mov dl, 'N' 
mov ah, 2
int 21h














ext:
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN