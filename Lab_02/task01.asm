; task 01 .
; Perform the following arithmetic operations:
; 1. X * Y
; 2. X / Y
; 3. X * Y / Z

.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here 

;1. X * Y

MOV AX, 5
MOV BX, 5

MUL BX  

;2. X / Y
           
MOV AX, 20
MOV BL, 5

DIV BL

;3. X * Y / Z

MOV AL, 2
MOV BL, 5
MOV DL, 3

MUL BL

DIV DL

;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN