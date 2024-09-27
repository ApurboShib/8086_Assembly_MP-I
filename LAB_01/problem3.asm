; Add two numbers using two registers. 

.MODEL SMALL
.STACK 100H
.DATA
    num1 DW 5  
    num2 DW 10 
    result DW 0 

.CODE
MAIN PROC
    ; initialize DS
    MOV AX,@DATA
    MOV DS,AX

   
    MOV AX, num1
    ADD AX, num2
    ; Store the result
    MOV result, AX

    ; exit to DOS
    MOV AX, 4C00H
    INT 21H
MAIN ENDP
END MAIN