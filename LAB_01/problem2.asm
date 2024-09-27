; Swap two numbers, using a maximum of 3 registers.
; Hint: Use the MOV instruction.

.MODEL SMALL
.STACK 100H
.DATA
    num1 DW 5  
    num2 DW 10 

.CODE
MAIN PROC
    ; initialize DS
    MOV AX,@DATA
    MOV DS,AX

    
    MOV BX, num1
    MOV CX, num2

    ; Swap the numbers using MOV
    MOV num1, CX  ; Move value of num2 (CX) into num1
    MOV num2, BX  ; Move value of num1 (BX) into num2

    ; exit to DOS
    MOV AX,4C00H
    INT 21H
MAIN ENDP
END MAIN
