.MODEL SMALL
.STACK 100H
.DATA
    A DW 5    
    B DW 10   
    C DW 0    

.CODE
MAIN PROC
    ; initialize DS
    MOV AX,@DATA
    MOV DS,AX

    ;  A = B - A
    MOV AX, B      ;  B into AX
    SUB AX, A      ; AX = B - A
    MOV A, AX      ; Store result in A

    ;  A = -(A + 1)
    INC A          ; A = A + 1
    NEG A          ; A = -A

    ;  C = A + (B + 1)
    MOV AX, B      ; B into AX
    INC AX         ; AX = B + 1
    ADD AX, A      ; AX = A + (B + 1)
    MOV C, AX      ; Store result in C

    ; A = B - (A - 1)
    DEC A          ; A = A - 1
    MOV AX, B      ; B into AX
    SUB AX, A      ; AX = B - (A - 1)
    MOV A, AX      ; Store result back in A

    ; exit to DOS
    MOV AX, 4C00H
    INT 21H
MAIN ENDP
END MAIN