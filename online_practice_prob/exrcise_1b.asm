.MODEL SMALL
.STACK 100H
.DATA

.CODE 
MAIN PROC
    MOV DL, 'L'           ; Change 'l' to 'L' for uppercase checking
    
    CMP DL, 'A'          ; Check if DL is greater than or equal to 'A'
    JL end_code          ; If DL < 'A', jump to end_code
    
    CMP DL, 'Z'          ; Check if DL is less than or equal to 'Z'
    JG end_code          ; If DL > 'Z', jump to end_code
    
    ; Now execute the following code if criteria are met
    MOV AH, 02H          ; Prepare to display character
    INT 21H              

end_code:               
    ; Clean exit, return to operating system
    MOV AX, 4C00H       
    INT 21H             

MAIN ENDP
END MAIN