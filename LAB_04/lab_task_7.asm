.MODEL SMALL
.STACK 100H
.DATA 


    PROMPT  DB "ENTER A NUMBER 0-9: $"
    IS_EVEN    DB "IS EVEN $"
    IS_ODD     DB "IS ODD $"
    NEWLINE DB 0DH, 0AH, "$"  
    
    

.CODE
MAIN PROC
    ; Initialize DS
    MOV AX, @DATA
    MOV DS, AX

 
    MOV AH, 9           ; Prompt for input
    LEA DX, PROMPT
    INT 21H


    MOV AH, 1           ;input
    INT 21H          
    SUB AL, '0'         ; Convert 

   
    MOV AH, 0           ; Clear AH 
    MOV BL, 2           ; div by 2    ; reminder will be in AH
    DIV BL           


    CMP AH, 0           ;if rem zero
    JE EVEN          

   
    JMP ODD             ;else

EVEN:
   
    LEA DX, NEWLINE
    MOV AH, 9
    INT 21H
    LEA DX, IS_EVEN
    MOV AH, 9
    INT 21H
    JMP EXIT

ODD:
    
    LEA DX, NEWLINE
    MOV AH, 9
    INT 21H
    LEA DX, IS_ODD
    MOV AH, 9
    INT 21H

EXIT:
    ; Exit to DOS
    MOV AX, 4C00H
    INT 21H
MAIN ENDP
END MAIN
