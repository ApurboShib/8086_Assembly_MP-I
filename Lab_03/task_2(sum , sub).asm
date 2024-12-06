
.MODEL SMALL
.STACK 100H
.DATA

a db "please enter first number  : $"
b db "please enter second number : $"

SUM DB "THE SUM: $"
DUB DB "THE SUB: $"
MULL DB "THE MUL : $"  
DIVV DB "THE DIV : $"

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here 

MOV AH, 9 ; enter first num
LEA DX, a
INT 21H 



MOV AH, 1 ; input first num
INT 21H

SUB AL, '0' ; convert first num     
MOV BL, AL

mov ah,2  ; new line
mov dl,0dh
int 21h
mov dl,0ah
int 21h


MOV AH, 9 ; enter second num
LEA DX, b
INT 21H

MOV AH, 1 ; input second num
INT 21H

SUB AL, '0' ; convert second num
MOV CL, AL 


ADD CL, BL   ; add the two

ADD CL, '0'   ; convert the sum


mov ah,2  ; new line
mov dl,0dh
int 21h
mov dl,0ah
int 21h


MOV AH, 9     ; the sum : 
LEA DX, SUM
INT 21H 
       
MOV DL, CL    ; output the sum
MOV AH, 2
INT 21H

















 



;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN