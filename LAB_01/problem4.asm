; Subtract two numbers using two registers. Do you always get the correct answer? What happens when you subtract larger number from the smaller one?

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
    SUB AX, num2
    MOV result, AX

    ; exit to DOS
    MOV AX, 4C00H
    INT 21H
MAIN ENDP
END MAIN