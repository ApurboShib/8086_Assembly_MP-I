.MODEL SMALL
.STACK 100H
.DATA
  
  ENTER   DB "ENTER A CHAR: $"
  NEWLINE DB 0DH, 0AH, '$'  ; Newline 

.CODE
MAIN PROC
    ; Initialize DS
    MOV AX, @DATA
    MOV DS, AX   
    
    LEA DX, ENTER    ; enter prompt
    MOV AH, 9
    INT 21H
    
 
    MOV AH, 1       
    INT 21H          ; IN AL 
    MOV CL, AL       ; IN CL

    ; if upper
    CMP AL, 'A'     
    JB EXIT          
    CMP AL, 'Z'      
    JA EXIT   
    
    ; newline
    LEA DX, NEWLINE  
    MOV AH, 9        
    INT 21H    

    ; if upper then display
    MOV DL, CL       
    MOV AH, 2       
    INT 21H         

   

EXIT:
    ; Exit to DOS
    MOV AX, 4C00H
    INT 21H

MAIN ENDP
END MAIN
