; Adding Elements of Array
.MODEL SMALL
.STACK 100H
.DATA
    ; Array of 4 words (2 bytes each)
    W DW 10, 20, 30, 40  ; Array elements
    
    SUM DW 0             ; Variable to store the sum of array elements

.CODE
MAIN PROC
    ; Initialize the data segment
    MOV AX, @DATA
    MOV DS, AX

    ; Initialize registers
    XOR AX, AX           ; AX = 0 (used to accumulate the sum)
    LEA SI, W            ; Load the address of array W into SI
    MOV CX, 4            ; CX = 4 (number of elements in the array)

    ; Loop to add array elements
ENTR_LOOP:
    ADD AX, [SI]         ; Add the element at [SI] to AX (accumulator)
    ADD SI, 2            ; Move SI to the next element (Word is 2 bytes)
    LOOP ENTR_LOOP       ; Decrement CX and repeat until CX = 0

    ; Store the sum in the variable SUM
    MOV SUM, AX

    ; Exit the program and return to DOS
    MOV AX, 4C00H
    INT 21H

MAIN ENDP
END MAIN