; Taking a Single Character and Displaying It
.MODEL SMALL
.STACK 100H
.DATA
    MSG DB "hello programmers"  ; Message to display after the input

.CODE
MAIN PROC
    ; Initialize data segment
    MOV AX, @DATA
    MOV DS, AX

    
    ; Input a single character

    MOV AH, 1           ; Function to take a single character input
    INT 21H             ; Call interrupt 21H for input
    MOV BL, AL          ; Store the input character from AL to BL

    MOV AH, 2           ; Function to display character
    MOV DL, 0DH         ; Carriage return (CR)
    INT 21H
    MOV DL, 0AH         ; Line 
    INT 21H

    ; Display the entered character

    MOV DL, BL          ; Move the input character (stored in BL) to DL for display
    INT 21H             ; Display the character
    
    MOV AH, 2           ; Function to display character
    MOV DL, 0DH         ; Carriage return (CR)
    INT 21H
    MOV DL, 0AH         ; Line 
    INT 21H

    ; Display the string message

    LEA DX, MSG         ; Load the address of MSG into DX
    MOV AH, 9           ; Function to display a string
    INT 21H             ; Display the string

    ; Return control to DOS
    
    MOV AH, 4CH         ; Terminate program and return control to DOS
    INT 21H

MAIN ENDP
END MAIN