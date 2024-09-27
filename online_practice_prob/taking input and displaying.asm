TITLE TAKING_SINGLE_CHARACTER_AND_DISPLAYING_IT

.MODEL SMALL
.STACK 100H
.DATA
 
 MSG DB "hello programmers"
 
.CODE
MAIN PROC   
    
    MOV AX, @DATA           ;initializing DS
    MOV DS, AX
    
    MOV AH, 1               ;single character input
    INT 021H                ;take input
    MOV BL, AL              ;the input from keyboard is stored in AL, we temporarily
                            ;store it in BL
    
    
    MOV AH, 2                            
    MOV DL, 0DH
    INT 021H
    MOV DL, 0AH
    INT 021H
    
    MOV DL, BL              ;get the stored info from BL to DL
    INT 021H                ;display that shit
    
    
    MOV AH, 2               ;newline               
    MOV DL, 0DH
    INT 021H
    MOV DL, 0AH
    INT 021H
    
    LEA DX, MSG             ;getting the message 
    MOV AH, 9               ; for displaying a string
    INT 021H                ;and the display
                                            
    
    MOV AH, 04CH            
    INT 021H                
                                            
MAIN ENDP
END MAIN