.MODEL SMALL
.STACK 100H
.DATA     
    max_msg DB "Maximum number is $"
    min_msg DB "Minimum number is $"
    result DB ?   
    num1 DB 2     
    num2 DB 4      
    num3 DB 3   

.CODE
MAIN PROC

MOV AX, @DATA
MOV DS, AX

MOV AL, num1   
MOV BL, num2   
MOV CL, num3   

; mone kori num1 tai max ekhon cmp korbo num2 er sathe.
MOV AH, AL    
CMP BL, AH      ;bl>ah
JG MAX_BL       ; If num2 > num1, jump to MAX_BL
JMP CHECK_CL    ; naile check num3

MAX_BL:
MOV AH, BL     ; If num2 > num1, taile ah hold korto num2.

CHECK_CL:
CMP CL, AH     ;cl>ah
JG MAX_CL      ; If num3 > max
JMP display_mx ; naile curr_max ta display korbo

MAX_CL:
MOV AH, CL     ; jodi num 3 sobtheke max hoy taile ah hold kore num3

display_mx:   
MOV result, AH
LEA DX, max_msg
MOV AH, 9
INT 21H        

ADD result, 30h  ; Convert number to ASCII.
MOV DL, result
MOV AH, 2           ; max num print korbo
INT 21H         

; Now, calculate the minimum
min_clc:
MOV AL, num1   
MOV BL, num2   
MOV CL, num3   

MOV AH, AL      
CMP BL, AH      
JL MIN_BL       
JMP CHECK_MIN_CL

MIN_BL:
MOV AH, BL     

CHECK_MIN_CL:
CMP CL, AH     
JL MIN_CL      
JMP DISPLAY_MIN

MIN_CL:
MOV AH, CL   

DISPLAY_MIN: 
MOV AH, 2
MOV DL, 0Dh    ; Print carriage return
INT 21H
MOV DL, 0Ah    ; Print line feed
INT 21H
MOV result, AH  
LEA DX, min_msg
MOV AH, 9
INT 21H        

ADD result, 30h  ; Convert number to ASCII for display
MOV DL, result
MOV AH, 2
INT 21H         ;print min num


MOV AX, 4C00H
INT 21H
MAIN ENDP
END MAIN
