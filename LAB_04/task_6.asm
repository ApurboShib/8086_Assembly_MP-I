.MODEL SMALL
.STACK 100H
.DATA
    PROMPT DB 'Enter a character: $'
    NEWLINE DB 0DH, 0AH, '$'
    DISPLAY_CHAR DB 'The character is: $'

.CODE
MAIN PROC
    ; Initialize DS
    MOV AX, @DATA
    MOV DS, AX

    
    MOV AH, 9          ; Prompt to enter
    LEA DX, PROMPT
    INT 21H

    
    MOV AH, 1        
    INT 21H            ;IN AL 
    
    MOV CH, AL         ; IN CL

    
    LEA DX, NEWLINE    ;newline
    MOV AH, 9
    INT 21H

   
    CMP CH, 'y'      
    JE DISPLAY       

    CMP CH, 'Y'      
    JE DISPLAY       

    
    JMP GET_OUT

DISPLAY:
   
    LEA DX, DISPLAY_CHAR
    MOV AH, 9        
    INT 21H


    MOV DL, CH       
    MOV AH, 2        
    INT 21H

   


GET_OUT:
    ; Exit to DOS
    MOV AX, 4C00H
    INT 21H
MAIN ENDP
END MAIN
