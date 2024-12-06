.MODEL SMALL
.STACK 100H
.DATA 

A db 5
B db 4
C db 3
D db 2
E db 6

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

   ;(a + b)  * (c - d) / e   
   
   MOV AL, A
   MOV BL, B
   
   ADD AL, BL
   
   MOV CL, C
   MOV DL, D
   
   SUB CL, DL
   
   MUL CL
   
   MOV BL, E
   
   DIV BL
   
   
   

;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN