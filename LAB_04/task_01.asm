.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here 

MOV AX, '-1'
CMP AX, '0'

JL MY_LINE

MY_LINE: 
MOV AX, 5
  





;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN