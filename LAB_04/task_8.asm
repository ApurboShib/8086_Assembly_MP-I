.MODEL SMALL
.STACK 100H
.DATA  



    PROMPT DB "ENTER A CHAR: $"  
    
    VOWEL_MSG DB "IS VOWEL $"
    CONSONANT_MSG DB "IS CONSONENT $"
    
    INVALID_MSG DB "NONE$"
    NEWLINE DB 0DH, 0AH, '$'  
    
    
    

.CODE
MAIN PROC
    ; Initialize DS
    MOV AX, @DATA
    MOV DS, AX


    MOV AH, 9              ; Prompt for input
    LEA DX, PROMPT
    INT 21H

  
    MOV AH, 1
    INT 21H                ;in AL 
    MOV CH, AL             ;in CH

   
    LEA DX, NEWLINE        ;newline
    MOV AH, 9
    INT 21H        
    
    
    
    MOV AL, CH             ; in AL
    CMP AL , 'a'
    JL INVALID
    
    CMP AL, 'z'
    JG INVALID



  
    CMP AL, 'a'
    JE VOWEL          ; If 'a'
    CMP AL, 'e'
    JE VOWEL          ; If 'e'
    CMP AL, 'i'
    JE VOWEL          ; If 'i'
    CMP AL, 'o'
    JE VOWEL          ; If 'o'
    CMP AL, 'u'
    JE VOWEL          ; If 'u'
    
 
  
    JMP CONSONANT     ; NOT VOWEL THEN CONSONENT

VOWEL:
    
    LEA DX, VOWEL_MSG
    MOV AH, 9
    INT 21H
    JMP EXIT

CONSONANT:
  
    LEA DX, CONSONANT_MSG
    MOV AH, 9
    INT 21H
    JMP EXIT

INVALID:
   
    LEA DX, INVALID_MSG
    MOV AH, 9
    INT 21H

EXIT:
    ; Exit to DOS
    MOV AX, 4C00H
    INT 21H
MAIN ENDP
END MAIN
