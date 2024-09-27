org 100h                ; Set origin for COM file execution

.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    
    ; Initialize two characters in AL and BL registers
    
    MOV AL, "}"          ; Store character '}' in AL
    MOV BL, ">"          ; Store character '>' in BL
    
    
    ; Compare AL and BL to determine which one is lower
    
    MOV AH, 2            ; Prepare AH for displaying characters (DOS function 2)
    CMP AL, BL           ; Compare AL ( '}') and BL ('>')
    JNBE bl_is_lower     ; If AL > BL, jump to bl_is_lower (BL will be displayed first)
    
    
    ; AL is less than or equal to BL, display AL
    
    MOV DL, AL           ; Move AL's content to DL (character to display)
    JMP DISPLAY          ; Jump to the display routine
    
bl_is_lower:
    
    ; BL is less than AL, display BL
    
    MOV DL, BL           ; Move BL's content to DL for display
    
DISPLAY:
    
    ; Display the character stored in DL
    
    INT 21H              ; DOS interrupt to display the character in DL

    
    ; End of the program
    
    MOV AH, 4CH          ; Terminate program and return control to DOS
    INT 21H

MAIN ENDP
END MAIN