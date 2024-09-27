; Take input in the register AX, and then move it to BX using the MOV instruction.

.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    
    MOV AH, 1           ; Function to take a single character input from the user
    INT 21H             ; Call interrupt to get input
    
    ; Convert ASCII character to its numeric value
    SUB AL, 30H         ; Convert ASCII input (digit) to its integer value
    
    
    ; Move the input value from AX to BX
    
    MOV AX, 0000        ; Clear AX (optional, just for initialization)
    MOV AL, AH          ; Move user input from AL to AX (because input is in AL)
    MOV BX, AX          ; Move the value from AX to BX

    
    ; End of program
    
    MOV AH, 4CH         ; Terminate program and return control to DOS
    INT 21H

MAIN ENDP
END MAIN