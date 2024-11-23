.MODEL SMALL
.STACK 100H
.DATA
  messege_1 db "Enter two decimal digits whose sum is less than 10: $"
  sum_msg db "The sum of $"
  and_msg db " and $"
  result_msg db " is $"
  newline db 0Dh, 0Ah, "$"  

.CODE
MAIN PROC
 
    MOV AX, @DATA
    MOV DS, AX

    
    LEA DX, messege_1       ; Display messege_1 message
    MOV AH, 9
    INT 21H

    
    MOV AH, 1               
    INT 21H
    SUB AL, 30H            
    MOV BL, AL            
    ADD AL, 30H            
    MOV CL, AL             

    
    MOV AH, 1              
    INT 21H
    SUB AL, 30H            
    MOV BH, AL             
    ADD AL, 30H           
    MOV DL, AL             

    ; Add the two digits

    MOV AL, BL            
    ADD AL, BH             
    ADD AL, 30H            

    ; Display newline for output formatting
    LEA DX, newline
    MOV AH, 9
    INT 21H

    ; Display sum message: "The sum of "
    LEA DX, sum_msg
    MOV AH, 9
    INT 21H

    ; Display first digit
    MOV DL, CL             ; First digit ASCII in DL
    MOV AH, 2
    INT 21H

    ; Display " and "
    LEA DX, and_msg
    MOV AH, 9
    INT 21H

    ; Display second digit
    MOV DL, DL             ; Second digit ASCII in DL
    MOV AH, 2
    INT 21H

    ; Display " is "
    LEA DX, result_msg
    MOV AH, 9
    INT 21H

    ; Display the sum
    MOV DL, AL             ; Sum (ASCII) in DL
    MOV AH, 2
    INT 21H

EXIT:

    MOV AX, 4C00H
    INT 21H
MAIN ENDP
END MAIN
