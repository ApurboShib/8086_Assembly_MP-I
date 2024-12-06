          .MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

; a
MOV AH, 1   
INT 21H              

MOV DL, AL           
MOV AH, 2             
INT 21H


            

;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN