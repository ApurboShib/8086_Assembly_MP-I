.MODEL SMALL
.STACK 100H
.DATA
    newline db 0Dh, 0Ah, '$'     ; New line for output
.CODE
MAIN PROC

    ; Function to take a single character input
    MOV AH, 1
    INT 21H

    ; Convert ASCII character to its numeric value
    SUB AL, 30H

    ; Move the input value from AL to AX and BX (for storage)
    MOV AX, 0000h
    MOV AL, AH
    MOV BX, AX

    ; Now to display the result, convert to ASCII and display it
    ADD AL, 30H
    MOV DL, AL
    MOV AH, 02H       ; Function to display character
    INT 21H           ; Print character in DL

    ; Print a newline for better formatting
    LEA DX, newline
    MOV AH, 09H
    INT 21H

    ; End of program
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
