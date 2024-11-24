.MODEL SMALL
.STACK 100H

.DATA
is_div db "The number is divisible by 5 and 11$", '$' 
is_not_div db "The number is not divisible by 5 and 11$", '$' 
n db 25 

.CODE
MAIN PROC

    MOV AX, @DATA
    MOV DS, AX


    MOV AL, [n]
    MOV AH, 0         


    MOV BL, 5        
    DIV BL            
    CMP AH, 0         
    JNE not_divisible ; jump if not divisible by 5

    MOV AL, [n]
    MOV AH, 0        


    MOV BL, 11        
    DIV BL            
    CMP AH, 0         
    JNE not_divisible ; Jump if not divisible by 11

    ; If divisible by both 5 and 11
    LEA DX, [is_div]  
    MOV AH, 9         
    INT 21H           
    JMP end           ; Skip the not_divisible part

not_divisible:
    ; If not divisible by both 
    LEA DX, [is_not_div] 
    MOV AH, 9           
    INT 21H              

end:
   
    MOV AX, 4C00H        
    INT 21H             

MAIN ENDP
END MAIN
