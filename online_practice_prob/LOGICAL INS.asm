.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
    XOR DX, 08000H       ; Clear DX register or XOR with 08000H (result will be in DX)

    ; Properly terminate the program
    MOV AX, 4C00H       
    INT 21H             

MAIN ENDP
END MAIN