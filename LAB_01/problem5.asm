; Swap two numbers using ADD/SUB instructions only.

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


    MOV AX, num1
    ADD AX, num2
    ; Store the sum in num1
    MOV num1, AX
    
    ; Now subtract num2 from the new num1 (sum) to get the original num1
    SUB AX, num2
    ; Store the original num1 in num2
    MOV num2, AX
    
    ; Now subtract the new num2 (original num1) from the sum to get the original num2
    SUB AX, num2
    ; Store the original num2 in num1
    MOV num1, AX

    ; exit to DOS
    MOV AX, 4C00H
    INT 21H
MAIN ENDP
END MAIN

; logic behind the code.
; 1.  num1 = (a + b)  
; 2. num2 = (a + b) - b = a
; 3. num1 = (a + b) - a = b