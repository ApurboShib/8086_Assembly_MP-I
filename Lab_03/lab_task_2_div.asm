                     
                           
.MODEL SMALL
.STACK 100H
.DATA

a db "please enter first number  : $"
b db "please enter second number : $"
res db 0 
rem db 0


DIVV DB "THE DIV: $"

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
MOV BL, AL  ; 1st num in bl


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
MOV CL, AL  ; 2 nd num in cl 



MOV AL, BL  ; moving first num in al to div 
MOV AH, 0
 


DIV CL   ; al / cl

;ADD AL, '0'   ; convert the mul

MOV res, AL  ; store the result in res


mov ah,2  ; new line
mov dl,0dh
int 21h
mov dl,0ah
int 21h


MOV AH, 9     ; the div : 
LEA DX, DIVV
INT 21H   

MOV AL, res
ADD AL, '0'
       
MOV DL, AL    ; output the div
MOV AH, 2
INT 21H

















 



;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN